function [y] = fir_filter(x, b)
Nx = length(x);
Nb = length(b);
y = zeros(1, Nx);
for (n = 0:Nx)
for (k = 0:Nb-1)
if (k < n)
y(n) += b(k+1) * x(n-k);
endif
endfor
endfor
endfunction
