function y = sig_fft_N(x)
z = fft(x);
N = length(z);
y = zeros(1, N);
k = floor(N/2);
for n = 1: N
if (n+k<=N)
y(n) = z(n+k);
else
y(n) = z(n-k);
endif
endfor
endfunction
