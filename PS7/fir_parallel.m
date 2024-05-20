function b = fir_parallel(b1, b2)
l1 = length(b1);
l2 = length(b2);
if l1 > l2
buffer = (l1 - l2) / 2;
b2_buffered = [zeros(1, floor(buffer)), b2, zeros(1, ceil(buffer))];
b1_buffered = b1;
elseif l2 > l1
buffer = (l2 - l1) / 2;
b1_buffered = [zeros(1, floor(buffer)), b1, zeros(1, ceil(buffer))];
b2_buffered = b2;
else
b1_buffered = b1;
b2_buffered = b2;
endif
b = b1_buffered + b2_buffered;
endfunction
