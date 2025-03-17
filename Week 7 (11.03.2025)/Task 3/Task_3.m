% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

[signal, signal_samplingFrequency] = audioread("C:\Users\maxpa\Documents\MATLAB\DIG5111---Digital-Signal-Processing\Week 7 (11.03.2025)\Session Files\signalwithnoise.wav");
[noiseSignal, noiseSignal_samplingFrequency] = audioread("C:\Users\maxpa\Documents\MATLAB\DIG5111---Digital-Signal-Processing\Week 7 (11.03.2025)\Session Files\noise_profile.wav");

% Spectral Noise Boundaries = 7.5KHz - 18KHz

filter_samplingFrequency = 48000;

Fp1 = 7000 / (filter_samplingFrequency / 2);
Fst1 = 7500 / (filter_samplingFrequency / 2);
Fst2 = 18000 / (filter_samplingFrequency / 2);
Fp2 = 18500 / (filter_samplingFrequency / 2);
Ap1 = 3;
Ast = 60;
Ap2 = 3;

a = 1;

custom_filterSpecification = fdesign.bandstop('Fp1,Fst1,Fst2,Fp2,Ap1,Ast,Ap2', Fp1, Fst1, Fst2, Fp2, Ap1, Ast, Ap2);
custom_filter = design(custom_filterSpecification, 'FIR');

fvtool(custom_filter);

filtered_signal = filter(custom_filter.Numerator, a, signal);

signalAnalyzer(signal, noiseSignal, filtered_signal, 'SampleRate', signal_samplingFrequency);

audiowrite("custom_filtered_signal.wav", filtered_signal, signal_samplingFrequency);