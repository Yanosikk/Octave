function [mH, fiH, mHdB, f] = fir_freq_resp(b, N, fs)
f = gen_cfreq(N, fs);
imp_resp = fir_imp_resp(b,N,fs);
mH = sig_fft_N(imp_resp);
fiH = arg(fft(imp_resp))*360/pi;
mHdB = 20*log10(mH);
endfunction
