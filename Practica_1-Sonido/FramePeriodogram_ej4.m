function [processedSignal,processedMatrix] = FramePeriodogram_ej4(signal,Nframe, Noverlap, windowType,f_s)

% Length of signal to be processed
Nsignal = length(signal);
% Processed signal buffer
processedSignal = [];
% Number of frames to be processed (rough estimation)
totalNframes = 1 + floor((Nsignal-Nframe)/(Nframe-Noverlap));

for frameNumber = 1:totalNframes
    
    if frameNumber == 1
        frameBegin = 1;
        frameEnd = Nframe;
    else
        frameBegin = (frameEnd + 1) - Noverlap;
        frameEnd = frameBegin + (Nframe - 1);
    end
    frameSignal = signal(frameBegin:frameEnd);    
    %disp(['Frame number ' num2str(frameNumber) '.....   ' num2str(frameSignal')]);

    % Here comes the frame processing
    processedFrame = MyPeriodogramByFrames(frameSignal,Nframe,f_s,windowType);
    
    disp(['Frame number ' num2str(frameNumber) '.....   ' num2str(processedFrame')]);

    % Para concatenar verticalmente (en columna)
    processedSignal = [processedSignal, processedFrame]; 
end

%ESPECTROGRAMA
processedMatrix = processedSignal;

% Welch's method
%processedSignal = sum(processedSignal,2); 
processedSignal = sum(processedSignal, 2) / size(processedSignal, 2);


end