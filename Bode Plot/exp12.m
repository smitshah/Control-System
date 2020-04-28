%% Experiment No: 12

clc
clear all
close all

%% Q1. Find the bode plot for the transfer function GH(s)= 5(s+2)/(s+5)(s+10)

figure("Name","Bode Plot")
f1=[5];
f2=[1 2];
f3=[1 5];
f4=[1 10];
A=conv(f1,f2);
B=conv(f3,f4);
G=tf(A,B)
bode(G)

%% Q2. Find the bode plot for the transfer function GH(s)= 10(s+1)/s(s+3)(s+5)

figure("Name","Bode Plot_1")
f1=[10];
f2=[1 1];
f3=[1 0];
f4=[1 3];
f5=[1 5];
A=conv(f1,f2);
B=conv(f3,f4);
C=conv(B,f5);
G1=tf(A,C)
bode(G1)

%% Conclusion
