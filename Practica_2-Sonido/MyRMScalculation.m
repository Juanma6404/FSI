  function outputRMS = MyRMScalculation(signal);
  nelement=size(signal);
  signal1= signal.^2;   %%se le pone . para que eleve cada elemento
  add= sum(signal1,1);
  outputRMS = sqrt(add/nelement(1));