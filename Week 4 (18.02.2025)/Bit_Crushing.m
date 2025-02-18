z = sin(2*pi*1.*t);
plot(212), plot(z); grid on; hold on;
NumberOfSteps = 5;
y2 = z*NumberOfSteps;
y2 = round(y2);
y2 = y2*(1/NumberOfSteps);
plot(y2, '--');