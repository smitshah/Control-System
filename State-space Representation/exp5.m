%% Experiment No.: 5

clc
clear all
close all

%% Q1. Find State-space representation of G(s)=1/5s^2+0.35s+0.5

G=tf(1, [5 0.35 0.5])
[A1,B1,C1,D1]=tf2ss(1,[5 0.35 0.5])

%% Q2. Generate Transfer Function Of State-space representation, A=[-5 1;-6 0], B=[1;2], C=[2 1], D=0

[Num,Den]=ss2tf([-5 1; -6 0],[1;2],[2 1],0)
printsys(Num,Den,'s')

%% Q3. Visualize the step response of the system described by state-space representation in above question using SIMULINK

sim('q3')
plot(time,step_response)
title('step response of second order system with real poles')
xlabel('Time(seconds)')
ylabel('Amplitude')

%% Conclusion

%{
   In this experiment, firstly we have calculated the state-space representation from Transfer Function.
   Then we were given a state-space representation and we need to find the
   transfer function of that system. And then we have found out the step
   response of that system using SIMULINK.
%}
