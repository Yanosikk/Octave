close all;
clear all;
[x, fs] = audioread("crazy_eyes.wav");
M = 11;
wnd = 0;
fg = 200;
fg_2 = 400;
fc = fg/fs;
fc_2 = fg_2/fs

b_lpf = fir_sinc(fc, M, wnd);
b_lpf2 = fir_sinc(fc_2, M, wnd);
b_hpf = fir_inv(b_lpf2);
parallel_filter = fir_parallel(b_lpf, b_hpf);
series_filter = fir_series(fir_inv(b_lpf), fir_inv(b_hpf));
[mH_lpf, fiH_lpf, mHdB_lpf, f_lpf] = fir_freq_resp(b_lpf, M, fs);
[mH_hpf, fiH_hpf, mHdB_hpf, f_hpf] = fir_freq_resp(b_hpf, M, fs);
[mH_series, fiH_series, mHdB_series, f_series] = fir_freq_resp(series_filter, M, fs);
[mH_parallel, fiH_parallel, mHdB_parallel, f_parallel] = fir_freq_resp(parallel_filter, M, fs);

filter_lpf = fir_filter(x, b_lpf);
filter_hpf = fir_filter(x, b_hpf);
filter_series = fir_filter(x, series_filter);
filter_parallel = fir_filter(x, parallel_filter);

player_lpf = audioplayer(filter_lpf, fs);
player_hpf = audioplayer(filter_hpf, fs);
player_parallel = audioplayer(filter_parallel, fs);
player_series = audioplayer(filter_series, fs);
player = audioplayer(x, fs);
playblocking(player);
playblocking(player_lpf);
playblocking(player_hpf);
playblocking(player_parallel);
playblocking(player_series);


figure(1)
subplot(3,1,1);
plot(x, "r");
grid on;
title("Dźwięk przed nałożeniem filtra");
subplot(3,1,2);
plot(filter_lpf, "g");
grid on;
title("Dźwięk po filtracji filtrem dolnoprzepustowym");
subplot(3,1,3);
plot(filter_hpf);
grid on;
title("Dźwięk po filtracji filtrem górnoprzepustowym");
figure(2);
subplot(3,1,1);
plot(x, "r");
grid on;
title("Dźwięk przed nałożeniem filtra")
subplot(3,1,2);
plot(filter_parallel, "g");
grid on;
title("Dźwięk po filtracji filtrami połączonymi równolegle");
subplot(3,1,3);
plot(filter_series);
grid on;
title("Dźwięk po filtracji filtrami połaczonymi szeregowo");
