% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

function signal = clipSignal(frequency, clippingType, positiveThreshold, negativeThreshold)

samplingFrequency = 44100;
samplingPeriod = 1 / samplingFrequency;
duration = 1;

clipType = clippingType;

time = 0:samplingPeriod:duration;
signal = sin(2 * pi * frequency * time);

signalLength = length(signal);

if clipType == 1
    for i = 1:signalLength
        if signal(i) > positiveThreshold
            signal(i) = positiveThreshold;
        end

        if signal(i) < negativeThreshold
            signal(i) = negativeThreshold;
        end
    end

elseif clipType == 2
        for i = 1:signalLength
            if signal(i) < negativeThreshold
                signal(i) = negativeThreshold;
            end
        end

elseif clipType == 3
        for i = 1:signalLength
            if signal(i) > positiveThreshold
                signal(i) = positiveThreshold;
            end
        end
end

end
