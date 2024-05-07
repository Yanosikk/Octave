close all
clear all

N=100;
fs=10;
b=[0.238, 0.238]
a=[1, -0.524]

[resp_imp,t_imp]=iir_imp_resp(b,a,N,fs);
[resp_step,t_step]=iir_step_resp(b,a,N,fs);
[mH,fiH, mHdB,f]=iir_freq_resp(b,a,N,fs);

figure(1);
subplot(2,1,1);
plot(t_imp,resp_imp);
title("Charakterystyka impulsowa");
ylabel("Amplituda");
xlabel("Czas[s]");

subplot(2,1,2);
plot(t_step,resp_step);
title("Charakterystyka skokowa");
ylabel("Amplituda");
xlabel("Czas[s]");

figure(2);
subplot(2,1,1);
plot(f,mH, "o");
ylabel("H");
xlabel("Częstotliwość[Hz]")
title("Charakterystyka amplitudowa");
subplot(2,1,2);
plot(f,fiH,"o");
ylabel("Phi")
xlabel("Częstotliwość[Hz]");
title("Charakterystyka fazowa")

figure(3);
subplot(1,1,1);
plot(f,mHdB, "o");
title("Charakterystyka amplitudowa [dB]");
ylabel("H[dB]");
xlabel("Częstotliwość[Hz]");

