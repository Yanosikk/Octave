function [mH, fiH, mHdB, f] = fir_freq_resp(b, N, fs)
  f = gen_cfreq(N, fs); %generacja wektora częstotliwościowego, dla obustronnej transformacji fouriera
  x = fir_imp_resp(b, N, fs); %Odpowiedż impulsowa
  mH = sig_fft_N(x); %Obustronne widmo odpowiedzi impulsowej
  fiH = angle(mH); %Usunięcie zwinięcia fazowego
  mHdB =  20*log10(mH);
  endfunction
