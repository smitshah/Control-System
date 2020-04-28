%% Experiment No.: 2

clc
clear all
close all

%% Q1. Generte tf and find zeros, poles and gain.

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

%% Q2. Find tf from zeros, poles and gain.

%(a) zero at 0, pole at -2 and gain is 0.5
[NUM1, DEN1]=zp2tf(0, -2, 0.5);
G3=tf(NUM1, DEN1)

%(b) zero at -4, pole at -4 and gain is 16
[NUM2, DEN2]=zp2tf(-4, -4, 16);
G4=tf(NUM2, DEN2)

%% Q3. Obtain tf of the given close loop

a=tf([1 0], 1)
b=tf(4, 1)
sys1=parallel(a,b)
c=tf(1, [1 2 0])
sys2=series(sys1,c)
d=tf(0.5, 1)
sys3=feedback(sys2,d)
e=tf(1, 1)
sys4=feedback(sys3,e)

%% Q4. List and explain new MATLAB functions used to perform tasks mentioned in all above questions.

%{

1. tf:- Use tf to create real or complex valued transfer function models or
to convert state-space or zero-pole-gain models to transfer function form.
You can also use tf to create generalized state-space models or uncertain
state-space models. sys=tf(Numerator,Denomintor) creates a contionuous time
transfer function with numerator(s) and denominator(s) specified by
Numerator and Denomintor.

2. tf2zp:- tf2zp finds the zeros, poles, an gains of a continuous time
transfer function. [z,k,p]=tf2zp(b,a) finds the matrix of zeros z, the
vector of poles p, and the associated vector of gain k from the transfer
function parameters b and a.

3. pzmap:- pzmap(sys) creates a pole-zero plot of the continuous or
discrete time dynamic system model sys. For SISO systems, pzmap plots the
transfer function poles and zeros. For MIMO systems, it plots the system
poles and transmission zeros. The plots are plotted as x's and the zeros
are plottecd as o's.

pzmap(sys1, sys2, sys3,...,sysN) creates the pole-zero plot of multiple
models on a single figure. The models can have different numbers of inputs
and outputs can be mix of continuous and discrete systems.

[p,z]=pzmap(sys) returns the systm poles and zeros in the column vectors p
and z. No plt is drawn on the screen. You can use the functions sgrid and
zgrid to plot lines of constant damping ratio and natural frequency in the
s or z plane.

4. zp2tf:- zp2tf forms transfer function polynomials from the zeros, poles,
and gains of a system in factored from. Column vector p specifies the pole
locations, and matrix z specifies the zero locations, with as many columns 
as there are outputs. The gains for each numerator transfer function are in
vector k. The zeros and poles must be real or come in complex conjugate
pairs. The polynomial denominator coefficients are returned in row vector a
and the polynomial numerator coefficients are returned in mtrix b, which
has as many rows as there are columns of z. Inf values can be used as place
holders in z, if some columns have fewer zeros than others.

5. parallel:- parallel connects two model objects in parallel. The function
accepts any type of model. The two systems must be either both continuous
or both discrete with identical sample time. Static gains are neutral and
can be specified as regular matrices. sys=parallel(sys1,sys2) forms the
basic parallel connection.

6. series:- series connects two model objects in series. The function
accepts any type of model. The two systems must be either both continuous
or both discrete with identical sample time. Static gains are neutral and
can be specified as regular matrices. sys=series(sys1,sys2) forms the
basic series connection.

7. feedback:- sys=feedback(sys1,sys2) returns a model object sys for the
negative feedback interconnection of model objects sys1 and sys2. The
closed loop model sys has u as input vector and y as output vector. The
models sys1 and sys2 must be both continuous or both discrete with
identical sample times. Precedence rules are used to determine the rsulting
model type.

To apply positive feedback, use the syntax: sys=feedback(sys1,sys2,+1)

By default, feedback(sys1,sys2) assumes negative feedback and is equivalent
to feedback(sys1,sys2,-1).

Finally, feedback(sys1,sys2,feedin,feedout) computes a closed loop model
sys for the more general feedback loop.
%}

%% Conclusion 

%{
In this experiment, we used various functions to solve the given problems
and we also learnt how to use these functions. By using these functions we
can also obtain a transfer function(tf) from a given block diagram or
pole-zero-gain. we have also plotted the poles and zeros of a given tf.
%}
