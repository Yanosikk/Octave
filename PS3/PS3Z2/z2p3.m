close all
clear all
% Parametry
fs = 200;
T = 1;
N = fs * T;
% Generowanie
time = gen_time(N, fs);


% Sygnał sinusoidalny
fsin = 10;
A = 10;
fi = 0;
x = gen_sin(time, fsin, A, fi);

% Jednostronne DFT
y = sig_rdft(x);

% Rysowanie sygnału
figure(1);
subplot(2, 1, 1);
plot(time, x);
title('Sygnał sinusoidalny');
xlabel('Czas [s]');
ylabel('Amplituda');

% Rysowanie widma
xf = gen_rfreq(N, fs)
figure(1);
subplot(2, 1, 2);
stem(xf, abs(y));
title('Widmo sygnału');
xlabel('Częstotliwość [Hz]');
ylabel('Amplituda');




