% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

numberOfSamples = 2 ^ 16; % Total number of samples to synthesise.
B = [0.049922035 -0.095993537 0.050612699 -0.004408786]; % Numerator coefficients for the filter.
A = [1 -2.494956002   2.017265875  -0.522189400]; % Denominator coefficients for the filter.
nT60 = round(log(1000)/(1-max(abs(roots(A))))); % Time for sound to decay 60dB.
v = randn(1,numberOfSamples+nT60); % Generate white noise.
x = filter(B,A,v); % Filter white noise to create pink noise.
signal = x(nT60+1:end); % Skip the transient response.

% Information interpreted from: https://ccrma.stanford.edu/%7Ejos/sasp/Example_Synthesis_1_F_Noise.html
