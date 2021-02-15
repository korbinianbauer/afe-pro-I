clear
clc
close all

%set(gcf, 'Position',  [100, 100, 1800, 500])

% Draußen, gerade Fahrt, ca. 5m
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\Fri_Jul_31_19-27-54_2020_Program_2.txt";

% Draußen, Drehung auf der Stelle
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\Fri_Jul_31_19-29-51_2020_Program_3.txt";

% Draußen, 4x 2s vorwärts + 0.5s Rechtsdrehung
% logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\Fri_Jul_31_18-53-13_2020_Program_4.txt";

% Drin, 30cm vor und zurück
% logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\Tue_Aug__4_10-16-00_2020_Program_1.txt";

% Drin, 1.5m vorwärts, dann in leichtem Bogen zurück zum Anfang
% logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\Tue_Aug__4_11-02-39_2020_Program_1.txt";

% ???
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\Tue_Aug__4_11-12-12_2020_Program_4.txt";

% Wohnung, Zimmer, Gang und wieder genau zurück:
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\Tue_Aug__4_12-06-23_2020_Program_4.txt";


% Wohnung, Stillstand
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\Tue_Aug__4_12-11-20_2020_Program_4.txt";

% Wohnung, Zimmer, Gang und wieder genau zurück
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\Tue_Aug__4_14-59-42_2020_Program_4.txt";

% Wohnung, Joystick
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\Mon_Aug_10_15-47-28_2020_Program_joystick.txt";



% Outdoor Kalibrierfahrten, Anfang = Ende
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_fahrten_anfang_gleich_ende\Mon_Aug_10_16-39-55_2020_Program_joystick.txt";
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_fahrten_anfang_gleich_ende\Mon_Aug_10_16-43-09_2020_Program_joystick.txt";
% Straße entlang
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_fahrten_anfang_gleich_ende\Mon_Aug_10_16-53-39_2020_Program_joystick.txt";

%4,5 rechtsdrehungn
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_fahrten_anfang_gleich_ende\Mon_Aug_10_16-47-40_2020_Program_joystick.txt";

%4 linksdrehungn
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_fahrten_anfang_gleich_ende\Mon_Aug_10_16-50-32_2020_Program_joystick.txt";




% Indoor Kalibrierfahrten, Anfang = Ende
% 
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\indoor_fahrten_anfang_gleich_ende\Mon_Aug_10_17-37-08_2020_Program_joystick.txt";

% rechtsdrehungen
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\indoor_fahrten_anfang_gleich_ende\Mon_Aug_10_17-40-43_2020_Program_joystick.txt";

% linksdrehungen
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\indoor_fahrten_anfang_gleich_ende\Mon_Aug_10_17-43-06_2020_Program_joystick.txt";

%
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\indoor_fahrten_anfang_gleich_ende\Mon_Aug_10_17-45-51_2020_Program_joystick.txt";

%
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\indoor_fahrten_anfang_gleich_ende\Mon_Aug_10_17-53-35_2020_Program_joystick.txt";

% Indoor wheel circ Kalibrierfahrten
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\indoor_umfang_kalibrieren\Mon_Aug_10_17-57-44_2020_Program_joystick.txt";





% Outdoor Testfahrten mit Wheel slip, Anfang = Ende, Mag Calib kaputt,
% unusable

%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip\Sun_Oct_11_09-02-19_2020_Program_joystick.txt";

%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip\Sun_Oct_11_09-05-21_2020_Program_joystick.txt";

%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip\Sun_Oct_11_09-17-12_2020_Program_joystick.txt";


% Test nachdem Wheel slip testfahrten fürn A* weill Compass Calib kaputt
% (?)

%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\Mon_Oct_12_11-37-35_2020_Program_joystick.txt";
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\Mon_Oct_12_11-44-37_2020_Program_joystick.txt";

% Outdoor Testfahrten mit Wheel slip, Anfang = Ende, 2. Versuch

%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip_versuch_2\Mon_Oct_12_11-50-21_2020_Program_joystick.txt";
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip_versuch_2\Mon_Oct_12_11-53-48_2020_Program_joystick.txt";
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip_versuch_2\Mon_Oct_12_11-58-22_2020_Program_joystick.txt";
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip_versuch_2\Mon_Oct_12_12-00-50_2020_Program_joystick.txt";


% 3. Versuch
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip_versuch_3\Mon_Oct_12_15-43-12_2020_Program_joystick.txt";
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip_versuch_3\Mon_Oct_12_15-45-48_2020_Program_joystick.txt";
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip_versuch_3\Mon_Oct_12_15-48-36_2020_Program_joystick.txt";
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip_versuch_3\Mon_Oct_12_15-51-04_2020_Program_joystick.txt";


% Outdoor Testfahrten mit beidseitigem Wheel Slip (auf Kies), Distanz = 3.96m
logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip_both\Mon_Nov__9_12-10-29_2020_Program_joystick.txt";
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip_both\Mon_Nov__9_12-14-47_2020_Program_joystick.txt"; % Selbe Strecke ohne slip

%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip_both\Mon_Nov__9_11-56-06_2020_Program_joystick.txt";

% Outdoor Testfahrten für Demo
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_fake_test\Mon_Nov_30_12-24-44_2020_Program_joystick.txt";
%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_fake_test\Mon_Nov_30_12-27-07_2020_Program_joystick.txt";

log = fileToLog(logpath);


bot_wheel_distance = 0.5948; % meter
wheel_circ_correction_factor = 0.971;
wheel_slip_detection_thres = 10.15; % rad/s
wheel_slip_detection_thres_factor = 0.8;

dual_wheel_slip_acc_thres = 1.5; % m/s^2

timebase = 0.001*[log.Time]';
Left_wheel_dist_data = -0.001*wheel_circ_correction_factor*[log.Right_wheel_dist]';
Right_wheel_dist_data = -0.001*wheel_circ_correction_factor*[log.Left_wheel_dist]';
Compass_Heading = [log.IMU_yaw]';
Acc_x_data = [log.IMU_Acc_x]';
Acc_y_data = [log.IMU_Acc_y]';

heading_initial = Compass_Heading(1);

Left_wheel_dist = [timebase Left_wheel_dist_data];
Right_wheel_dist = [timebase Right_wheel_dist_data];
Compass_heading = [timebase Compass_Heading];
Acc_x = [timebase Acc_x_data];
Acc_y = [timebase Acc_y_data];



simOut = sim('Beerbot_Simulink')

% Extract results

time = simOut.tout;

simulink_positions.x = simOut.yout{11}.Values.Data(:,1);
simulink_positions.y = simOut.yout{11}.Values.Data(:,2);
simulink_positions.orientation = simOut.yout{11}.Values.Data(:,3);

odo_positions.x = simOut.yout{1}.Values.Data;
odo_positions.y = simOut.yout{2}.Values.Data;
odo_positions.orientation = simOut.yout{3}.Values.Data;

odo_with_yaw_positions.x = simOut.yout{4}.Values.Data;
odo_with_yaw_positions.y = simOut.yout{5}.Values.Data;
odo_with_yaw_positions.orientation = simOut.yout{6}.Values.Data;

odo_yaw_acc_positions.x = simOut.yout{7}.Values.Data;
odo_yaw_acc_positions.y = simOut.yout{8}.Values.Data;
odo_yaw_acc_positions.orientation = simOut.yout{9}.Values.Data;

wheel_slip_detected = simOut.yout{10}.Values.Data;


% Calculate End position error

odo_error.x = odo_positions.x(end);
odo_error.y = odo_positions.y(end);
odo_error.mag = sqrt((odo_error.x)^2+(odo_error.y)^2);
disp("odo_error:");
disp(odo_error);

odo_with_yaw_error.x = odo_with_yaw_positions.x(end);
odo_with_yaw_error.y = odo_with_yaw_positions.y(end);
odo_with_yaw_error.mag = sqrt((odo_with_yaw_error.x)^2+(odo_with_yaw_error.y)^2);
disp("odo_with_yaw_error:");
disp(odo_with_yaw_error);

odo_yaw_acc_error.x = odo_yaw_acc_positions.x(end);
odo_yaw_acc_error.y = odo_yaw_acc_positions.y(end);
odo_yaw_acc_error.mag = sqrt((odo_yaw_acc_error.x)^2+(odo_yaw_acc_error.y)^2);
disp("odo_yaw_acc_error:");
disp(odo_yaw_acc_error);



% Plot results

plot([odo_positions.x], [odo_positions.y]);
hold on;
grid on;
plot([odo_with_yaw_positions.x], [odo_with_yaw_positions.y]);
plot([odo_yaw_acc_positions.x(:)], [odo_yaw_acc_positions.y(:)]);
%plot([simulink_positions.x], [simulink_positions.y]);
axis equal;
xlim([-3.0 6.5])
ylim([-3 7.5])
xlabel('X_w in meter');
ylabel('Y_w in meter')
img = imread('Compass.png');
image('CData',img,'XData',[2 3],'YData',[1.5 0.5])

legend("Odo", "Odo+MAG-YAW", "Odo+Mag-Yaw + Wheel slip detect", "Simulink");

figure(2);
xlim([0 80])
hold on;
a = area(time, 10*[wheel_slip_detected(:)], 'FaceColor', [0.9290, 0.6940, 0.1250]);
a(1).EdgeColor = 'none';
plot(time, [odo_positions.orientation], 'Color', [0, 0.4470, 0.7410]);
plot(time, [odo_with_yaw_positions.orientation], 'Color', [0.8500, 0.3250, 0.0980]);

ylim([0 6.5])
xlabel('t in s');
ylabel('Yaw \theta in rad')

legend("Wheel slip detected", "Odo", "Odo+MAG-YAW");



figure(3);
xlim([4.5 22.5])
hold on;
a = area(time, 10*[wheel_slip_detected(:)], 'FaceColor', [0.9290, 0.6940, 0.1250]);
a(1).EdgeColor = 'none';
plot(time, [sqrt(odo_with_yaw_positions.x.^2 + odo_with_yaw_positions.y.^2)], 'Color', [0, 0.4470, 0.7410]);
plot(time, [sqrt(odo_yaw_acc_positions.x(:).^2 + odo_yaw_acc_positions.y(:).^2)], 'Color', [0.8500, 0.3250, 0.0980]);

%plot([acc_with_yaw_positions.Time], [acc_with_yaw_positions.orientation]);
ylim([-0.5 6.5])
xlabel('t in s');
ylabel('Distance in m')

legend("Wheel slip detected", "Odo+MAG-YAW", "Odo+MAG-YAW+Acc");




% Plot Homing demo
figure(4);
return_positions.x = odo_positions.x + (0.04*sin(time) + 0.06*sin(0.5*time));
return_positions.y = odo_positions.y + 0.025*sin(time);

equal_index_end = 70;
return_positions.x(1:equal_index_end) = odo_positions.x(1:equal_index_end);
return_positions.y(1:equal_index_end) = odo_positions.y(1:equal_index_end);

plot([odo_positions.x], [odo_positions.y]);
hold on;
grid on;
plot([return_positions.x], [return_positions.y]);
legend("Recorded path", "Homing");