% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

[signal, signal_samplingFrequency] = audioread("C:\Users\maxpa\Documents\MATLAB\DIG5111---Digital-Signal-Processing\Week 7 (11.03.2025)\Session Files\signalwithnoise.wav");
[noiseSignal, noiseSignal_samplingFrequency] = audioread("C:\Users\maxpa\Documents\MATLAB\DIG5111---Digital-Signal-Processing\Week 7 (11.03.2025)\Session Files\noise_profile.wav");
signalAnalyzer(signal, noiseSignal, 'SampleRate', signal_samplingFrequency);

% Spectral Noise Boundaries = 7.5KHz - 18KHz