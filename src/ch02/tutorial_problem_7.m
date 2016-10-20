% ch02/tutorial_problem_7.m

% Part1

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

% Part2

n = (0:20);
x1 = (n == 0); % delta[n]
x2 = ((n - 5) == 0); % delta[n - 5]

y1 = zeros(size(x1));
y2 = zeros(size(x2));

y1(1) = x1(1);
y2(1) = x2(1);

for k = 1:20
  y1(k + 1) = 0.9 * y1(k) + x1(k + 1);
  y2(k + 1) = 0.9 * y2(k) + x2(k + 1);
endfor

figure();
subplot(211); stem(n, y1); xlabel('n'); ylabel('h[n]');
subplot(212); stem(n, y2); xlabel('n'); ylabel('h[n - 5]');
