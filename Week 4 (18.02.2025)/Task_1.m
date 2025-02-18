% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

samplingFrequency = 44100;
samplingPeriod = 1 / samplingFrequency;
duration = 1;

time = 0:samplingPeriod:duration;
signal = sin(2 * pi * 1 * time);

signalLength = length(signal);

for i = 1:signalLength
    if signal(i) > 0.5
    signal(i) = 0.5;
    end

    if signal(i) < -0.5
    signal(i) = -0.5;
    end
end

signal_normalised = signal * 1 / max(abs(signal));

plot(signal_normalised), axis([1, signalLength, -1, 1]); grid on;