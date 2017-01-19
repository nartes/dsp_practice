% ch02/basic_problem_33.m

n = (-50 : 50);
u = @(n) n >= 0;

x = 10 * (u(n + 10) - u(n - 20));
y = filter([1 -1], 1, x);
subplot(231); stem(n, x); xlabel('n'); ylabel('xa[n]');
subplot(234); stem(n, y); xlabel('n'); ylabel('ya[n]');

x = n .* (u(n) - u(n - 10)) + (20 - n) .* (u(n - 10) - u(n - 20));
y = filter([1 -1], 1, x);
subplot(232); stem(n, x); xlabel('n'); ylabel('xb[n]');
subplot(235); stem(n, y); xlabel('n'); ylabel('yb[n]');

x = cos(0.2 * pi * n - pi / 2) .* (u(n) - u(n - 40));
y = filter([1 -1], 1, x);
subplot(233); stem(n, x); xlabel('n'); ylabel('xb[n]');
subplot(236); stem(n, y); xlabel('n'); ylabel('yb[n]');
