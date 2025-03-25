% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

Fs=10000;
A=0.8;
Ts=1/Fs;
dur=1.5;
t=0:Ts:dur;
Theta=2*pi*(100+200*t+500*t.*t);
chirpsig=A*sin(Theta);
sound(chirpsig);

signalAnalyzer(chirpsig);