%% Setup
clc
clear
Sim_Time = 75;
v_actual = input('Enter current velocity in mph: ') / 2.237; % actual velocity of driver (in reality, this data comes from speed sensor) [ms^-1]
v_desired = input('Enter desired velocity in mph: ') / 2.237; % desired velocity of driver [ms^-1]
v_min = 30 / 2.237; % minimum velocity to activate cruise control [ms^-1]
M = 2300; % mass of Fisker Ocean [kg]
rho = 1.293; % density of dry air [kgm^-3]
Cd = 0.4; % average coefficient of drag of an SUV
h = 1.631; % height of Fisker Ocean [m]
w = 1.995; % width of Fisker Ocean in [m]
A = h*w; % cross sectional area [m^2]
g = 9.81; % acceleration due to gravity [ms^-2]
Crr = 0.015; % rolling resistance coefficient of ordinary car tires on concrete

%% PID Controller
kp = [0,150,350]; % proportional gain
ki = 18; % integral gain
kd = 100; % derivative gain
sim('Cruise_Control_Simulink.slx');