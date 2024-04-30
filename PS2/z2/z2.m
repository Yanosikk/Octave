N = 100 %liczba próbek
fs = 3000 %częstotliwośc próbkowania
fsin = 1000 %częstotliwosc sygnalu sinusoidalnego
A = 1 %amplituda
fi = pi/2 %przesunięcie fazowe
tr = 0.5 %czas narostu
tf = 0.5 %czas opadania
Nd = 50 %ilośc próbek o opoznienie sygnalu
u = 0.9 %srodek impulsu gaussa, najwieksza wartosc
s = 0.3 %odchylenie standardowe

time = gen_time(N, fs); # generacja tablicy z czasami próbek
x1 = gen_sin(time, fsin, A, fi) + gen_sin(time, 2*fsin, 2*A, fi); # dodanie sygnałów
x2 = gen_sin(time, fsin, A, fi) .* gen_triangle(time, A, tr, tf); %mnozenie
x3 = gen_sin(time, fsin, A, fi) + 5; # dodawanie składowej stałej
x4 = gen_sin(time, fsin, 5*A, fi); %powiekszona amplituda
x5 = sig_delay_N(x1, Nd); %przesuwanie sygnalu o okreslona liczbe probek
x6 = sig_delay_N(x3, Nd)+ sig_delay_N(x3, 2*Nd); #sumowanie sygnalow o roznych opoznieniach

%obliczanie parametrów
mean_value = mean(x1); %srednia
rms_value = rms(x2);   %skuteczna
max_value = max(x3);   %
min_value = min(x4);   %min



#wykreslenie wygenerowanych sygnalow

figure(1);
plot(time, x1) %dodawanie
figure(2);
plot(time, x2) %mnozenie
figure(3);
plot(time, x3) %stala skladow
figure(4);
plot(time, x4) %zmiana amplitudy sygnalu
figure(5);
plot(time, x5) %przesuwanie sygnalow o wartosc
figure(6);
plot(time, x6) %sumowanie sygnalow przesunietych o rozne opoznienia

%wyswietlenie dodatkowych parametrów

fprintf('Wartość średnia: %f\n', mean_value);
fprintf('Wartość skuteczna: %f\n', rms_value);
fprintf('Maksymalna wartość: %f\n', max_value);
fprintf('Minimalna wartość: %f\n', min_value);




