% ch02/assessment_problem_47.m

function assessment_problem_47
  a = [1 -1.15 1.5 -0.7 0.25];
  b = [0.18 0.1 0.3 0.1 0.18];
  n = (0 : 59);
  y = filter(b, a, n >= 0);
  y2 = lccde(b, a, n >= 0);
  printf("filter vs lccde is %d\n", ...
         mean((y - y2) .^ 2));
endfunction

function [y] = lccde(b, a, x)
  M = length(b); N = length(a);
  L = length(x);

  sx = zeros(1, M); sy = zeros(1, N);

  y = zeros(1, L);

  for n = 1 : L
    xin = x(n);
    sx(1) = xin;
    yout = b(1) * sx(1);
    for k = M : -1 : 2
      yout += b(k) * sx(k);
      sx(k) = sx(k - 1);
    endfor

    for k = N : -1 : 2
      yout += -a(k) * sy(k);
      sy(k) = sy(k - 1);
    endfor

    sy(2) = yout;
    y(n) = yout;
  endfor
endfunction
