% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

[ir_stereo , ir_samplingFrequency] = audioread("Church.wav");

ir = ir_stereo(:, 1);

[sig, samplingFrequency] = audioread("pluck.wav");

resample(ir, sig);

ir_range = 10;

ir_range = ir_range / 100;

ir = ir * ir_range;

conv_sig = conv(sig, ir);

conv_sig = 1 * conv_sig / max(abs(conv_sig));

duration = length(conv_sig) / samplingFrequency;

samplingPeriod = 1 / samplingFrequency;

time = 0:samplingPeriod:duration - samplingPeriod;

plot(time, conv_sig);
xlabel("Time in seconds");
ylabel("Amplitude");
sound(conv_sig, samplingFrequency);