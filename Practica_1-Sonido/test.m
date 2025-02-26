% Parámetros de la señal
f1 = 100; % Frecuencia fundamental en Hz
A = 1; % Amplitud
fs = 6000; % Frecuencia de muestreo en Hz
T = 5; % Duración de la señal en segundos

% Crear el vector de tiempos
t = (0:1/fs:T-1/fs)'; % Vector columna de tiempos

% Generar la señal sinusoidal
x_100Hz = A * sin(2 * pi * f1 * t);

% Representar la señal generada
figure;
plot(t, x_100Hz, 'o-');
xlabel('Tiempo (s)');
ylabel('Amplitud');
title('Señal Sinusoidal de 100 Hz');
grid on;