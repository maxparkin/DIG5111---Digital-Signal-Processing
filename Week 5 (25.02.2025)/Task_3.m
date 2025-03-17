% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

[ir_stereo , ir_samplingFrequency] = audioread("C:\Users\maxpa\Documents\MATLAB\DIG5111---Digital-Signal-Processing\Week 5 (25.02.2025)\Session Files\Audio Files-20250226\Church.wav");

ir = ir_stereo(:, 1);

[dry_sig, samplingFrequency] = audioread("C:\Users\maxpa\Documents\MATLAB\DIG5111---Digital-Signal-Processing\Week 5 (25.02.2025)\Session Files\Audio Files-20250226\pluck.wav");


ir_resampled = resample(ir, samplingFrequency, ir_samplingFrequency);



wet_sig = conv(dry_sig, ir_resampled);


wet_len = length(wet_sig);
dry_len = length(dry_sig);
len_diff = abs(wet_len - dry_len);

pad = zeros (len_diff, 1);

padded_dry = [dry_sig(:);pad];

%%

wet_dry_ratio = 0.9;

blendedsig = wet_dry_ratio * wet_sig + 1-wet_dry_ratio * padded_dry;

%%

conv_sig = 1 * conv_sig / max(abs(conv_sig));

duration = length(conv_sig) / samplingFrequency;

samplingPeriod = 1 / samplingFrequency;

time = 0:samplingPeriod:duration - samplingPeriod;

plot(time, conv_sig);
xlabel("Time in seconds");
ylabel("Amplitude");
sound(conv_sig, samplingFrequency);