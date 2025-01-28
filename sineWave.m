function sig = sineWave(peakAmplitude, frequency, samplingFrequency, duration, theta) % Define function with arguments.

samplingPeriod = 1 / samplingFrequency; % Define the sampling period by dividing 1 by the sampling frequency.
time = 0:samplingPeriod:duration; % Define time, counting from 0 to the duration total in increments of the sampling period.

theta_radians = theta/180 * pi; % Convert theta from degrees to radians.
sig = peakAmplitude * sin(2 * pi * frequency .* time + theta_radians); % Create a sine wave with the 'sin' function.
plot(time, sig); % Plot the sine wave the time and signal axis.
xlabel('Time in seconds'); % Label the x label.
ylabel('Amplitude'); % Label the y label.
grid on; % Turn the grid on.

end % End the function.