function rms = sig_rms(domain, x)
if iscolumn(x)
  x = x'; %Transpozycja wektora
endif
power_x2 = x .^ 2;
square_value = trapz(domain, power_x2) / (domain(end) - domain(1));
rms = sqrt(square_value);
endfunction
