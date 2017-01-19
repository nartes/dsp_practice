% ch02/basic_problem_32.m

a = [1 -1.15 1.5 -0.7 0.25];
b = [0.18 0.1 0.3 0.1 0.18];
n = (0 : 59);
h = filter(a, b, n == 0);
yu = filter(a, b, n >= 0);
subplot(211); stem(n, h); xlabel('n'); ylabel('h[n]');
subplot(212); stem(n, yu); xlabel('n'); ylabel('yu[n]');
