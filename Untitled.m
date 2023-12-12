clear all;clc;
%2nd Order Sallek-Key filter design
K = 6.6;%DC gain V/V
Fc = 250e3; %250KHz
Wc = 2*pi*Fc;
s = Wc*1i;
Q = 1/sqrt(2);%Quality Factor for Butterworth filter
C1 = 100e-12;
R2 = 4.5e3;
C2 = 7e-12;
syms R1
%Q(R1,R2,C1,C2) = sqrt(R1*R2*C1*C2)/((R1+R2)*C1+R1*C2*(K-1));
%Fc(R1,R2,C1,C2) = 1/2*pi*sqrt(R1*R2*C1*C2);

eqns = [1/sqrt(R1*R2*C1*C2) == Wc];
        %sqrt(R1*R2*C1*C2)/((R1+R2)*C1+R1*C2*(1-K)) == Q
        %abs(K/(s^2 * (R1*R2*C1*C2) + s*((R1+R2)*C1+R1*C2*(1-K)) +1)) == 0.5
        %];
Sol = solve(eqns',R1);

