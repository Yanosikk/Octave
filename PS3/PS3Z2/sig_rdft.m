function y=sig_rdft(x)
N=length(x);
y=zeros(1,floor(N/2)+1); %indeksowanie oraz problem z nieparzystymi
for k=0:floor(N/2)
Tr=0;
Ti=0;
for n=0:N-1
  if((k==0)&&(k==floor(N/2))) %pierwszy warunek
Tr+=1*x(n+1)*cos(2*pi*k*n/N)/N; %czesc rzeczywista + problem z indeksowaniem
Ti+=-1*x(n+1)*sin(2*pi*k*n/N)/N; %czesc urojona + problem z indeksowaniem
  else %drugi warunek
Tr+=2*x(n+1)*cos(2*pi*k*n/N)/N; %czesc rzeczywista + problem z indeksowaniem
Ti+=-2*x(n+1)*sin(2*pi*k*n/N)/N; %czesc urojona + problem z indeksowaniem
endif
endfor
y(k+1) = Tr + 1i * Ti; %indeksowanie
endfor
endfunction
