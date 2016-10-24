% ch02/tutorial_problem_18.m

y_nr = filter(ones(1, 5) / 5, 1, ones(1, 101));
y_r = filter([1 0 0 0 0 -1] / 5, [1 -1], ones(1, 101));

subplot(311); stem(ones(1, 101)); xlabel('n'); ylabel('u[n]');
subplot(312); stem(y_nr); xlabel('n'); ylabel('ynr[n]');
subplot(313); stem(y_r); xlabel('n'); ylabel('yr[n]');
