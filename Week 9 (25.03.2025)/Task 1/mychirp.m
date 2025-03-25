% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

function signal = mychirp( f1, f2, dur, fs )
%MYCHIRP generate a linear-FM chirp signal
%
% usage: xx = mychirp( f1, f2, dur, fsamp )
%
% f1 = starting frequency
% f2 = ending frequency
% dur = total time duration
% fsamp = sampling frequency (OPTIONAL: default is 8000)
%

if( nargin < 4 ) %-- Allow optional input argument
fs = 8000;
end
ts = 1/fs;
t = 0:ts:dur;
a = (f2 - f1) / (dur * 2); % slope = 2u => u = slope/2
b = f1;
theta = 2*pi*(100 + b*t + a*t.*t);
signal = real(exp(j*theta));
end

% 'theta' contains the coefficients of frequencies to sweep from. 'a'
% equals the end frequency and 'b' equals the start frequency. 'a' is
% calculated from minusing 'f1' from 'f2' and dividing it by the duration,
% multiplied by 2. 'theta' then is inputted into the 'sin()' function to
% generate the signal.