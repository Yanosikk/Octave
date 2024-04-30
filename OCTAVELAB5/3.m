data = csvread('wig20.csv');
y = data(2:end, 5);
x = [1:251];

p = polyfit(x, y, 2);
q = polyval(p, x);
plot(x, y, 'k;data;', x, q, 'r;approximation;')
grid on;

