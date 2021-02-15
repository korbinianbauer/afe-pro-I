import sys
from math import sin, cos

PI = 3.14159265
bot_wheel_distance = 0.65

def eval_odo_with_mag(loglist):
    print("Evaluating Odometrie and IMU-Yaw:")
    start_yaw = loglist[0]["IMU_yaw"]
    start_pos = [0,0,start_yaw]
    print("start_pos: {}".format(start_pos))
    
    

def eval_odo(loglist):
    print("Evaluating Odometrie data:")
    start_yaw = loglist[0]["IMU_yaw"]
    start_pos = [0,0,start_yaw]
    print("start_pos: {}".format(start_pos))

    positions = [start_pos]
    old_wheel_pos = [0,0] # [Links, Rechts] in metern

    for entry in loglist[1:]:
        odo_orientation = positions[-1][2]

        # Im Rollstuhlmodus sind links und rechts vertauscht sowie die Vorzeichen der Radstrecke negativ
        wheel_pos = [-int(entry['Right_wheel_dist'])/1000.0, -int(entry['Left_wheel_dist'])/1000.0]
        
        left_wheel_distance = wheel_pos[0] - old_wheel_pos[0]
        right_wheel_distance = wheel_pos[1] - old_wheel_pos[1]
        old_wheel_pos = wheel_pos

        print("distance delta:")
        print(left_wheel_distance, right_wheel_distance)

        # Convert wheel distances to robot angle change of delta_theta radians around a point drive_radius meters to left of the robot
        delta_theta = (left_wheel_distance - right_wheel_distance) / bot_wheel_distance # radians

        if (delta_theta != 0):
            drive_radius = 1/delta_theta * (right_wheel_distance + left_wheel_distance) / 2 # meter
        else:
            drive_radius = 9999

        print(drive_radius)

        # Calculate to resulting position change in the robot coordinate system
        if (drive_radius < 100):
            dx_bot = drive_radius * (1 - cos(delta_theta))
            dy_bot = drive_radius * sin(delta_theta)
        else:
            dx_bot = 0
            dy_bot = (right_wheel_distance + left_wheel_distance) / 2

        # Transform position change to world coordinate system
        angle = (2*PI)- odo_orientation
			
        dx_world = cos(angle) * dx_bot - sin(angle) * dy_bot
        dy_world = sin(angle) * dx_bot + cos(angle) * dy_bot
        
        odo_pos = [positions[-1][0] + dx_world, positions[-1][1] + dy_world]
        odo_orientation = (odo_orientation + delta_theta) % (2*PI)
        if (odo_orientation < 0):
            odo_orientation += 2*PI;

        positions.append([odo_pos[0], odo_pos[1], odo_orientation])

    for pos in positions:
        print(pos)

logfile_path = sys.argv[1]
log= open(logfile_path, "r").readlines()
loglist = list()

for entry in log:
    try:
        d = eval(entry)
        loglist.append(d)
    except:
        pass

print("({} Entries)".format(len(loglist)))
eval_odo(loglist)



