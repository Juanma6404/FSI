function processedSignal = FrameRMScalculation(signal,Nframe, Noverlap)
    % Length of signal to be processed
    Nsignal = length(signal);
    % Processed signal buffer
    processedSignal = [];
    % Number of frames to be processed (rough estimation)
    totalNframes = floor((Nsignal - Nframe) / (Nframe - Noverlap)) + 1;
    
    % Iterate all frames
    for frameNumber = 1:totalNframes
        % Frame starts here
        frameBegin = (frameNumber - 1) * (Nframe - Noverlap) + 1;
        % Frame ends here
        frameEnd = frameBegin + Nframe - 1;
        % Signal contained in frame
        frameSignal = signal(frameBegin:frameEnd);
        %disp(['Frame number ' num2str(frameNumber) '.....   ' num2str(frameSignal')])
        % Here comes the frame processing
        processedFrame = MyRMScalculation(frameSignal);        
        % Processed frame is added to the processed signal buffer
        processedSignal = [processedSignal processedFrame];
    end
end