function [y, t] = fir_imp_resp(b, N, fs)
  t = gen_time(N, fs);
  delta = gen_delta(t);
  y = fir_filter(delta, b);
  endfunction
