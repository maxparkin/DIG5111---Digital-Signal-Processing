% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

[signal, fs] = audioread("C:\Users\maxpa\Documents\MATLAB\DIG5111---Digital-Signal-Processing\Week 10 (01.04.2025)\Session Files\piano_middle_C.wav");
signal = signal';
len =length(signal);
[high, low] = envelope(signal);
xr = hilbert(signal);

ts = 1/fs;
t = 0:ts:(len/fs)-ts;


f1 = 300;
A1 = 0.5;
sine1 = A1 * sin(2*pi*f1*t);

f2 = 500;
A2 = 1;
sine2 = A2 * sin(2*pi*f2*t);

f3 = 800;
A3 = 0.4;
sine3 = A3 * sin(2*pi*f3*t);

f4 = 1000;
A4 = 0.2;
sine4 = A4 * sin(2*pi*f4*t);

f5 = 1300;
A5 = 0.1;
sine5 = A5 * sin(2*pi*f5*t);

f6 = 1600;
A6 = 0.05;
sine6 = A6 * sin(2*pi*f6*t);

f7 = 1800;
A7 = 0.3;
sine7 = A7 * sin(2*pi*f7*t);

f8 = 2100;
A8 = 0.04;
sine8 = A8 * sin(2*pi*f8*t);

newSignal = sine1 + sine2 + sine3 + sine4 + sine5 + sine6 + sine7 + sine8;
newSignal = newSignal * 1 / max(abs(newSignal));

newSignal = newSignal .* high;
newSignal = newSignal .* low;

figure
plot(newSignal);
filt_order = 200;
h = ones(filt_order,1)/filt_order;
env2 = conv(abs(xr),h);

figure
plot(env2);

