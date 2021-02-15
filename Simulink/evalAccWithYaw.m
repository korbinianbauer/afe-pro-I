function positions = evalAccWithYaw(log)
    PI = 3.141592653;
    IMU_cog_distance = 0.48;
    start_yaw = log(1).IMU_yaw;
    start_yaw = compassHeadingToYaw(start_yaw);
    last_time = 0;
    start_pos.Time = last_time;
    start_pos.x = 0;
    start_pos.y = 0;
    start_pos.orientation = start_yaw;

    positions = start_pos;
    vel.x = 0;
    
    for i = 2:length(log)
        last_position = positions(end,:);
        entry = log(i);
        new_position.Time = entry.Time;
        dt = (new_position.Time - last_time)/1000; % ms to s
        last_time = new_position.Time;
        
        acc.x = -1 * entry.IMU_Acc_x;
        
        % compensate for acceleration due to rotation, since IMU is not at center of wheelbase
        delta_yaw = compassHeadingToYaw(entry.IMU_yaw) - last_position.orientation;
        if (delta_yaw > PI)
            delta_yaw = delta_yaw - PI;
        end
        if (delta_yaw < -PI)
            delta_yaw = delta_yaw + PI;
        end
        
        w = delta_yaw/dt;
        acc_x_comp = w*w*IMU_cog_distance;
        acc.x = acc.x - acc_x_comp;
        
        vel.x = vel.x + acc.x * dt;
        distance = vel.x * dt;
        
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