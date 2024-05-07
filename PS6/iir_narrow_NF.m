##function [b, a] = iir_narrow_NF(fc, BW)
##  R = 1 - 3 * BW;
##  K = (1 - 2 * R * cos(2 * pi * fc) + R^2) / (2 - 2 * cos(2 * pi * fc));
##  b = [K, -2 * K * cos(2 * pi * fc), K];
##  a = [1, -2 * R * cos(2 * pi * fc), R^2];
##end
function [b, a] = iir_narrow_NF(fc, BW)

  f = fc;
  R = 1 - 3 * BW;
  K = (1 - 2 * R * cos(2 * pi * fc) + R^2) / (2 - 2 * cos(2 * pi * fc))

  b0 = K;
  b1 = -2 * cos(2 * pi * f)
  b2 = K;
  a0 = 1;
  a1 = -2*R*cos(2*pi*f);
  a2 = R^2;

  b = [b0, b1, b2];
  a = [a0, a1, a2];
