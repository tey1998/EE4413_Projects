%Qns 21 using remez design an FIR bandpass filter

Fp = [1.8 3.0];
Fs = [1.5 4.2];
dp = 0.1;
ds = 0.02;
Ft = 12;
[N, Wn, beta, ftype] = kaiserord([3 4.2], [1 0], [dp ds], Ft); % for fedge use 2 highest freq
b = remez(N, [0 1.5 1.8 3.0 4.2 Ft/2]/(Ft/2), [0 0 1 1 0 0], [1/ds, 1/dp, 1/ds]); %fpts between 0 and 1 haver to include 0 and 1 also
figure();
freqz(b,1,512);
title('Question 21 Frequency Response of firpm');

[h,w] = freqz(b,1,512);
figure();
plot([0 1.5 1.8 3.0 4.2 Ft/2]/(Ft/2), [0 0 1 1 0 0], w/pi, abs(h));
legend('Ideal','firpm Design');
xlabel('Radian Frequency (\omega/\pi)');
ylabel('Magnitude');
title('Question 21 firpm design');