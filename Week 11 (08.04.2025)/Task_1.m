% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

fs = 4000;
duration = 3;
ts = 1 / fs;
time = 0:ts:3;

f1 = 200;
sig1 = sin(2 * pi * f1 * time);

f2 = 800;
sig2 = sin(2 * pi * f2 * time);

sig = sig1 + sig2;
sig = sig * 1 / max(abs(sig));

fc = 300;
fc = fc / (fs / 2);
points = 60;
negativePoints = points - points - points;

b = fc * sinc(fc * (negativePoints:points));
a = 1;

hammingWindow = hamming(length(b));
hamming_b = hammingWindow .* b;
fvtool(hamming_b, a);
