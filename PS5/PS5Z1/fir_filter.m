function [y] = fir_filter(x, b)

N = length(x); %Długość sygnału wejściowego
M = length(b); %Długość filtru
y = zeros(1, M) %Wektor o długości M
  for n = 1:N %Na każdą otrzymaną próbkę sygnału wejściowego, nakładana jest filtracja, aby otrzymać próbkę sygnału wejściowego
   sum = 0
    for k = 1:M
      if n > k
      sum = sum + b(k) * x(n-(k))
      endif
    endfor
   y(n) = 1/M * sum
  endfor
endfunction

