function freq = gen_cfreq(N, fs)
freq = zeros(1, N);
for k = 1:N
freq(k) = (k-1-N/2)*fs/N;
endfor
endfunction
