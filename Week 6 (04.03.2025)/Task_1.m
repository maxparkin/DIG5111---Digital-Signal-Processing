% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

NoiseFs = 22050;
NoiseDur = 2;
Noise = randn(NoiseFs * 2, 1);

IR = Bandpass_Filter_2.Numerator;

newNoise = convolution(Noise, IR);

sound(newNoise, NoiseFs);