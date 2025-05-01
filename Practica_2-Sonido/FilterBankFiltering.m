function filteredMatrix = FilterBankFiltering(x, filterBankCoeff, noGroupDelay)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILTRADO DE UNA SE�AL POR UN BANCO DE FILTROS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [Y num_filtros]= Filtrado_Octavas(x, Hd)
%Entradas:
%       x : se�al a filtrar
%       filterBankCoeff: objecto de audio que contiene los coeficientes de
%           los filtros. Obtenido usando algo as� como, por ejemplo:
%               filterBankCoeff = ...
%                   octaveFilterBank('1/3 octave','ReferenceFrequency',1e3,'SampleRate',48e3,'FilterOrder',6);
%       noGroupDelay:   1 (retardo de grupo compensado en las se�ales de cada
%                       banda)
%                       0: sin compensar
% Salidas:
%       filteredMatrix: matriz con una columna por cada se�al paso banda.


[B,A] = coeffs(filterBankCoeff);
ss=size(B);
num_filtros=ss(3);

filteredMatrix = zeros(length(x), num_filtros);

% Filter the signal in num_filtros signals
for channelN = 1:num_filtros
    filteredMatrix(:,channelN) = filter(B(1,:,channelN),A(1,:,channelN),x);
end

% Way to compensate for the group delay between channels
if(noGroupDelay == 1)

    [N,numFilters,numChannels] = size(filteredMatrix);
    groupDelay = round(getGroupDelays(filterBankCoeff)); % round for simplicity
    
    audioPadded = [];
    audioPadded = [filteredMatrix;zeros(max(groupDelay),numFilters,numChannels)];
    
    filteredMatrix = [];
    for i = 1:numFilters
        filteredMatrix(:,i,:) = audioPadded(groupDelay(i)+1:N+groupDelay(i),i,:);
    end

end



value_dBFS_max = 0;
headroom = 15; % dB
value_dBFS_nom = value_dBFS_max - headroom;  % dBFS
value_SPL_calibr = 94;  % dBSPL
value_dBFS = 23;  % dBFS
value_SPL = value_SPL_calibr + (value_dBFS - value_dBFS_nom)  % dBSPL
disp(['Measured SPL: ' num2str(value_SPL)  ' dBSPL']);

%value_dBFS=value_SPL-value_SPL_calibr+value_dBFS_nom;
%disp(['Measured dBFS: ' num2str(value_dBFS)  ' dBFS']);



%Calibramos un sistema para que su valor nominal sea de 94db de presion sonora

%headroom de 15db

%valor en dbfs si la presion es de 86db