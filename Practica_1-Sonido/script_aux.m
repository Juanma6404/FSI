% INSERTE EL CÓDIGO AQUÍ

Nfft = 1024;
Nsolape=Nfft/2;
windowType = 'hamming';
f_s = 6e3;

resolucionDFT = fs/Nfft;

N_util = (Nfft/2) + 1;
vector_N_util = 0:N_util-1;
eje_freq = vector_N_util * resolucionDFT;

%figure(); plot(eje_freq, outputPeriodogram,'-o'); title('periodogram 20e3-25e3');shg
[welchOutput,welchMatrix] = FramePeriodogram_ej4(audio1,Nfft,Nsolape,windowType,f_s);
MySpectrogram(welchMatrix,Nfft,Nsolape,f_s);
figure(); plot(eje_freq,welchOutput,'-'); title('Welch 20e3-25e3');shg