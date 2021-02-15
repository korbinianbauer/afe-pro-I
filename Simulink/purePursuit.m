waypoints = [[odo_positions.x]', [odo_positions.y]']

controller = controllerPurePursuit('DesiredLinearVelocity',0.1,'LookaheadDistance',0.1,'MaxAngularVelocity',0.5,'Waypoints',waypoints)
bot = differentialDriveKinematics('WheelRadius', 0.127, 'TrackWidth', 0.5924)



[vel,angvel,lookaheadpoint] = controller([0,0,0])