function output_SPL_1_3_octave = SPL_1_3_octave(input_signal, ref_dBFS_94_dB_SPL);

    x_rms_max = 1/ sqrt(2); %pq la señal está acotada entre -1 y 1
    load FilterBankCoefficientsOctave.mat
    filteredMatrix = FilterBankFiltering(input_signal, FilterBankCoefficients_1_3_octave, 1);
    x = MyRMScalculation(filteredMatrix);
    bands_rms = x' ;
    band_dBFS = 10 * log10(bands_rms.^2/x_rms_max^2);   %el punto es para q eleve individualmete cada elemento
    L = 94 + band_dBFS - ref_dBFS_94_dB_SPL;
    output_SPL_1_3_octave = L;
    figure; bar(output_SPL_1_3_octave); shg