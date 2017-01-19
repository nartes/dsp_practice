% ch02/basic_problem_34.m

pkg load signal;
N = 100;
a = [1 0.9 -0.81];
b = [1];
h = impz(b, a, N);
y_sr = filter(b, a, ones(1, N));

subplot(211); stem((0 : N - 1), h); xlabel('n'); ylabel('h[n]');
subplot(212); stem((0 : N - 1), y_sr); xlabel('n'); ylabel('ysr[n]');

% I can't identify here neither transient nor steady-state response,
% since the system in unstable.
