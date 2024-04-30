clear all
close all
pkg load signal;
%Parametry
N = 1000;
fs = 1000;
f = 30;
A = 1;
pkg load signal;
%Sygnały
domain = gen_time(N, fs);
sin = gen_sin(domain, f, A, 0);
%Wartości
rms = sig_rms(domain, sin);
avg =  sig_avg(domain, sin);
pwr = sig_power(domain, sin);
%Wykres
figure(1);
subplot(1, 1, 1);
plot(domain, sin);
title("Sygnał sinusoidalny (wejściowy)");
%Wyświetlanie wartości
disp("Wartość średnia");
disp(avg);
disp("Wartość mocy średniej sygnału");
disp(pwr);
disp("Wartość skuteczna sygnału");
disp(rms);


