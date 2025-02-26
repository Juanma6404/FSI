f1 = 100;
fs = 6e3;

A = 1;

num_segundos = 5;

% 't' está muestreado
t = 0:1/fs:num_segundos-1/fs; %----> debe ser un vector columna
t = t';

x_100Hz = A*sin(2*pi*f1*t);

figure;plot(t,x_100Hz,'o-');shg
%los valores de xlim salen de dividir los indices de los 3 periodos
%(indices de los valores que valen '1') y dividirlos entre la fs
xlim([0.0026666 0.022666])