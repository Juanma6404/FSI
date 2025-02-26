

N = 500; % número de elementos
step = 0.2; % distancia entre elementos
timeVector = 0:step:(N-1)*step;

noise = randn(N,1);

S1 = 15;
var1 = LocalMean(noise,S1);
S2 = 10;
var2 = LocalMean(noise,S2);

%figure
plot(timeVector,noise);shg;
xlabel('time [s]')
hold on % help hold si lo necesitas
plot(timeVector,var1)
plot(timeVector,var2)
legend('Original signal','mean, size S1','mean, size S2')