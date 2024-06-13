function y = sig_fft(x)
z = fft(x);
N = length(x);
k = floor(N/2);
for (n = 1:N)
if (n+k>N)
y(n) = z(n-k);
else
y(n) = z(n+k);
endif
endfor
y = abs(y)/(N/2);
endfunction
