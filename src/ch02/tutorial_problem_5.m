% ch02/tutorial_problem_5.m

figure();

n1 = (-20:20);
x1 = cos((0.1) .* n1 - pi / 5);

n3 = (-40:40);
x3 = cos((0.1) .* n3 - pi / 5);

n2 = (-10:20);
x2 = cos((0.1) * pi .* n2 - pi / 5);

subplot(131); stem(n1, x1); xlabel('n'); ylabel('cos(0.1*n-\pi/5)');

% Both plots look like periodic, though only x2 is really periodic,
% when x3 is not, as normalized frequency w0 / 2 * pi = 0.05 / pi
% is not from Z set.
subplot(132); stem(n2, x2); xlabel('n'); ylabel('cos(0.1*\pi*n-\pi/5)');
subplot(133); stem(n3, x3); xlabel('n'); ylabel('cos(0.1*n-\pi/5)');
