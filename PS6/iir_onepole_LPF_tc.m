function [b, a] = iir_onepole_LPF_tc(d)
  x = exp(-1 / d);
  b = [1 - x];
  a = [1, -x];
end
