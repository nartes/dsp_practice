% ch02/assessment_problem_39.m

n = -50 : 50;
x = ifelse(n >= 0 & n <= 10, n, 0);

plot(n, 2 * (x - 4), 'og', n, 3 * (x - 5), 'xb', ...
     n, 3 - x, '+r');
legend('2x[n - 4]', '3x[n - 5]', 'x[3 - n]');
