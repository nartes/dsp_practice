% ch02/basic_problem_25.m

N = 60; M = 50;
n = (0 : M - 1);
y = (1 + n) .* n / 2;
n = (M : N - 1);
y = [y ((M - 1) * M / 2 * ones(1, length(n)))];
n = (N : M + N - 2);
y = [y ((n - N + M) .* (M - n + N - 1) / 2)];

x = ones(1, N);
n = (0 : M - 1);
h = n .* ones(1, M);
y2 = conv(h, x);
printf("|y|=%d, |y2|=%d, ||y - y2||=%d\n",
       length(y), length(y2), norm(y - y2));
