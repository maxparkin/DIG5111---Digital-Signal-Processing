% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

filename = 'C:\Users\maxpa\Documents\MATLAB\DIG5111---Digital-Signal-Processing\Week 2 (04.02.2025)\Session Files\piano_middle_C.wav';
[sig, Fs] = audioread(filename);

audioData = audioinfo(filename);