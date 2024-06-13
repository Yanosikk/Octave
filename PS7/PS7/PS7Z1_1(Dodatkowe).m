close all;
clear all;
N = 1000;
fs = 100;
M = 5;
fc = 0.1;
b1 = [1, 1, 1];
b2 = [1, 1, 1, 1, 1];
parallel = fir_parallel(b1, b2);
series = fir_series(b1, b2);
inv = fir_inv(sig_norm(b1));
fprintf("Współczynniki równoległego połączenia filtrów: \n");
disp(parallel);
fprintf("Współczynniki szeregowego połączenia filtrów: \n");
disp(series);
fprintf("Współczynniki filtra górnoprzepustowego: \n");
disp(inv);



