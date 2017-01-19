% ch02/assessment_problem_41.m

n = 0 : 1000; y = filter(1, [1 -5], n >= 0);
printf('y[600] is %d\n', y(601));

t = 1 : 40;
plot(n(t), y(t)); xlabel('n'); ylabel('y[n]');
