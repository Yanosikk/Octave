##function [b, a] = iir_narrow_BF(fc, BW)
##  R = 1 - 3 * BW;
##  K = (1 - 2 * R * cos(2 * pi * fc) + R^2) / (2 - 2 * cos(2 * pi * fc));
##  b = [1 - K, 2 * (K - R) * cos(2 * pi * fc), R^2 - K];
##  a = [1, -2 * R * cos(2 * pi * fc), R^2];
##
##end
function [b, a] = iir_narrow_BF(fc, BW)

  f = fc;
  R = 1 - 3*BW;
  K = (1 - 2*R*cos(2*pi*f));

  b0 = 1 - K;
  b1 = 2*(K - R)*cos(2*pi*f);
  b2 = R^2 - K;

  a0 = 1;
  a1 = -2*R*cos(2*pi*f);
  a2 = R^2;

  b = [b0, b1, b2];
  a = [a0, a1, a2];

endfunction
