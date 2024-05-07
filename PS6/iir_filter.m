function y = iir_filter(b,a,x)
  N=length(x);
  y=zeros(1,N);

  for n = [0:length(x)-1]
    y1 = 0;
    for m = [0: length(b)-1]
      if n-m+1 >= 1
        y1 = y1 + b(m+1)* x(n-m+1);
      endif;
    endfor;
    for m = [1: length(a)-1]
      if n-m+1 >= 1
        y1 = y1 - a(m+1)* y(n-m+1);
      endif;
    endfor;
    y(n+1) = y1/a(1);
  endfor;

endfunction

