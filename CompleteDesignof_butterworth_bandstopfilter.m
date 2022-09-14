% Project 2 IIR Filter Design
% Step 1: Select Filter type, Dettermine order
% Step 2: Determine Transfer Function of the filter
% How to determine if it meets the specifications?
% Look at stop band ripple -50 db
% Look at stop band freq 0.4 Hz (cutoff freq)
% at -50 db freq should be 0.4Hz thats where it stops

%Design of a Butterworth Bandstop Filter
Ws = [0.4 0.6]; % normalized freq
Wp = [0.3 0.7]; % normalized freq
Rp = 0.4; %dB
Rs = 50; %dB

%Step 1 {butterworth}
[N1,Wn1] = buttord(Wp,Ws,Rp,Rs);

%Step 2 Determine Transfer Function

[num,den] = butter(N1,Wn1,'stop');
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
title("Phase Response of a Butterworth Bandstop Filter")

%figure(2);
subplot(2,1,1);
plot(w/pi,g);

axis ([0 1 -60 5]);
xlabel('\omega/\pi');
ylabel('Gain, dB');
title("Gain Response of a Butterworth Bandstop Filter")
