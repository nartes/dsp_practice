% ch02/basic_problem_28.m

y = ((0 : 98) + 1) .* (ones(1, 99) * 0.9) .^ (0 : 98);
x = (0.9 * ones(1, 50)) .^ (0 : 49);
h = x;
yc = conv(h, x);
x = (0.9 * ones(1, 99)) .^ (0 : 98);
h = x;
yf = filter(h, 1, x);
eyc = sumsq(y(1 : length(yc)) - yc);
eyf = sumsq(y(1 : length(yf)) - yf);

subplot(311); stem(y);
subplot(312); stem(yc);
subplot(313); stem(yf);

printf("Error conv %d, error filter %d \n", eyc, eyf);
