function outputRMS = MyRMScalculation(signal)
    % RMS calculation
    % Use the 'sum' command
    % Do NOT use a 'for' loop
    N = length(signal);
    outputRMS = sqrt(sum(signal.^2) / N);
end

