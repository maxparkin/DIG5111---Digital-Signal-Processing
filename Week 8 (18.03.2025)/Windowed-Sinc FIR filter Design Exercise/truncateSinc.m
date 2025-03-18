% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

function truncateSinc = truncateSinc(cutoff, samplingFrequency, points)

nyquist = samplingFrequency / 2;

cutoff = cutoff / nyquist;

points = points - 1;

minusPoints = points - points - points;

b = cutoff * sinc(cutoff * (minusPoints:points));

fvtool(b, 1);

truncateSinc = b;
end