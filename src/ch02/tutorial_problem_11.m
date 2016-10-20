% ch02/tutorial_problem_11.m

n = (-20:20);

x = (n >= 0); % unit impulse

y1 = conv(ones(1,5), x);
y2 = conv([1 -1 -1 -1 1], x);
y = conv(ones(1, 3), y1 + y2);
subplot(121); stem(n, y(1:length(n))); xlabel('n'); ylabel('y[n]');

h = conv(ones(1, 3), ones(1, 5) + [1 -1 -1 -1 1]);
y_straight = conv(h, x);
subplot(122); stem(n, y_straight(1:length(n))); xlabel('n'); ylabel('ystraight[n]');
