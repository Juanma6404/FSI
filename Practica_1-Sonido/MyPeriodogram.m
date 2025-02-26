function outputPeriodogram = MyPeriodogram(signal,Nfft,f_s)

% Valores de la señal desde 1 hasta 'Nfft' muestras
x = signal(1:Nfft);

% La DFT con Nfft muestras 
X = fft(x,Nfft);

% Fórmula del periodograma
outputPeriodogram = 1/(Nfft*f_s) * (abs(X)).^2;

% Son sólo el número de muestras que queremos del periodograma porque la
% FFT cálcula muchas frecuencias positivas y sólo queremos la 'mitad + 1'
muestras_output = (Nfft/2) + 1;

outputPeriodogram = outputPeriodogram(1:muestras_output);

end