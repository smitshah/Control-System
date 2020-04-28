clc
clear all
close all

%2. find tf from zeros, poles and gain
%(a) zero at 0, pole at -2 and gain is 0.5
[NUM1, DEN1]=zp2tf(0, -2, 0.5);
G3=tf(NUM1, DEN1)

%(b) zero at -4, pole at -4 and gain is 16
[NUM2, DEN2]=zp2tf(-4, -4, 16);
G4=tf(NUM2, DEN2)