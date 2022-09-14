% Qns 19 Designing FIR filter
N = 95;
fpts = [0 0.25 0.3 0.45 0.5 1];%freq breakpoints
mval =[0.4 0.4 1 1 0.8 0.8]; % magnitude breakpoints double each value to match the freq points
b = fir2(N,fpts,mval);
figure();
freqz(b,1,512);
title('Frequency Response of fir2 Filter')

% Plotting the gain
[h, w] = freqz(b,1,512);
figure();
plot(fpts, mval,w/pi,abs(h)); % Ideal vs fir2 design
legend('Ideal','FIR2 Design');
xlabel('Radian Frequency (\omega/\pi)');
ylabel('Magnitude');
title('Question 19 FIR2 Design');