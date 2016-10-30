% ch02/basic_problem_24.m

x = dlmread("res/DJIA_10years.csv", ",", "B8..B2594")';

N = length(x)

y1 = zeros(1, N); M = 51;

for n = 0 : (N - 1)
  y1(n + 1) = x(n + 1) / M;
  if (n - 1 >= 0)
    y1(n + 1) += y1(n);
  end
  if (n - M >= 0)
    y1(n + 1) -= x(n - M + 1) / M;
  end
end

y3 = filter(ones(1, 51) / 51, 1, x);
printf("Causal moving average error is %d\n", sumsq(y1 - y3));

y2 = zeros(1, N); M = 51; hM = 25;

y2(1) = sum(x(1 : hM + 1)) / M;

for n = 1 : (N - 1)
  y2(n + 1) = y2(n);
  if (n + hM < N)
    y2(n + 1) += x(n + hM + 1) / M;
  end
  if (n - hM - 1 >= 0)
    y2(n + 1) -= x(n - hM) / M;
  end
end

y4 = conv(ones(1, 51) / 51, x)(26:26 + N - 1);
printf("Non causal, centered moving average error is %d\n", sumsq(y2 - y4));

figure();
n = 0 : N - 1;
plot(n, x, 'b', n, y1, 'r', n, y2, 'g'); xlabel('n'); ylabel('x, y1, y2');
legend("DJIA", ...
       "causal, 51 sample MAF", ...
       "non causal, centered 51 sample MAF", ...
       "location", "northwest");
