clear all;
close all;

N = 100;
BW = 0.1;
fs = 10000;
fc = 0.2;
fg = 1000;
d = 3;


%FILTR LPF
[a, b] = iir_onepole_LPF(fc)
[mH,fiH, mHdB,f]=iir_freq_resp(b,a,N,fs);
figure(1);
subplot(3, 1, 1);
plot(f, mH, "o")
grid on;
title("Charakterystyka amplitudowa filtra LPF")
xlabel("Częstotliwość, [Hz]");
ylabel("H");
subplot(3, 1 ,2);
plot(f, fiH, "o")
grid on;
title("Charakterystyka fazowa filtra LPF")
ylabel("Phi");
xlabel("Częstotliwość, [Hz]");
subplot(3, 1, 3)
plot(f, mHdB, "o")
grid on;
title("Charakterystyka decybelowa filtra LPF")
ylabel("H[dB]");
xlabel("Częstotliwość, [Hz]");

%FILTR HPF
[b1, a1] = iir_onepole_HPF(fc)
[mH1, fiH1, mHdB1, f1] = iir_freq_resp(b1,a1,N,fs);
figure(2);
subplot(3, 1, 1);
plot(f1, mH1, "o")
grid on;
title("Charakterystyka amplitudowa filtra HPF")
xlabel("Częstotliwość, [Hz]");
ylabel("H");
subplot(3, 1 ,2);
plot(f1, fiH1, "o")
grid on;
title("Charakterystyka fazowa filtra HPF")
ylabel("Phi");
xlabel("Częstotliwość, [Hz]");
subplot(3, 1, 3)
plot(f1, mHdB1, "o")
grid on;
title("Charakterystyka decybelowa filtra HPF")
ylabel("H[dB]");
xlabel("Częstotliwość, [Hz]");

%FILTR LPF(d)
[a2, b2] = iir_onepole_LPF_tc(d)
[mH2, fiH2, mHdB2, f2] = iir_freq_resp(b2,a2,N,fs);
figure(3);
subplot(3, 1, 1);
plot(f2, mH2, "o")
grid on;
title("Charakterystyka amplitudowa filtra LPF(d)")
xlabel("Częstotliwość, [Hz]");
ylabel("H");
subplot(3, 1 ,2);
plot(f2, fiH2, "o")
grid on;
title("Charakterystyka fazowa filtra LPF(d)")
ylabel("Phi");
xlabel("Częstotliwość, [Hz]");
subplot(3, 1, 3);
plot(f2, mHdB2, "o")
grid on;
title("Charakterystyka decybelowa filtra LPF(d)")
ylabel("H[dB]");
xlabel("Częstotliwość, [Hz]");

##%FILTR BF
##[a3, b3] = iir_narrow_BF(fc, BW)
##[mH3, fiH3, mHdB3, f3] = iir_freq_resp(b3,a3,N,fs);
##figure(4);
##subplot(3, 1, 1);
##plot(f3, mH3, "o")
##grid on;
##title("Charakterystyka amplitudowa filtra BF")
##xlabel("Częstotliwość, [Hz]");
##ylabel("H");
##subplot(3, 1 ,2);
##plot(f3, fiH3, "o")
##grid on;
##title("Charakterystyka fazowa filtra BF")
##ylabel("Phi");
##xlabel("Częstotliwość, [Hz]");
##subplot(3, 1, 3)
##plot(f3, mHdB3, "o")
##grid on;
##title("Charakterystyka decybelowa filtra BF")
##ylabel("H[dB]");
##xlabel("Częstotliwość, [Hz]");
##
##%FILTR NF
##[a4, b4] = iir_narrow_NF(fc, BW)
##[mH4, fiH4, mHdB4, f4] = iir_freq_resp(b4,a4,N,fs);
##figure(5);
##subplot(3, 1, 1);
##plot(f3, mH4, "o")
##grid on;
##title("Charakterystyka amplitudowa filtra NF")
##xlabel("Częstotliwość, [Hz]");
##ylabel("H");
##subplot(3, 1 ,2);
##plot(f4, fiH4, "o")
##grid on;
##title("Charakterystyka fazowa filtra NF")
##ylabel("Phi");
##xlabel("Częstotliwość, [Hz]");
##subplot(3, 1, 3)
##plot(f4, mHdB4, "o")
##grid on;
##title("Charakterystyka decybelowa filtra NF")
##ylabel("H[dB]");
##xlabel("Częstotliwość, [Hz]");


