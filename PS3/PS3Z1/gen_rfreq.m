function freq = gen_rfreq(N, fs)
freq = zeros(1, floor(N/2)+1);
for k = 0:floor(N/2)
freq(k+1) = k*fs/N;
endfor
endfunction
