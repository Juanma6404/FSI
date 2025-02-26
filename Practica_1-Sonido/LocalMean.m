function [meanVector_output] = LocalMean(noise,S)


N = length(noise);

meanVector_output = zeros(size(noise));
%meanVector_output = zeros(1,N-S);

for index = 1:N-S 
  meanVector_output(index) = mean(noise(index:1:index+S));
end

end