% ch02/tutorial_problem_7.m

% x[n] = delta[n]

n = (0:20);
x = (n == 0);
y = zeros(size(n));
y(1) = x(1);
for k = 1:20
  y(k+1) = k / (k + 1) * y(k) + x(k + 1);
endfor

subplot(211);
stem(n, y); xlabel('n'); ylabel('h[n]');

% x[n] = delta[n - 5]

n = (0:20);
x = ((n - 5) == 0);
y = zeros(size(n));
y(1) = x(1);
for k = 1:20
  y(k + 1) = k / (k + 1) * y(k) + x(k + 1);
endfor

subplot(212);
stem(n, y); xlabel('n'); ylabel('h[n - 5]');
