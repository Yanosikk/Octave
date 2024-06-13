function [unw]=spec_uarg(y)
a = 0;
unw(1) = y(1);
N=length(y);
for i=[2:N]
x = y(i)-a*2*pi;
if x >= unw(i-1)
a = a + 1;
x = x-2*pi;
endif
unw(i) = x;
endfor;
for i=[1:N]
unw(i) = unw(i) + a*pi;
endfor
endfunction
