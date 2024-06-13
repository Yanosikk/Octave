function z = sig_conv(x,y)
Nx = length(x);
Ny = length(y);
z = zeros(1, Nx+Ny-1)
for n = 1:Nx+Ny-1
splot = 0;
for k = 1:Ny
if ((n-k+1)>=1) && ((n-k+1)<=Nx)
splot += x(n-k+1)*y(k)
endif
endfor
z(n) = splot
endfor
endfunction
