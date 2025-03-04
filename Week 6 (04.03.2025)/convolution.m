% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

function convolution = convolution(signal, IR)

convolution = zeros(1, length(signal) + length(IR) - 1);

for i = 1:length(signal)
    for ii = 1:length(IR)
        convolution(i + ii - 1) = convolution(i + ii - 1) + signal(i) .* IR(ii);
    end
end
end