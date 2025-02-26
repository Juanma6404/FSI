f1 = 1000;
fs = 6e3;

A = 1;

num_segundos = 1;

% 't' está muestreado
t = 0:1/fs:num_segundos-1/fs; %----> debe ser un vector columna
t = t';

x_1000Hz = A*sin(2*pi*f1*t);

%indices = find(x_1000Hz == 0.866025);
%indices = indices(1:6);

figure;plot(t,x_1000Hz,'o-');shg
%los valores de xlim salen de dividir los indices de los 3 periodos
%(indices de los valores que valen '1') y dividirlos entre la fs
xlim([indices(1) indices(6)])