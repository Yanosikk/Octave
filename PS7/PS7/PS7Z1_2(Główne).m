close all;
clear all;

M = 43;
fs = 1000;
N = 10000;
wnd = 0;
fg = 200;
fg_2 = 400;
fc = fg/fs;
fc_2 = fg_2/fs;

b_lpf = fir_sinc(fc, M, wnd);
b_lpf2 = fir_sinc(fc_2, M, wnd);
b_hpf = fir_inv(b_lpf2);
parallel_filter = fir_parallel(b_hpf, b_lpf);
series_filter = fir_series(fir_inv(b_hpf), fir_inv(b_lpf));
[mH_lpf, fiH_lpf, mHdB_lpf, f_lpf] = fir_freq_resp(b_lpf, M, fs);
[mH_hpf, fiH_hpf, mHdB_hpf, f_hpf] = fir_freq_resp(b_hpf, M, fs);
[mH_series, fiH_series, mHdB_series, f_series] = fir_freq_resp(series_filter, M, fs);
[mH_parallel, fiH_parallel, mHdB_parallel, f_parallel] = fir_freq_resp(parallel_filter, M, fs);

figure(1);
subplot(2, 1, 1);
plot(f_lpf, mHdB_lpf, "r");
title("Odpowiedź częstotliwościowa [dB] filtra dolnoprzepustowego");
ylabel("H(f)[dB]");
xlabel("Częstotliwość [Hz]");
grid on;
subplot(2, 1, 2);
plot(f_hpf, mHdB_hpf);
title("Odpowiedź częstotliwościowa [dB] filtra górnoprzepustowego");
ylabel("H(f)[dB]");
xlabel("Częstotliwość [Hz]");
grid on;
figure(2);
subplot(2, 1, 1);
plot(f_series, mHdB_series, "r");
title("Odpowiedź częstotliwościowa [dB] filtrów połączonych szeregowo");
ylabel("H(f)[dB]");
xlabel("Częstotliwość [Hz]");
grid on;
subplot(2, 1, 2);
plot(f_parallel, mHdB_parallel);
title("Odpowiedź częstotliwościowa [dB] filtrów połączonych równolegle");
ylabel("H(f)[dB]");
xlabel("Częstotliwość [Hz]");
grid on;



