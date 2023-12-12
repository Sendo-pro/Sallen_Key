function F = filter_func(z)
R1 = z(1);
R2 = z(2);
C1 = z(3);
C2 = z(4);

K = 6.6;%DC gain V/V
Fc = 250e3; %250KHz
Wc = 2*pi*Fc;
s = Wc*1i;
Q = 1/sqrt(2);%Quality Factor for Butterworth filter


F(1) = 1/sqrt(R1*R2*C1*C2) - Wc;
F(2) = sqrt(R1*R2*C1*C2)/((R1+R2)*C1+R1*C2*(K-1)) - Q; 
F(3) = abs(K/(s^2 * (R1*R2*C1*C2) + s*((R1+R2)*C1+R1*C2*(K-1)) +1)) -0.5;
F(4) = C1-100e-12;

end