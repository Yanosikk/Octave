function b = fir_inv(b1)
M = length(b1);
if mod(M, 2) == 0
error('It is demanded to give an odd number of coefficients');
endif
delta = gen_delta(M);
b = zeros(1, M);
for k = 1:M
b(k) = delta(k) - b1(k);
endfor
endfunction
