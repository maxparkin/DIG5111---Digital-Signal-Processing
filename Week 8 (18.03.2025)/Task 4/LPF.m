% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

function [b, a] = LPF(fc, Fs, Q)

w0 = 2 * pi * fc / Fs;
alpha = sin(w0) / (2 * Q);

b0 = (1 - cos(w0) / 2);
b1 = 1 - cos(w0);
b2 = (1 - cos(w0)) / 2;
a0 = 1 + alpha;
a1 = -2 * cos(w0);
a2 = 1 - alpha;

b = [b0 b1 b2];
b = b / a0;
a = [a0 a1 a2];
a = a / a0;

end
