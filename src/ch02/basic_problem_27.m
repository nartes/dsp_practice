% ch02/basic_problem_27.m

n = -20 : 40;
u = (n >= 0);
a = 1 / 4; b = 1 / 3;
x = u .* a .^ n;
h = u .* b .^ n;
y = conv(h, x);
nc = 2 * n(1) : 2 * n(end);
stem(nc, y); xlabel('n'); ylabel('y = h * x');
yf = [zeros(1, 1 : find(n == 0) - 1)];
l = find(nc == 0);
r = length(nc);

yf = [zeros(1, l - 1) manual_y(nc(l : r), a, b)];
printf("Error %d\n", sumsq(y - yf));

function [y] = manual_y(n, a, b)
  if (b < a)
    y = a .^ n .* (1 - (b / a) .^ (n + 1)) / (1 - b / a);
  else
    y = b .^ n .* (1 - (a / b) .^ (n + 1)) / (1 - a / b);
  endif
endfunction
