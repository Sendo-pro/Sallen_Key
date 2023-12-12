close all;clear all; clc;
R1 = 54.92e3;
R2 = 4.5e3;
C1 = 100e-12;
C2 = 16.4e-12;

K = 6.6;%DC gain V/V



Q  = sqrt(R1*R2*C1*C2)/((R1+R2)*C1 + R1*C2*(1-K))
Fc = 1/(2*pi*sqrt(R1*R2*C1*C2))


sys = tf([K],[(R1*R2*C1*C2) ((R1+R2)*C1+R1*C2*(1-K)) 1]);

figure
bode(sys)

figure
step(sys);

stepinfo(sys)

figure
pzplot(sys);

figure
impulse(sys);