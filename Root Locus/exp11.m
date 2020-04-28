%% Experiment No: 11

clc
clear all
close all

%% Q1. Find the root locus for the transfer function GH(s)= k/s(s+2)(s^2+2s+5)

figure("Name","Root locus")
f1=[1];
f2=[1 0];
f3=[1 2];
f4=[1 2 5];
A=conv(f2,f3);
G=tf(f1,conv(A,f4))
rlocus(G)

%% Q2. Find the root locus for the transfer function GH(s)= k/(s+3)(s+4)(s^2+2s+17)

figure("Name","Root locus_1")
f5=[1];
f6=[1 3];
f7=[1 4];
f8=[1 2 17];
B=conv(f6,f7);
G1=tf(f5,conv(B,f8))
rlocus(G1)

%% Conclusion
