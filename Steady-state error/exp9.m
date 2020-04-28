%% Experiment No: 9

clc
clear all
close all

%% Q1(a). plot the impulse response and step response of unity gain feedback systems with open loop transfer function GH(s)=1/(s+2)(s+3)

f1=[1];
f2=[1 2];
f3=[1 3];
GH1=tf(f1,conv(f2,f3))   %Open Loop Transfer Function
R1=feedback(GH1,1)  %Close Loop Transfer Function
figure('Name', 'Impulse and Step Response of close loop transfer function')
subplot(2,1,1)
impulse(R1)
title('Impulse Response of close loop transfer function')
xlabel('Time')
ylabel('Amplitude')
axis([0 3.5 -0.05 0.15])
subplot(2,1,2)
step(R1)
title('Step Response of close loop transfer function')
xlabel('Time')
ylabel('Amplitude')

%% Q1(b). plot the impulse response and step response of unity gain feedback systems with open loop transfer function GH(s)=1/s(s+2)(s+3)

f4=[1];
f5=[1 0];
f6=[1 2];
f7=[1 3];
A1=conv(f5,f6);
GH2=tf(f4,conv(A1,f7))   %Open Loop Transfer Function
R2=feedback(GH2,1)  %Close Loop Transfer Function
figure('Name', 'Impulse and Step Response of close loop transfer function')
subplot(2,1,1)
impulse(R2)
title('Impulse Response of close loop transfer function')
xlabel('Time')
ylabel('Amplitude')
axis([0 3.5 -0.05 0.15])
subplot(2,1,2)
step(R2)
title('Step Response of close loop transfer function')
xlabel('Time')
ylabel('Amplitude')
axis([0 30 0 1.5])

%% Q1(c). plot the impulse response and step response of unity gain feedback systems with open loop transfer function GH(s)=(s+1)(s+4)/s^2(s+2)(s+3)

f8=[1 1];
f9=[1 4];
f10=[1 0 0];
f11=[1 2];
f12=[1 3];
A2=conv(f10,f11);
GH3=tf(conv(f8,f9),conv(A2,f12))   %Open Loop Transfer Function
R3=feedback(GH3,1)  %Close Loop Transfer Function
figure('Name', 'Impulse and Step Response of close loop transfer function')
subplot(2,1,1)
impulse(R3)
title('Impulse Response of close loop transfer function')
xlabel('Time')
ylabel('Amplitude')
subplot(2,1,2)
step(R3)
title('Step Response of close loop transfer function')
xlabel('Time')
ylabel('Amplitude')

%% Q2. A unity gain feedback system has the forward path transfer function GH(s)=K*(s+3)(s+5)/s(s+7)(s+8). Find the value of K so that, there is 10% steady state error in open loop.
K=1;
K1=37.33;
f13=[K];
f14=[1 3];
f15=[1 5];
f16=[1 0];
f17=[1 7];
f18=[1 8];
f19=[K1];
t=0:0.01:5;
u=t;
figure('Name', 'Ramp Response of close loop transfer function')
A3=conv(f13,f14);
A4=conv(f16,f17);
GH4=tf(conv(A3,f15),conv(A4,f18))   %Open Loop Transfer Function
R4=feedback(GH4,1)  %Close Loop Transfer Function
lsim(R4,u,t)
hold on
A5=conv(f19,f14);
A6=conv(f16,f17);
GH5=tf(conv(A5,f15),conv(A6,f18))   %Open Loop Transfer Function
R5=feedback(GH5,1)  %Close Loop Transfer Function
lsim(R5,u,t,'--r')
legend('without K', 'with K')
title('Unit Ramp Response of close loop transfer function with K and without K')
xlabel('Time')
ylabel('Amplitude')
hold off


%% Conclusion

%{
    In this experiment in Q1, we have generated a close loop transfer with
    the help of given open loop transfer function with the use of in-built
    function "conv" and "feedback" and then we have ploted the resopnse for
    impulse and step. In Q2, we have created closed loop transfer function
    with gain K and without gain K and ploted the response for unit ramp
    using bult-in function "lsim".
%}
