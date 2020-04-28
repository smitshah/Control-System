%% Experiment No: 8

clc
clear all
close all

%% Q1(a) Plot the step response of second order system with wn=2 rad/sec and rho=0.25,0.7 without using inbuilt step function and rho=1.0,1.2 using inbuilt function

t=0:0.001:20;
wn=2;
rho1=0.25;
rho2=0.7;
rho3=1.0;
rho4=1.2;

figure('Name','step_response')
% for zeta=0.25
theta1=atan(sqrt(1-rho1^2)/rho1);
wd1=wn*sqrt(1-rho1^2);
C1=1-((exp(-rho1.*wn.*t).*(sin(wd1.*t + theta1)))./sqrt(1-rho1^2));
plot(t,C1,'LineWidth',2)
hold on
% for zeta=0.7
theta2=atan(sqrt(1-rho2^2)/rho2);
wd2=wn*sqrt(1-rho2^2);
C2=1-((exp(-rho2.*wn.*t).*(sin(wd2.*t + theta2)))./sqrt(1-rho2^2));
plot(t,C2,':','LineWidth',2)
% for zeta=1.0
N3=[wn^2];
D3=[1 2*rho3*wn wn^2];
C3=tf(N3,D3);
step(C3,'--c')
% for zeta=1.2
N4=[wn^2];
D4=[1 2*rho4*wn wn^2];
C4=tf(N4,D4);
step(C4,'-.k')

title('Step Response of Second Order System')
xlabel('Time')
ylabel('Amplitude')
legend('rho1=0.25','rho2=0.7','rho3=1.0','rho4=1.2')
hold off

%% Q1(b) Calculate and plot delay time, rise time, peak time, settling time, peak overshoot on step response generated in above question.

% for zeta=0.25
N1=[wn^2];
D1=[1 2*rho1*wn wn^2];
sys1=tf(N1,D1);
tr1=(pi-theta1)/wd1
tp1=pi/wd1
tss1=4/(rho1*wn)
Mp1=exp(-(pi*rho1)/sqrt(1-rho1^2))
S1=stepinfo(sys1)
% for zeta=0.7
N2=[wn^2];
D2=[1 2*rho2*wn wn^2];
sys2=tf(N2,D2);
tr2=(pi-theta2)/wd2
tp2=pi/wd2
tss2=4/(rho2*wn)
Mp2=exp(-(pi*rho2)/sqrt(1-rho2^2))
S2=stepinfo(sys2)
% for zeta=1.0
S3=stepinfo(C3)
% for zeta=1.2
S4=stepinfo(C4)


%% Conclusion

%{
    In this experiment we have plotted the step response of the second
    order system for zeta=0.25,0.7 using formula and zeta=1.0,1.2 using
    step function. When 0<zeta<1, the system is underdamped, and when
    zeta>1, the system is overdamped. As zeta increases, the response
    becomes progressively less oscillatory till it becomes critically
    damped for zeta=1, and becomes overdamped for zeta>1.

    In the second question we have calculated delay time, rise time, peak
    time, settling time and peak overshoot using formula for zeta=0.25,0.7
    and using stepinfo function for all values of zeta.
%}
