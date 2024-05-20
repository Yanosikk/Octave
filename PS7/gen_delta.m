function signal = gen_delta(N)
signal = zeros(1, N);
mid = (N - 1) / 2 + 1;
signal(mid) = 1;
endfunction
