% ch02/tutorial_problem_10.m

x = [1 3 2 -1];

h = 2 * (0.8) .^ (0:6);

printf("y[3] = %d\n", conv(h, x)(4));

plot(0:3, h(1:4), 0:3, flip(x)); xlabel('n');
