clear all;
close all;

N=20;
fs=100;

b = [0.3, 0.3, 0.3]

figure(1);
subplot(2, 1, 1);
[y_stp, t] = fir_step_resp(b, N, fs);
stem(t ,y_stp);
title("Odpowiedź skokowa");
xlabel("Czas, [s]");
ylabel("Amplituda");
subplot(2, 1, 2);
[y_imp, t] = fir_imp_resp(b, N, fs);
stem(t, y_imp);
title("Odpowiedź impulsowa");
xlabel("Czas, [s]");
ylabel("Amplituda")
N_res = 50;
figure(2);
subplot(3, 1, 1);
[mH, fiH, mHdB, f] = fir_freq_resp(b, N_res, fs);
plot(f, mHdB);
title("Odpowiedź ampitudowa w decybelach");
xlabel("Częstotliwość, [Hz]");
ylabel("H(f)[dB]")
subplot(3, 1, 2);
plot(f, mH);
title("Odpowiedź ampitudowa");
xlabel("Częstotliwość, [Hz]");
ylabel("H(f)")
subplot(3, 1, 3);
plot(f, fiH);
title("Odpowiedź fazowa z fazą rozwiniętą");
xlabel("Częstotliwość, [Hz]");
ylabel("Amplituda(Phi)");


