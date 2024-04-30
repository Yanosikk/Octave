function z = sig_conv(x, y)
Nx = length(x);
Ny = length(y);
z = zeros(1,Nx+Ny-1); #utworzenie pustej tablicy na wynik splotu
for n=1:Nx+Ny-1 # dla każdego elementu tablicy wynikowej
c=0; # zsumuj odpowiednie iloczyny probek sygnalow
for k=0:Ny-1
if ((n-k)>=0) && ((n-k)<Nx) # jesli pozwalaja na to indeksy probek
c = c + x(n-k+1)*y(k+1); # dodaj do c odpowiedni iloczyn
end
z(n) = c; # zapis wyniku w tablicy
end
end
