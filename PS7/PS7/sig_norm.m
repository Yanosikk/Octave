function b_norm = sig_norm(b)
M = length(b);
for k=1:M
c = 0;
for i=1:M-1
c = c + b(i);
endfor
b_norm(k) = b(k)/c;
endfor
end
