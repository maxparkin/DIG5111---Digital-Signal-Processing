% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

Amp=0.9;
f=441;
fs = 44100;
ts= 1/fs;
t = 0:1/fs:(0.1-ts);
sig = Amp*sin(2*pi*f*t);
sound(sig,fs);
plot(t,sig);
xlabel('Time in Seconds');
ylabel('Amplitude');
title('Sine Wave Signal');
audiowrite('sine1.wav',sig,fs);