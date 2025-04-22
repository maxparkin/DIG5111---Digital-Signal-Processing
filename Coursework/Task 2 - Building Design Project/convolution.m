function convolutionSignal = convolution(singal, impulseResponse, wetDryRatio)

convolutionSignal = zeros(1, length(signal) + length(impulseResponse) - 1);

for i = 1:length(signal)
    for ii = 1:length(impulseResponse)
        convolutionSignal(i + ii - 1) = convolutionSignal(i + ii - 1) + signal(i) .* impulseResponse(ii);
    end
end
end