function time = gen_time(N, fs)
time = zeros(1, N);
for i = 1:N
time(i) = (i-1)/fs;
endfor
endfunction
