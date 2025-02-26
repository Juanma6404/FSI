function outputPeriodogram = MyPeriodogramByFrames(signal,Nfft,f_s,windowType)


% Window
windowSignal = window(windowType,Nfft);
windowedSignal = signal.*windowSignal;


% Valores de la señal desde 1 hasta 'Nfft' muestras
% windowedSignal = signal(1:Nfft);
% x= signal(1:Nfft);

% La DFT con Nfft muestras 
WINDOWEDSIGNAL = fft(windowedSignal,Nfft);

% Fórmula del periodograma
outputPeriodogram = 1/(Nfft*f_s) * (abs(WINDOWEDSIGNAL)).^2;

% Son sólo el número de muestras que queremos del periodograma porque la
% FFT cálcula muchas frecuencias positivas y sólo queremos la 'mitad + 1'
muestras_output = (Nfft/2) + 1;

outputPeriodogram = outputPeriodogram(1:muestras_output);

end