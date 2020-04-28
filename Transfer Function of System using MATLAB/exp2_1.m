clc
clear all
close all

%1. Generte tf and find zeros and poles.
%(a) G(s) = 2/(0.1s+1)
G1=tf(2, [0.1 1])
[Z1, P1, K1]=tf2zp(2, [0.1 1])
subplot(1,2,1)
pzmap(G1)

%(b) G(s) = 16/(s^2+4s+16)
G2=tf(16, [1 4 16])
[Z2, P2, K2]=tf2zp(16, [1 4 16])
subplot(1,2,2)
pzmap(G2)