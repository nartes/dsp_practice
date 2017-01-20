% ch02/assessment_problem_43.m

x = sin(2 * pi * 0.01 * (0 : 100)) + 0.05 * randn(1, 101);
h = ones(1, 5);
y = conv(h, x);

printf('Ay - Ah Ax = %d - %d = %d\n', sum(y), sum(x) * sum(h), ...
       sum(y) - sum(x) * sum(h));
plot(0 : 100, x, 0 : (100 + 5 - 1), y);
legend('x', 'y'); xlabel('n'); ylabel('x, y');
