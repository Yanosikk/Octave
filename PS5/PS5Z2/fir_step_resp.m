function [y, t] = fir_step_resp(b, N, fs)
  t = gen_time(N, fs);
  stp = ones(1, N);
  y = fir_filter(stp, b);
  endfunction
