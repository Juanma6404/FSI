function voltage_3 = MyVoltage3calculation(pressureRMS, sensitivity_V_Pa, G_dB);

  voltage_2 = pressureRMS * sensitivity_V_Pa;
  voltage_2_dB = 20 * log10(voltage_2);
  voltage_3_dB = voltage_2_dB + G_dB;
  voltage_3 = 10^(voltage_3_dB/20);


  