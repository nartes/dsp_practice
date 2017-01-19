% ch02/basic_problem_36.m

for T = [0.1 0.01]
  th = -1 : T : 1;
  h = ones(1, length(th));
  tx = 0 : T : 3;
  x = tx / 3;

  y1 = ((-1 : T : 1) + 1) .^ 2 / 6;
  y2 = 2 / 3 * (1 + T : T : 2);
  y3 = 3 / 2 - ((2 + T : T : 4) - 1) .^ 2 / 6;
  y = [y1 y2 y3];

  ya = T * conv(h, x);
  mse = mean((y - ya) .^ 2);
  printf("MSE is %d, for T = %d\n", mse, T);

  n = 1 :  length(ya);
  figure();
  plot(n, y, 'og', n, ya, 'xr'); xlabel('n'); ylabel('y, ya');
  legend('analytical formula', 'rectangular approx.');
endfor

