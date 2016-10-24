% ch02/basic_problem_22.m

n = (-30 : 30);
x = cos((0.1) * pi .* n);
figure();
subplot(311); stem(n, x); xlabel('n'); ylabel('x[n]');
t = (1 : 5 : length(n));
subplot(312); stem(n(t), x(t)); xlabel('n'); ylabel('x[5n]');
t = (1 : 20 : length(n));
subplot(313); stem(n(t), x(t)); xlabel('n'); ylabel('x[20n]');
