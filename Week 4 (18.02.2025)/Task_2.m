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

clip2 = signal;
for i = 1:signalLength
if (signal(i) < -0.1)
clip2(i) = -0.1;
end
end
plot(clip2), axis([1, signalLength, -1, 1]); grid on; hold off;