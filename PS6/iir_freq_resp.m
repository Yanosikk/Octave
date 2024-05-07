function [mH, fiH, mHdB, f] = iir_freq_resp(b, a, N, fs)

f = gen_cfreq(N,fs)
[H, w] = freqz(b, a, f, fs);
mH = abs(H);
fiH = unwrap(angle(H));
mHdB = 20*log10(mH);

end
