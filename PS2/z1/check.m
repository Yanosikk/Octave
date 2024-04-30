N = 1000 %liczba próbek
fs = 1000 %częstotliwośc próbkowania
fsin = 1 %częstotliwosc sygnalu sinusoidalnego
A = 1 %amplituda
fi = 0 %przesunięcie fazowe
Nd = 50 %ilośc próbek o opoznienie sygnalu

time = gen_time(N, fs); # generacja tablicy z czasami próbek
x1 = gen_sin(time, fsin, A, fi); # generacja przebiegu sinusoidalnego
x3 = gen_delta(time); # generacja delty Kroeneckera
x3d = sig_delay_N(x3, Nd); # opóźniona delta Kroeneckera
A=1
tr=0.5
tf=0.5
x5 = gen_triangle(time, A, tr, tf);
#wykreslenie wygenerowanych sygnalow
figure(1);
plot(time, x1); # sinus i trójkąt na rysunku 1
figure(2);
plot(time, x3, time, x3d); # ilustracja przesunięcia delty Kroeneckera
figure(4);
plot(time, x5)
u = 0.5 %srodek impulsu gaussa, najwieksza wartosc
s = 0.2 %odchylenie standardowe
x6=gen_gauss(time, u, s);
figure(3);
plot(time, x6)
