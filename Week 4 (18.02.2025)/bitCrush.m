function bitCrush = bitCrush(audioFile, steps)

signal = audioread(audioFile);

bitCrush = signal * steps;
bitCrush = round(bitCrush);
bitCrush = bitCrush * (1 / steps);
plot(bitCrush);

end