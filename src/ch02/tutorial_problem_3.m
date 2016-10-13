% ch02/tutorial_problem_3.m

x = [-1 0 1 2 3 4 4 4 4 4];

figure();
subplot(221); stem(x); xlabel('n'); ylabel('x[n]');
subplot(222); stem(flip(x)); xlabel('n'); ylabel('x[-n]');
subplot(223); stem(shift(x, 3)); xlabel('n'); ylabel('x[n - 3]');
subplot(224); stem(shift(x, -2)); xlabel('n'); ylabel('x[n + 2]');
