% ch02/assessment_problem_49.m

for T = [0.1 0.01]
  th = -1 : T : 1;
  h = exp(-th / 2) .* (th >= 0);
  tx = 0 : T : 3;
  x = 2 * ones(1, length(tx));

  t = (-1 : T : -T);
  y0 = zeros(size(t));
  t = (0 : T : 1);
  y1 = 4 * (1 - exp(-t / 2));
  t = (1 + T) : T : 3;
  y2 = 4 * (1 - exp(-1 / 2)) * ones(size(t));
  t = (3 + T) : T : 4;
  y3 = 4 * (exp((3 - t) / 2) - exp(-1 / 2));
  y = [y0 y1 y2 y3];

  ya = T * conv(h, x);
  mse = mean((y - ya) .^ 2);
  printf("MSE is %d, for T = %d\n", mse, T);

  figure();
  n = -1 : T : 4;
  plot(n, y, '-g', n, ya, '-r'); xlabel('n'); ylabel('y, ya');
  legend('analytical formula', 'rectangular approx.');
endfor
