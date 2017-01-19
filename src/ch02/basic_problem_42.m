% ch02/basic_problem_42.m

function basic_problem_42
  n = 0 : 100;
  h = agnosto(n == 0);

  x1 = n >= 0;
  y1a = filter(h, 1, x1);
  x2 = (1 / 2) .^ n;
  y2a = filter(h, 1, x2);
  x3 = cos(2 * pi * n / 20);
  y3a = filter(h, 1, x3);

  y1 = agnosto(x1); y2 = agnosto(x2); y3 = agnosto(x3);

  printf("MSE for y1 is %d\n", mean((y1 - y1a) .^ 2));
  printf("MSE for y2 is %d\n", mean((y2 - y2a) .^ 2));
  printf("MSE for y3 is %d\n", mean((y3 - y3a) .^ 2));

  subplot(231); stem(n, x1); subplot(234); plot(n, y1, 'xr', n, y1a, 'og');
  subplot(232); stem(n, x2); subplot(235); plot(n, y2, 'xr', n, y2a, 'og');
  subplot(233); stem(n, x3); subplot(236); plot(n, y3, 'xr', n, y3a, 'og');
endfunction

% can't find the original function agnosto,
% so let's substitute with something reasonable
function y = agnosto(x)
  y = filter([1 -2 1], [1 -1], x);
endfunction
