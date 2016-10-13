% ch02/tutorial_problem_4.m

x1 = [1 1 1 1 0 0 0 0 0 0];

n2 = (0:9);
x2 = cos(0.1 * pi * n2);

n3 = (0:9);
x3 = (0.8) .^ n3;

% TODO(nartes): draw a pulsetrain

figure();
title('5 times');
subplot(221); stem(repmat(x1, 1, 5)); xlabel('n'); ylabel('x1[n]');
subplot(222); stem(repmat(x2, 1, 5)); xlabel('n'); ylabel('x2[n]');
subplot(223); stem(repmat(x3, 1, 5)); xlabel('n'); ylabel('x3[n]');
