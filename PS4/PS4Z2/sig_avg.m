function avg = sig_avg(domain, x)
%Całkowanie numeryczne
numeric_integral = trapz(domain, x);

%Dziedzina, czyli różnica pomiędzy ostatnim a pierwszym punktem
domain_size = domain(end) - domain(1);
avg = numeric_integral/domain_size;

endfunction
