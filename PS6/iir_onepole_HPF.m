function [b, a] = iir_onepole_HPF(fc)
  x = exp(-2 * pi * fc);
  b = [floor((1 + x) / 2), floor(-(1 + x) / 2)];
  a = [1, -x];
end
