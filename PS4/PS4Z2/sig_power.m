function p = sig_power(domain, x)
power_numeric_integral = trapz(domain, x.^2);
T = domain(end) - domain(1);
p = power_numeric_integral/T;
endfunction
