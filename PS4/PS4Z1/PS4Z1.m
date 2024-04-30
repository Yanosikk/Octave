close all;
clear all;
pkg load signal;
%Parametry
N=200;
fs=100;
A_sin = 1;
f_sin1 = 5;
f_sin2 = 7.5;
%Sygnały
time = gen_time(N, fs);
sin_1 = gen_sin(time, f_sin1, A_sin, 0);
sin_2 = gen_sin(time, f_sin2, A_sin, 0);
%Punkt 1. pokazanie liniowosci transformaty Fourier'a i pokazanie widm
sum_sin = sin_1 + sin_2;
x = sum_sin;
figure(1);
subplot(4, 1, 1);
plot(time, sin_1, time, sin_2);
title("Wejściowe sygnały sinusoidalne");
subplot(4,1,2);
plot(time, x);
title("Zsumowane sygnały sinusoidalne");
r_freq = gen_rfreq(N,fs);
fft = sig_rdft(4*sin_1 + 2*sin_2);
subplot(4, 1, 3);
stem(r_freq, abs(fft));
title("Homogenicznosc 1/2 [4*sin_1 + 2*sin_2]");
fft_sin_1 = sig_rdft(sin_1);
fft_sin_2 = sig_rdft(sin_2);
subplot(4, 1, 4);
stem(r_freq, abs(4*fft_sin_1 + 2*fft_sin_2));
title("Homogenicznosc 2/2 [4*FFT_(sin1) + 3*FFT_(sin2)]");
%Okienkowanie
hann_window = hann(N)';
hamming_window = hamming(N)';
blackman_window = blackman(N)';
figure(2);
subplot(3, 1, 1);
plot(time, sin_2, time, hann_window);
title("Okno Hanna")
subplot(3, 1, 2);
plot(time, sin_2, time, hamming_window);
title("Okno Hamminga");
subplot(3, 1, 3);
plot(time, sin_2, time, blackman_window);
title("Okno Blackmana");
%Brak wycieku widma
figure(3);
subplot(3, 1, 1);
stem(r_freq, abs(sig_rdft(sin_2)));
title("Brak wycieku widma");
%Maksymalny wyciek widma
time = gen_time(N, fs*2);
sin_2 = gen_sin(time, f_sin2, A_sin, 0);
r_freq2 = gen_rfreq(N, fs*2);
subplot(3, 1, 2);
stem(r_freq2, abs(sig_rdft(sin_2)));
title("Maksymalny wyciek widma");
%Okienkowanie
subplot(3,1,3);
stem(r_freq2, abs(sig_rdft(sin_2.*hann_window)));
title("Zastosowanie okna Hanna");








