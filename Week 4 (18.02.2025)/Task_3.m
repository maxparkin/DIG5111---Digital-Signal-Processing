% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

clip1_high = clipSignal(220, 1, 0.5, -0.5);
clip2_high = clipSignal(220, 2, 0.5, -0.5);
clip3_high = clipSignal(220, 3, 0.5, -0.5);

clip1_low = clipSignal(220, 1, 0.2, -0.2);
clip2_low_ = clipSignal(220, 2, 0.2, -0.2);
clip3_low = clipSignal(220, 3, 0.2, -0.2);

plot(clip1);
hold on;
plot(clip2);
hold on
plot(clip3);

% Symetrical clipping creates only odd harmonics. Negative clipping
% clipping creates odd and even harmnoics. Positive clipping creates
% exactly the same harmonics and negative clipping.

% Different threshold values create different amplitudes in harmonics.