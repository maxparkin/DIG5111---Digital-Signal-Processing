% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

function sincFunction = sincFunction()

frequency = 300;
samplingFrequency = 4000;
nyquist = samplingFrequency / 2;
points = 60;
negativePoints = points - points - points;

f0 = frequency / nyquist;

b = f0 * sinc(f0 * (negativePoints:points));

plot(b);
fvtool(b);

sincFunction = b;

