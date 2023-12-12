%Simplified model
close all; clear all; clc;
%inputs
K = 1.5;%DC gain V/V     --- K<3
Fc= 250e3;
R = 100e3;

C = 1/(2*pi*R*Fc)

R1 = R;R2 = R;C1 = C;C2 = C;

Q  = R*C/(3-K)

sys = tf([K],[(R1*R2*C1*C2) ((R1+R2)*C1+R1*C2*(1-K)) 1])

figure
bode(sys)

figure
step(sys);

stepinfo(sys)

figure
pzplot(sys);

figure
impulse(sys);