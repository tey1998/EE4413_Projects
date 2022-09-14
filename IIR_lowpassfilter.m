% Project 1 IIR Filter
% Qns 1  IIR lowpass filter for 4 cases of filters (Butterworth, Type 1 & 2
% Chebyshev and Elliptic)

Ft = 40; %KHz
Fp = 4; %KHz
Fs = 8; %KHz


Wp =4/(40/2);   %normalized passband frequencies Fp/(Ft/2)
Ws =8/(40/2);   %normalized stopband frequencies Fs/(Fs/2)
Rp = 0.5; %dB passband ripple
Rs = 40; %dB  stopband ripple

%Case 1: butterworth filter

[N, Wn] = buttord(Wp,Ws,Rp,Rs);

%Case 2: Type 1 Chebyshev Filter

[N1, Wn1] = cheb1ord(Wp,Ws,Rp,Rs);

%Case 3: Type 2 ChebyShev Filter

[N2, Wn2] = cheb2ord(Wp,Ws,Rp,Rs);

% Case 4: Elliptic Filter

[N3, Wn3] = ellipord(Wp,Ws,Rp,Rs);

Order = [N N1 N2 N3];
Cutoff_Freq = [Wn Wn1 Wn2 Wn3];
disp (Order)
disp (Cutoff_Freq)
