% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

[signal, fs] = audioread("C:\Users\maxpa\Documents\MATLAB\DIG5111---Digital-Signal-Processing\Week 10 (01.04.2025)\Session Files\piano_middle_C.wav");
%%
len = length(signal);

A = linspace(0, 1, len * 0.1);
D = linspace(1, 0.7, len * 0.2);
S = linspace(0.7, 0.7, len * 0.4);
R = linspace(0.7, 0, len * 0.3);

envolope = [A D S R];

plot(signal);
hold on
plot(envolope)