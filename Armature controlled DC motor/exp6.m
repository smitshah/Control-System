%% EXPERIMENT NO: 6

clc
clear all
close all

%% Q2. Simulate the SIMULINK model of DC motor designed for L=0.5 H, R=1 Ohm, Kt=Kb=0.01, B=0.1 N.m.s, J=0.01 Kg.m2/s2.

Kb=0.01;
J=0.01;
B=0.1;
R=1;
Kt=0.01;
sim('e6')
figure('name','step_response')
plot(time,Speed)
xlabel('Time')
ylabel('Speed')
title('DC motor with Step wave as input')
axis([0 10 0 0.2])
figure('name','ramp_response')
plot(time,Speed1)
xlabel('Time')
ylabel('Speed')
title('DC motor with Ramp wave as input')


%% Conclusion

%{
   In this experiment firstly we have designed DC motor using SIMULINK.
   Then we have defined the values of L, H, R, Kb, Kt, B and J in MATLAB.
   Then we have called that block diagram in MATLAB using "sim" function
   and plotted two graphs of "time vs speed" with step wave and ramp wave as
   an input.
%}
