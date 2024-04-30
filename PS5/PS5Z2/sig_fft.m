function y = sig_fft(x)
  N = length(x);
  X = 1/N * fft(x);
  half_N = floor(N/2);
  y = zeros(1, N);
  for k=1:N
    if k <= half_N
      y(k) = X(half_N + k)
    else
      y(k) = X(k - half_N)
    endif
  endfor

endfunction
