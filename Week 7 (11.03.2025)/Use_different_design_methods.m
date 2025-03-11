% Max Parkin
% Birmingham City University
% BSc (Hons) Degree in Sound Engineering and Production with Professional Placement Year
% Year 2 (2024 – 2025)
% DIG5111 – Digital Signal Processing

samplingFrequency = 10000;
Fp = 500 / (samplingFrequency / 2);
Fst = 800 / (samplingFrequency / 2);
Apass = 3;
Astop = 20;
filterSpecification = fdesign.lowpass('Fp,Fst,AP,Ast', Fp, Fst, Apass, Astop);
fDesignedLowpassFilter_1 = design(filterSpecification);
fvtool(fDesignedLowpassFilter_1);

designmethods(filterSpecification);