%Obustronne
function freq = gen_cfreq(N, fs)
freq = zeros(1, N);
for k = 0:N-1
freq(k+1) = (k-floor(N/2))*fs/N; %Wycentrowanie widma w k = 0
endfor
endfunction
