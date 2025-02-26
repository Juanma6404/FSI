function [outputArg1,outputArg2] = FrameProcessing(signal,Nframe,Noverlap)

% Length of signal to be processed
Nsignal = length(signal);
% Processed signal buffer
processedSignal = [];
% Number of frames to be processed (rough estimation)
totalNframes = floor(Nsignal/Nframe);

for frameNumber = 1:totalNframes
    % Frame starts here
    frameBegin = (frameNumber * Nframe) - (Nframe-1);
    % Frame ends here
    frameEnd = (frameNumber * Nframe);
    % Signal contained in frame
    frameSignal = signal(frameBegin:frameEnd);
    disp(['Frame number ' num2str(frameNumber) '.....   ' num2str(frameSignal')]);
end


outputArg1 = 1;
outputArg2 = 1;


end