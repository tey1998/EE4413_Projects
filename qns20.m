%qns 20 
Fp = [0.3 0.6]; %normalized freq
Fs = [0.2 0.7]; %normalized freq
dp = 0.1;
ds = 0.02;
samplingFreq = 12;
N = 20;
b = remez(20, [0 0.2 0.3 0.6 0.7 1], [0 0 1 1 0 0], [1/ds, 1/dp, 1/ds]); %b = remez(N,fpts,mval,wgts)
figure();
freqz(b,1,512);
title('Question 20 Frequency Response of firpm');

[h,w] = freqz(b,1,512);
figure();
plot([0 0.2 0.3 0.6 0.7 1], [0 0 1 1 0 0], w/pi, abs(h));
legend('Ideal','firpm Design');
xlabel('Radian Frequency (\omega/\pi)');
ylabel('Magnitude');
title('Question 20 firpm design');