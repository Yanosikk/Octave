function [y, t] = fir_imp_resp(b, N, fs)
x = zeros(1, N);
t = gen_time(N, fs);
for k = 1:N
if (t(k) == 0)
x(k) = 1;
endif
endfor
y = fir_filter(x, b);
endfunction
