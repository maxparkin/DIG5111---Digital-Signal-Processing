% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

frequency1 = 150;
frequency2 = 800;
samplingFrequnecy = 4000;
samplingPeriod = 1 / samplingFrequnecy;
duration = 3;
time = 0:samplingPeriod:duration;

sig1 = sin(2 * pi * frequency1 * time);
sig2 = sin(2 * pi * frequency2 * time);

sig = sig1 + sig2;

sincfrequency = 300;
samplingFrequency = 4000;
nyquist = samplingFrequency / 2;
points = 60;
negativePoints = points - points - points;

f0 = sincfrequency / nyquist;

a = 1;

b = f0 * sinc(f0 * (negativePoints:points));

sig_filtered = filter(b, a, sig);