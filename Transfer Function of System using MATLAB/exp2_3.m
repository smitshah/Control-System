clc
clear all
close all

%obtain tf of close loop
a=tf([1 0], 1)
b=tf(4, 1)
sys1=parallel(a,b)
c=tf(1, [1 2 0])
sys2=series(sys1,c)
d=tf(0.5, 1)
sys3=feedback(sys2,d)
e=tf(1, 1)
sys4=feedback(sys3,e)

%2. find tf from zeros, poles and gain
%(a) zero at 0, pole at -2 and gain is 0.5
[NUM1, DEN1]=zp2tf(0, -2, 0.5);
G3=tf(NUM1, DEN1)

%(b) zero at -4, pole at -4 and gain is 16
[NUM2, DEN2]=zp2tf(-4, -4, 16);
G4=tf(NUM2, DEN2)