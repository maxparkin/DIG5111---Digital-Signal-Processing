% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

clear; clc;
fs = 44100;
ts = 1/fs;
t = 0:ts:1-ts;
f = 1000;
A = 1;
sine = A * sin(2*pi*f*t);

sound(sine, 5000, 16);

%%
[signal, file_fs] = audioread("06 Lalla Rookh.mp3");

sound(signal, 22050);