function freq = gen_cfreq(N, fs)
  freq = zeros(1, N);

  i = 1;
  int_N = floor(N/2);

  for k=-int_N:int_N-1;

    if k < 0
      fk =(fs*(k+int_N))/N;
    elseif k > 0
      fk =(fs*(k-int_N))/N;
    else
      fk = 0
    endif
    freq(i++) = fk;

  endfor
endfunction
