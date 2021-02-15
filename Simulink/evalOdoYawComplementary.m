function positions = evalOdo(log, bot_wheel_distance, wheel_circ_correction_factor)
    PI = 3.141592653;
    %bot_wheel_distance = 0.59; % meter
    start_yaw = log(1).IMU_yaw;
    start_yaw = compassHeadingToYaw(start_yaw);
    last_time = 0;
    start_pos.Time = last_time;
    start_pos.x = 0;
    start_pos.y = 0;
    start_pos.orientation = start_yaw;

    positions = start_pos;
    old_wheel_pos.left = 0; % meter
    old_wheel_pos.right = 0; % meter
    
    complementary_filter_log = [];
    
    for i = 2:length(log)
        last_position = positions(end,:);
        entry = log(i);
        new_position.Time = entry.Time;
        
        % Im Rollstuhlmodus sind links und rechts vertauscht sowie die Vorzeichen der Radstrecke negativ
        wheel_pos.left = -entry.Right_wheel_dist/1000.0*wheel_circ_correction_factor;
        wheel_pos.right = -entry.Left_wheel_dist/1000.0*wheel_circ_correction_factor;
        
        wheel_distance.left = wheel_pos.left - old_wheel_pos.left;
        wheel_distance.right = wheel_pos.right - old_wheel_pos.right;
        old_wheel_pos = wheel_pos;
        
        % Convert wheel distances to robot angle change of delta_theta radians around a point drive_radius meters to left of the robot
        delta_yaw = (wheel_distance.right - wheel_distance.left) / bot_wheel_distance; % radians

        if (delta_yaw ~= 0)
            drive_radius = 1/delta_yaw * (wheel_distance.right + wheel_distance.left) / 2; % meter
        else
            drive_radius = 9999;
        end


        % Calculate to resulting position change in the robot coordinate system
        if (abs(drive_radius) < 100)
            dy_bot = drive_radius * (1 - cos(delta_yaw));
            dx_bot = drive_radius * sin(delta_yaw);
        else
            dy_bot = 0;
            dx_bot = (wheel_distance.left + wheel_distance.right) / 2;
        end

        % Transform position change to world coordinate system			
        dx_world = cos(last_position.orientation) * dx_bot - sin(last_position.orientation) * dy_bot;
        dy_world = sin(last_position.orientation) * dx_bot + cos(last_position.orientation) * dy_bot;
        
        new_position.x = last_position.x + dx_world;
        new_position.y = last_position.y + dy_world;
        
        
        % Combining the new orientation from both sources: Odometry and
        % Magnetometer
        new_odo_orientation = (last_position.orientation + delta_yaw); % (2*PI)
        new_mag_orientation = compassHeadingToYaw(entry.IMU_yaw);
        
        orientation_filter_coefficient = 0.98;
        
        
        new_position.orientation = angleFilter(new_odo_orientation, new_mag_orientation, orientation_filter_coefficient);
        
        complementary_filter_log_entry.odo = new_odo_orientation;
        complementary_filter_log_entry.mag = new_mag_orientation;
        complementary_filter_log_entry.result = new_position.orientation;
        
        complementary_filter_log = [complementary_filter_log; complementary_filter_log_entry];
        
        new_position.orientation = mod(new_position.orientation, 2*PI);
        if (new_position.orientation < 0)
            new_position.orientation = new_position.orientation + 2*PI;
        end
        
        positions = [positions;new_position];
      
    end
    assignin('base','complementary_filter_log',complementary_filter_log)
end

function yaw = compassHeadingToYaw(heading)
    % Convert from Compass-Heading (North=0, clockwise) to YAW (East=0, counterclockwise)
    PI = 3.141592653;
    yaw = (2*PI - heading) + PI/2;
    yaw = mod(yaw, 2*PI);
end