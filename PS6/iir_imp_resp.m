function [y,t]=iir_imp_resp(b,a,N,fs)
  for i = [0:N-1]
    if i == 0
      del(i+1) = 1;
    else
      del(i+1) = 0;
    endif
  endfor;
  y = iir_filter(b,a,del);
  t=gen_time(length(y),fs);
endfunction
