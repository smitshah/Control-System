%% Experiment No: 7

%{
    Name: Smit Shah
    PRN: 17070123090
    Batch: EB-2
%}

clc
clear all
close all

%% Q1. Design the block diagram in SIMULINK to visualize the time response of first order system described by its transfer function G(s)=1/Ts+1 for standard test signals, (i)Step, (ii)Ramp, (iii)Impulse with T=0.2, 0.5.

T=0.2;
T1=0.5;

% (i) Step Wave
figure('Name', 'Smit_step_wave')
sim('smit_e7_1_1')
plot(time,step,'LineWidth',2)
hold on
sim('smit_e7_1_2')
plot(time,step,'-.','LineWidth',2)
xlabel('Time')
ylabel('Amplitude')
title('Step Response of First order system')
legend('T=0.2','T1=0.5')
axis([0 7 -0.2 1.2])

% (ii) Ramp Wave
figure('Name', 'Smit_ramp_wave')
sim('smit_e7_1_1')
plot(time,ramp,'LineWidth',2)
hold on
sim('smit_e7_1_2')
plot(time,ramp,'-.','LineWidth',2)
xlabel('Time')
ylabel('Amplitude')
title('Ramp Response of First order system')
legend('T=0.2','T1=0.5')
axis([-1 6 -0.2 1.2])

% (iii) Impulse Wave
figure('Name', 'Smit_impulse_wave')
sim('smit_e7_1_1')
plot(time,impulse,'LineWidth',2)
hold on
sim('smit_e7_1_2')
plot(time,impulse,'-.','LineWidth',2)
xlabel('Time')
ylabel('Amplitude')
legend('T=0.2','T1=0.5')
title('Impulse Response of First order system')
axis([-1 7 -0.00001 0.0001])

%% Q2. Design the block diagram in SIMULINK to visualize the time response of second order system described by the transfer function G(s)=wn^2/s^2+2*rho*wn*s+wn^2 for standard test signals, (i)Step, (ii)Ramp, (iii)Impulse, with wn=4 and rho=0,0.5,1,2.

wn=4;
rho=0;
rho2=0.5;
rho3=1;
rho4=2;

% (i) Step Wave
figure('Name', 'Smit_step_wave')
sim('smit_e7_2_1')
plot(time,step,'LineWidth',2)
hold on
sim('smit_e7_2_2')
plot(time,step,'-.','LineWidth',2)
sim('smit_e7_2_3')
plot(time,step,'--','LineWidth',2)
sim('smit_e7_2_4')
plot(time,step,':','LineWidth',2)
xlabel('Time')
ylabel('Amplitude')
title('Step Response of Second order system')
legend('rho=0','rho2=0.5','rho3=1','rho4=2')
axis([0 7 -0.2 2.2])

% (ii) Ramp Wave
figure('Name', 'Smit_ramp_wave')
sim('smit_e7_2_1')
plot(time,ramp,'LineWidth',2)
hold on
sim('smit_e7_2_2')
plot(time,ramp,'-.','LineWidth',2)
sim('smit_e7_2_3')
plot(time,ramp,'--','LineWidth',2)
sim('smit_e7_2_4')
plot(time,ramp,':','LineWidth',2)
xlabel('Time')
ylabel('Amplitude')
title('Ramp Response of Second order system')
legend('rho=0','rho2=0.5','rho3=1','rho4=2')
axis([-1 7 -2 8])

% (iii) Impulse Wave
figure('Name', 'Smit_impulse_wave')
sim('smit_e7_2_1')
plot(time,impulse,'LineWidth',2)axis([-1 7 -0.0001 0.0001])
hold on
sim('smit_e7_2_2')
plot(time,impulse,'-.','LineWidth',2)
sim('smit_e7_2_3')
plot(time,impulse,'--','LineWidth',2)
sim('smit_e7_2_4')
plot(time,impulse,':','LineWidth',2)
xlabel('Time')
ylabel('Amplitude')
title('Impulse Response of Second order system')
legend('rho=0','rho2=0.5','rho3=1','rho4=2')
axis([-1 7 -0.00008 0.00008])

%% Conclusion

%{
    In this experiment firstly we have created block diagram in SIMULINK for first order
    system and second order system for step, ramp and impulse response.
    
    Then we have runed that block diagram in MATLAB using "sim" function.
    Then we have ploted the graph of "time vs step", "time vs ramp" and "time vs impulse" for all the values. 
%}
