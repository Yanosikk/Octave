function [b] = fir_sinc(fc, M, wnd)
for k=0:M-1
  if k == (M-1)/2
     if wnd == 0
       b(k+1) = 2*pi*fc;
     elseif wnd == 1
       b(k+1) = 2*pi*fc*(0.42 - 0.5*cos(2*pi*k/(M-1)) + 0.08*cos(4*pi*k/(M-1)));
     elseif wnd == 2
      b(k+1) = 2*pi*fc*(0.54 - 0.46*cos(2*pi*k/(M-1)));
     endif
  else
     if wnd == 0
       b(k+1) = (sin(2*pi*fc*(k-(M-1)/2))/(k-(M-1)/2));
     elseif wnd == 1
       b(k+1) = (sin(2*pi*fc*(k-(M-1)/2))/(k-(M-1)/2))*(0.42 - 0.5*cos(2*pi*k/(M-1)) + 0.08*cos(4*pi*k/(M-1)));
     elseif wnd == 2
      b(k+1) = (sin(2*pi*fc*(k-(M-1)/2))/(k-(M-1)/2))*(0.54 - 0.46*cos(2*pi*k/(M-1)));
     endif
  endif
endfor
sum=0;
for k=1:M
  sum += b(k);
endfor
for k=1:M
  b(k) = b(k)/sum;
endfor
endfunction

