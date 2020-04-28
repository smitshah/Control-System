%% Experiment No: 4

%{
    Name:- Smit Shah
    PRN:- 17070123090
    Batch:- EB-2
%}

clc
clear all
close all

%% Q1. Generate Transfer Function of the system

X=tf(0.2, [1 0.07 0.1])
[Z1, P1, K1]=tf2zp(0.2, [1 0.07 0.1])
figure('Name', 'Smit_Pole-Zero Map')
pzmap(X)
axis([-0.1 0 -0.4 0.4])

%% Q2. Plot Step Response Of the above question

figure('Name', 'Smit_Step Response')
step(X)

%% Q3. Design Block diagram in Simulink

figure
sim('e4_3')
plot(time, step_response)

%% Conclusion

%{
    In this experiment, we have found the transfer function of the
    mechanical system and found the step response of that transfer
    function. Then after doing that in MATLAB, we found the step response
    using SIMULINK.
%}
