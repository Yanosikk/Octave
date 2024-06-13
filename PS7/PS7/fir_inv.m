function b = fir_inv(b1)
N = length(b1);
signal = zeros(N);
signal(1) = 1;
for n=0:N-1
if n==((N-1)/2)
b(n+1)= 1 - b1(n+1);
else
b(n+1)= - b1(n+1);
endif
endfor
endfunction
