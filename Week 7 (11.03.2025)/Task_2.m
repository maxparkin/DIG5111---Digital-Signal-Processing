% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

[signal, signal_samplingFrequency] = audioread("signalwithnoise.wav");
[noiseSignal, noiseSignal_samplingFrequency] = audioread("noise_profile.wav");
signalAnalyzer(signal, noiseSignal, 'SampleRate', signal_samplingFrequency);

% Spectral Noise Boundaries = 7.5KHz - 18KHz

filter_samplingFrequency = 48000;



custom_filterSpecification = fdesign.bandstop('Fp1,Fst1,Fst2,Fp2,Ap1,Ast,Ap2', Fp1, Fst1, Fst2, Fp2, Ap1, Ast, Ap2);
custom_filter = design(custom_filterSpecification);

fvtool(custom_filter);