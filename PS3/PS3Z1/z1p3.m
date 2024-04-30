N = 6; %Liczba probek
fs = 1000; %Czestotliwosc probkowania
x1 = gen_rfreq(N, fs); %Wywolanie funkcji rfreq
x2 = gen_cfreq(N, fs); %Wywołanie funkcji cfreq
%Graficzne przedstawienie wynikow:
figure(1);
subplot(2, 1 ,1);
plot(x1,".")
title('Połówkowa częstotliwość');
xlabel('Indeks prążka, k');
ylabel('Częstotliwość, fk[Hz]');
grid on;
figure(1);
subplot(2, 1, 2);
plot(x2, ".")
title('Pełna częstotliwość');
xlabel('Indeks prążka, k');
ylabel('Częstotliwość, fk[Hz]');
grid on;
