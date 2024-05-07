function [y,t]=iir_step_resp(b,a,N,fs)
  for i = [0:N-1]
    if i >= 1
      step(i+1) = 1;
    else
      step(i+1) = 0;
    endif
  endfor;
  y = iir_filter(b,a,step);
  t=gen_time(length(y),fs);
endfunction
