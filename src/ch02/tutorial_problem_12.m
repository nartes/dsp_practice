% ch02/tutorial_problem_12.m

convmtx = @(x, L) toeplitz([x zeros(1, L - length(x))], ...
    zeros(1, L - length(x) + 1));

x1 = [1 2 3 4 5]; h1 = [-1 2 1];
x2 = [1 1 1 1 1 1]; h2 = [1 0.5 0.25 0.125];

N1 = length(x1); m1 = length(h1);
N2 = length(x2); m2 = length(h2);

y1 = convmtx(x1, N1 + m1 - 1) * h1';
y2 = convmtx(x2, N2 + m2 - 1) * h2';

subplot(231); stem((0:N1 - 1), x1);
subplot(232); stem((0:m1 - 1), h1);
subplot(233); stem((0:N1 + m1 - 2), y1);

subplot(234); stem((0:N2 - 1), x2);
subplot(235); stem((0:m2 - 1), h2);
subplot(236); stem((0:N2 + m2 - 2), y2);
