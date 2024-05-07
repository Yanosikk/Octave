clear all;
close all;


N = 1000;
BW = 0.5;
fs = 1000;
fc = 0.4;




%FILTR BF
[b, a] = iir_narrow_BF(fc, BW)
[mH, fiH, mHdB, f] = iir_freq_resp(b,a,N,fs);
figure(1);
subplot(3, 1, 1);
plot(f, mH, "o")
grid on;
title("Charakterystyka amplitudowa filtra BF")
xlabel("Częstotliwość, [Hz]");
ylabel("H");
subplot(3, 1 ,2);
plot(f, fiH, "o")
grid on;
title("Charakterystyka fazowa filtra BF")
ylabel("Phi");
xlabel("Częstotliwość, [Hz]");
subplot(3, 1, 3)
plot(f, mHdB, "o")
grid on;
title("Charakterystyka decybelowa filtra BF")
ylabel("H[dB]");
xlabel("Częstotliwość, [Hz]");

##%FILTR NF
##[a, b] = iir_narrow_NF(fc, BW)
##[mH, fiH, mHdB, f] = iir_freq_resp(b ,a, N, fs);
##figure(2);
##subplot(3, 1, 1);
##plot(f, mH, "o")
##grid on;
##title("Charakterystyka amplitudowa filtra NF")
##xlabel("Częstotliwość, [Hz]");
##ylabel("H");
##subplot(3, 1 ,2);
##plot(f, fiH, "o")
##grid on;
##title("Charakterystyka fazowa filtra NF")
##ylabel("Phi");
##xlabel("Częstotliwość, [Hz]");
##subplot(3, 1, 3)
##plot(f, mHdB, "o")
##grid on;
##title("Charakterystyka decybelowa filtra NF")
##ylabel("H[dB]");
##xlabel("Częstotliwość, [Hz]");
