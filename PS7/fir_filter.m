function [y] = fir_filter(x, b)
M = length(b);
N = length(x);
for n=1:N
c = 0;
for k=1:M
if (n - k > 0)
c = c + (b(k) * x(n - k));
endif
endfor
y(n) = 1/M * c;
endfor
endfunction
