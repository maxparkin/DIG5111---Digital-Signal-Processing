% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

filename = "piano_middle_C.wav";
[sig, fs] = audioread("piano_middle_C.wav");

sig_rms = rms(sig);

% The "rms" function return the RMS value of the array.

sig_rms_normalised = sig / max(rms(sig) * 0.5);