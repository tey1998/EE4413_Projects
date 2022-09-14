function [g,w,p] = gain(num,den)
    %Computes the gain function in dB of a transfer function at 256 equally
    %spaced points on the unti circle

    %num = numerator coeff
    %den = denominator coeff
    %Freq values retured in vector w
    %gain values returned in vector g
    
    w = 0:pi/255:pi; %around a circle 360degress step size is pi/255
    h = freqz(num,den,w);
    g = 20*log10(abs(h)); %amplitude response(gain response)

    %To obtain phase response

    %p=angle(h); %Wrap
    p=phase(h); %Unwrap
