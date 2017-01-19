% ch02/assessment_problem_38.m

delta = @(n) (n == 0);
u = @(n) (n >= 0);

n = -20 : 20;
x1 = 5 * delta(n + 1) + n .^ 2 .* (u(n + 5) - u(n - 4)) + ...
     (10 * 0.5 .^ n) .* (u(n - 4) - u(n - 8));
subplot(311); stem(n, x1); xlabel('n'); ylabel('x1');

n = 0 : 20;
x2 = (0.8) .^ n .* cos(0.2 * pi * n + pi / 4);
subplot(312); stem(n, x2); xlabel('n'); ylabel('x2');

m = (0 : 4)';
x3 = sum((m + 1) .* (delta(n - m) - delta(n - 2 * m)), 1);
subplot(313); stem(n, x3); xlabel('n'); ylabel('x3');
