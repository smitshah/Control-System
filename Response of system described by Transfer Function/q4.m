%% Experiment No: 3

%{
    Name:- Smit Shah
    PRN:- 17070123090
    Batch:- EB-2
%}

clc
clear all
close all

%% Q1 Visualize Impulse signal on scope using two step signal 

% This question is to be done on Simulink.

%% Q2 Visualize Impulse, step and ramp signal on scope

% (i) G(s)=1/s
% (ii) G(s)=1/s+1
% (iii) G(s)=s+4/s^2+3.5s+6

% This question is to be done on Simulink.

%% Q3 Visualize and Compare step response on same scope

% (i) G(s)=1/4s+1  and  H(s)=1/2s+1
% (ii) G(s)=1/2s+1  and  H(s)=3/2s+1

% This question is to be done on Simulink.

%% Q4 Visualize Impulse and Step response on graph 

% (i) G(s)=1/s
figure('numbertitle','off','Name','Smit_Impulse and Step Signal_i')
sys1=tf([1],[1 0]);
subplot(2,1,1)
step(sys1)
subplot(2,1,2)
impulse(sys1)

% (ii) G(s)=1/s+1
figure('numbertitle','off','Name','Smit_Impulse and Step Signal_ii')
sys2=tf([1],[1 1]);
subplot(2,1,1)
step(sys2)
subplot(2,1,2)
impulse(sys2)

% (iii) G(s)=s+4/s^2+3.5s+6
figure('numbertitle','off','Name','Smit_Impulse and Step Signal_iii')
sys3=tf([1 4],[1 3.5 6]);
subplot(2,1,1)
step(sys3)
subplot(2,1,2)
impulse(sys3)

%% Matlab Functions

%{

1. Impulse:- It calculates the unit impulse response of a linear system.
The impulse response is response to a Dirac input delta(t) for continuous time
systems and to unit pulse at t=0 for discrete time systems. Zero initial
state is assumed in the state-space case. When invoked without left-hand
arguments, this function plots the impulse response on the screen.

impulse(sys) plots the impulse response of an arbitrary LTI model sys. This
model can be continouous or discrete, and SISO or MIMO. The impulse
response of multi-input systems is the collection of impulse responses for
each input channel. The duration of simulation is determined automatically
to display the transient behavior of the response.

impulse(sys,t) sets the simulation horizon explicitly. You can specify
either a final time t = Tfinal (in seconds), or a vector of evenly spaced
time samples of the form: t=0:dt:Tfinal


2. Step:- step calculates the step response of a dynamic system. For the
state-space case, zero initial state is assumed. When it is invoked with no
output arguments, this function plots the step response on the screen.

step(sys) plots the step response of an arbitrary dynamic system model,
sys. This model can be continuous- or discrete-time, and SISO or MIMO. The
step response of multi-input systems is the collection of step responses
for each input channel. The duration of simulation is determined
automatically, based on the system poles and zeros.

step(sys,Tfinal) simulates the step response from t = 0 to the final time
t=Tfinal. Express Tfinal in the system time units, specified in the
TimeUnit property of sys.  For discrete-time systems with unspecified
sample time (Ts = -1), step interprets Tfinal as the number of sampling
periods to simulate.

%}

%% Conclusion

%{

In this experiment, we visualized impulse wave on scope using two step
waves, then we generated step, impulse and ramp wave from given transfer
functions on simulink. Then we write the code for he given transfer
function to generate step and impulse wave using Matlab Editor.

%}