% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

%%
[largeHall_stereo, samplingFrequency_largeHall] = audioread("LargeHall.wav");

largeHall = largeHall_stereo(:, 1);

[sig, samplingFrequency] = audioread("pluck.wav");

largeHall_sig = conv(largeHall, sig);

largeHall_sig = 1 * largeHall_sig / max(abs(largeHall_sig));

largeHall_duration = length(largeHall_sig) / samplingFrequency;

largeHall_samplingPeriod = 1 / samplingFrequency;

largeHall_time = 0:largeHall_samplingPeriod:largeHall_duration - largeHall_samplingPeriod;

plot(largeHall_time, largeHall_sig);
xlabel("Time in seconds");
ylabel("Amplitude");
sound(largeHall_sig, samplingFrequency);

%%

[church_stereo, church_samplingFrequency] = audioread("Church.wav");

church = church_stereo(:, 1);

church_sig = conv(church, sig);

church_sig = 1 * church_sig / max(abs(church_sig));

church_duration = length(church_sig) / samplingFrequency;

church_samplingPeriod = 1 / samplingFrequency;

church_time = 0:church_samplingPeriod:church_duration - church_samplingPeriod;

plot(church_time, church_sig);
xlabel("Time in seconds");
ylabel("Amplitude");
sound(church_sig, samplingFrequency);