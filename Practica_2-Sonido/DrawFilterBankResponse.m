function DrawFilterBankResponse(auxFilterBankCoefficients, type);
%function DrawFilterBankResponse(auxFilterBankCoefficients, type);
%   auxFilterBankCoefficients: an Octave Filter Bank block from the Audio
%       Toolbox, that decomposes a signal into octave or fractional-octave subbands
%   type: either 'log' or 'linear'
% Assumes:
%   sampling frequency: 48 kHz
%   reference frequency: 1 kHz

%Pregunta:
%Si al micrófono de un sonómetro con sensibilidad SS (V/Pa) llega un tono con frecuencia f1f1​ que genera una presión sonora con valor RMS de 1 pascal, la señal inmediatamente después del micrófono en nomenclatura Matlab será:

%Opciones:
%a) xe = (S/sqrt(2))*cos(2*pi*f1*t);
%b) xe = S*sqrt(2)*cos(2*pi*f1*t);----- esta
%c) Ninguna de las otras respuestas es correcta
%d) xe = S*cos(2*pi*f1*t);




% Pregunta:
% Calibramos un sistema para que su valor nominal coincida con 94 dB de presión sonora. 
% Si el headroom del sistema es de 24 dB, el valor obtenido en dBFS cuando la presión sonora es de 88 dB será:

% Opciones:
% a) 24  
% b) 18  
% c) -30  
% d) -18  
% e) -24  
% f) Ninguna de las otras respuestas es correcta  
% g) 30  

% Resolución:
% El nivel en dBFS (decibeles Full Scale) se calcula en relación con el nivel nominal y el headroom del sistema.

% 1. Nivel nominal: 94 dB SPL corresponde a 0 dBFS.
% 2. Headroom: El sistema tiene un headroom de 24 dB, lo que significa que su máximo es:
%    94 dB SPL + 24 dB = 118 dB SPL, que corresponde a 0 dBFS.
% 3. Cálculo de dBFS para 88 dB SPL:
%    - La diferencia con el nivel nominal es: 88 dB SPL - 94 dB SPL = -6 dB.
%    - Como 94 dB SPL equivale a 0 dBFS, bajar 6 dB significa:
%      Nivel en dBFS = -6 dBFS.

% Respuesta correcta:
% f) Ninguna de las otras respuestas es correcta.





% Pregunta:
% En vista de su nivel de presión sonora por octavas, la señal contenida en el archivo "ruido1.wav" es:

% Opciones:
% a) Ruido rosa  
% b) Ruido blanco  
% c) No se puede saber  

% Resolución:
% - El ruido blanco tiene una distribución de energía uniforme por frecuencia, es decir, su densidad espectral de potencia es constante en Hz.
% - El ruido rosa tiene una densidad espectral de potencia que disminuye en -3 dB por octava, lo que significa que su nivel de presión sonora se distribuye de manera diferente en el espectro.
% - Para determinar si el archivo contiene ruido rosa o blanco, es necesario analizar el nivel de presión sonora en función de la frecuencia.
% - Como la pregunta no proporciona datos sobre la distribución espectral, no es posible determinar la naturaleza del ruido.

% Respuesta correcta:
% c) No se puede saber.//blanco






%cual es la frecuencia central aproximada del sexto filtro del banco de filtros de un tercio de octava que se ha empleado en la practica
%NINGUNA


fvt = fvtool(auxFilterBankCoefficients);%fvtool(auxFilterBankCoefficients,"NFFT",2^16);
set(fvt,FrequencyScale=type)
zoom(fvt,[.01 24 -20 1])