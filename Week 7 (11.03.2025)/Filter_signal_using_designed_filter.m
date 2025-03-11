% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

signal = randn(1,200);
b = Hd.Numerator;
a = 1;
filtered_signal = filter(b, a, signal);
figure("Name", "Random Noise Filtered");
subplot(211), plot(signal);
subplot(212), plot(filtered_signal);
fvtool(Hd);