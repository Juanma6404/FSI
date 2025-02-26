function FrameProcessing_overlap(signal,Nframe,Noverlap)

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
    disp(['Frame number ' num2str(frameNumber) '.....   ' num2str(frameSignal')]);
end

end