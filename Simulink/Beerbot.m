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
 logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_fahrten_anfang_gleich_ende\Mon_Aug_10_16-53-39_2020_Program_joystick.txt";

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





% Outdoor Testfahrten mit Wheel slip, Anfang = Ende

%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip\Sun_Oct_11_09-02-19_2020_Program_joystick.txt";

%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip\Sun_Oct_11_09-05-21_2020_Program_joystick.txt";

%logpath = "C:\Users\Besitzer\Box Sync\Documents\FH\AFE\SEM1\Projekt I\Aufzeichnungen Odo+IMU\logs\outdoor_wheel_slip\Sun_Oct_11_09-17-12_2020_Program_joystick.txt";


log = fileToLog(logpath);

bot_wheel_distance = 0.5948; % meter
wheel_circ_correction_factor = 0.971;

odo_positions = evalOdo(log, bot_wheel_distance, wheel_circ_correction_factor);
odo_with_yaw_positions = evalOdoWithYaw(log, wheel_circ_correction_factor);
odo_yaw_complementary_positions = evalOdoYawComplementary(log, bot_wheel_distance, wheel_circ_correction_factor);
acc_with_yaw_positions = evalAccWithYaw(log);

%subplot(1,3,1);

plot([odo_positions.x], [odo_positions.y]);
hold on;
grid on;
plot([odo_with_yaw_positions.x], [odo_with_yaw_positions.y]);
plot([odo_yaw_complementary_positions.x], [odo_yaw_complementary_positions.y]);
%plot([acc_with_yaw_positions.x], [acc_with_yaw_positions.y]);
axis equal;
%xlim([-2 1])
%ylim([-0.5 4.5])
xlabel('X_w in meter');
ylabel('Y_w in meter')
img = imread('Compass.png');
image('CData',img,'XData',[2 3],'YData',[1.5 0.5])

legend("Odo", "Odo+MAG-YAW", "Odo+MAG complemet.", "Acc+IMU-YAW");

figure(2);
subplot(1,3,2);
plot([odo_positions.Time]/1000, [odo_positions.orientation]);
hold on;
plot([odo_with_yaw_positions.Time]/1000, [odo_with_yaw_positions.orientation]);
plot([odo_yaw_complementary_positions.Time]/1000, [odo_yaw_complementary_positions.orientation]);
%plot([acc_with_yaw_positions.Time], [acc_with_yaw_positions.orientation]);
ylim([0 6.5])
xlabel('t in s');
ylabel('Yaw \theta in rad')

legend("Odo only", "Odo+MAG-YAW", "Odo+MAG complemet.", "Acc+IMU-YAW");

end_position = odo_positions(end,:);
error.end_pos_x = end_position.x;
error.end_pos_y = end_position.y;
error.mag = sqrt((end_position.x)^2+(end_position.y)^2);
disp("Odo error:");
disp(error);

end_position = odo_with_yaw_positions(end,:);
error.end_pos_x = end_position.x;
error.end_pos_y = end_position.y;
error.mag = sqrt((end_position.x)^2+(end_position.y)^2);
disp("Odo+Yaw error:");
disp(error);

end_position = odo_yaw_complementary_positions(end,:);
error.end_pos_x = end_position.x;
error.end_pos_y = end_position.y;
error.mag = sqrt((end_position.x)^2+(end_position.y)^2);
disp("Odo+IMU complementary error:");
disp(error);

% errors = [];
% candidates = linspace(0.55,0.65,200) ;
% for i = candidates
%     bot_wheel_distance = i; % meter
%     odo_positions = evalOdo(log, bot_wheel_distance, wheel_circ_correction_factor);
%     end_position = odo_positions(end,:);
%     error.bot_wheel_distance = bot_wheel_distance;
%     error.end_pos_x = end_position.x;
%     error.end_pos_y = end_position.y;
%     error.mag = sqrt((end_position.x)^2+(end_position.y)^2);
%     errors = [errors; error];
% end

% odo_positions = evalOdo(log, 0.5948, wheel_circ_correction_factor);
% subplot(1,3,1);
% plot([odo_positions.x], [odo_positions.y]);
% %legend("Odo, initial guess", "Odo, optimal guess");
% legend("Odo, optimal guess");

% subplot(1,3,3);
% plot([errors.bot_wheel_distance], [errors.mag]);
% ylim([-0.8 5])
% xlabel('Track width in meter');
% ylabel('End-position error in meter')

subplot(1,3,1);
%scatter([errors.end_pos_x], [errors.end_pos_y])

figure(3);
hold on;
polar([odo_positions.orientation], [odo_with_yaw_positions.Time]/1000);
polar([odo_with_yaw_positions.orientation], [odo_with_yaw_positions.Time]/1000);
polar([odo_yaw_complementary_positions.orientation], [odo_with_yaw_positions.Time]/1000);