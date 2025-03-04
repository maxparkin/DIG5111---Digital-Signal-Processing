% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

ir = zeros(1, 10000); % Making this array shorter to 10,000, will decrease the total decay time.
ir([1, 2000, 4000, 6000, 8000]) = [1, 0.3, 0.25, 0.2, 0.15]; % Lowering the specified values in the array will make the decay quieter and attenuate it. 

[sig, samplingFrequency] = audioread('pluck.wav');

conv_sig = conv(sig, ir);

duration = length(conv_sig) / samplingFrequency;
samplingPeriod = 1 / samplingFrequency;
time = 0:samplingPeriod:duration - samplingPeriod;

plot(time, conv_sig);
xlabel("Time in seconds");
ylabel("Amplitude");
sound(conv_sig, samplingFrequency);