function positions = evalOdoWithYaw(log, wheel_circ_correction_factor)
    PI = 3.141592653;
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
        
        distance = (wheel_distance.left + wheel_distance.right)/2;

        % Transform position change to world coordinate system			
        dx_world = cos(last_position.orientation) * distance;
        dy_world = sin(last_position.orientation) * distance;
        
        new_position.x = last_position.x + dx_world;
        new_position.y = last_position.y + dy_world;
        new_position.orientation = compassHeadingToYaw(entry.IMU_yaw);
        
        positions = [positions;new_position];
        
    end
end

function yaw = compassHeadingToYaw(heading)
    % Convert from Compass-Heading (North=0, clockwise) to YAW (East=0, counterclockwise)
    PI = 3.141592653;
    yaw = (2*PI - heading) + PI/2;
    yaw = mod(yaw, 2*PI);
end