% Project 2 IIR Filter Design
% Step 1: Select Filter type, Dettermine order
% Step 2: Determine Transfer Function of the filter
% How to determine if it meets the specifications?
% Look at stop band ripple -50 db
% Look at stop band freq 0.4 Hz (cutoff freq)
% at -50 db freq should be 0.4Hz thats where it stops

%Design of a Type 1 Chebyshev Lowpass Filter
Ft = 40; %KHz
Fp = 4; %KHz
Fs = 8; %KHz


Wp =Fp/(Ft/2);   %normalized passband frequencies Fp/(Ft/2)
Ws =Fs/(Ft/2);   %normalized stopband frequencies Fs/(Fs/2)
Rp = 0.5; %dB passband ripple
Rs = 40; %dB  stopband ripple

%Step 1 {Type 1 Chebyshev}
[N1, Wn1] = cheb1ord(Wp,Ws,Rp,Rs);

%Step 2 Determine Transfer Function

[num,den] = cheby1(N1,Rp,Wn1,'low');
disp('Numerator Coefficients are '); disp(num);
disp('Denominator Coefficients are '); disp(den);

%Computing Gain Response

[g,w,p] = gain(num,den);
%Plot the gain response
%figure (1);
subplot(2,1,2);
plot(w/pi,p);
xlabel('\omega/\pi');
ylabel('Gain, dB');
title("Phase Response of a Type1 Chebyshev Lowpass Filter")

%figure(2);
subplot(2,1,1);
plot(w/pi,g);

axis ([0 1 -60 5]);
xlabel('\omega/\pi');
ylabel('Gain, dB');
title("Gain Response of a Type1 Chebyshev Lowpass Filter")
