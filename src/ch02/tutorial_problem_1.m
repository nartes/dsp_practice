% ch02/tutorial_problem_1.m

n = (-20:40);

unit_smaple = (n == 0);

unit_step = (n >= 0);

x1 = (0.80) .^ n;

x2 = (0.9 * exp(1j * pi / 10)) .^ n;

x3 = 2 * cos(2 * pi * (0.3) .* n + pi / 3);

figure();
subplot(221); stem(n, unit_smaple); xlabel('n'); ylabel('\delta[n]');
subplot(222); stem(n, unit_step); xlabel('n'); ylabel('u[n]');
subplot(223); stem(n, x1); xlabel('n'); ylabel('x_1[n]');
subplot(224); stem(n, x3); xlabel('n'); ylabel('x_3[n]');

figure();
subplot(221); stem(n, abs(x2)); xlabel('n'); ylabel('|x_2[n]|');
subplot(222); stem(n, arg(x2)); xlabel('n'); ylabel('phase x_2[n]');
subplot(223); stem(n, real(x2)); xlabel('n'); ylabel('Real x_2[n]');
subplot(224); stem(n, imag(x2)); xlabel('n'); ylabel('Imag x_2[n]');
