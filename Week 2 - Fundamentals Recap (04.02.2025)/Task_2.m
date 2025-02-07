% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

filename = 'piano_middle_C.wav';
[sig, Fs] = audioread(filename);

audioData = audioinfo(filename);

file_size = Fs * 16 * 7.5533;

file_size_bytes = file_size / 8;