function [b, a] = iir_onepole_LPF(fc)
  x = exp(-2 * pi * fc);
  b = [1 - x];
  a = [1, -x];
end
