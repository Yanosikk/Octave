clear all;
close all;
T = 0.1;
N = 20;
fs = N/T;

b = [1, 2, 3];

time = gen_time(N, fs);
x1 = gen_delta(time);
x2 = ones(1, N);

y1 = fir_filter(x1, b);
y2 = fir_filter(x2, b);

L1 = 1:length(y1);
L2 = 1:length(y2);

figure(1);
subplot(2, 1, 1);
stem(time, y1);
xlabel("time");
ylabel("H");
title("Delta Kroeneckera");
subplot(2, 1, 2);
stem(time, y2);
xlabel("time");
ylabel("H");
title("Skok jednostkowy");
