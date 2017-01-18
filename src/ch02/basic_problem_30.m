% ch02/basic_problem_30.m

function basic_problem_30
  N1 = 10; N2 = 234;
  x = rand(1, N2 - N1 + 1);
  M1 = -29; M2 = 51;
  h = rand(1, M2 - M1 + 1);

  y1 = myconvlong(h, M1, M2, x, N1, N2);
  y2 = myconvshort(h, M1, M2, x, N1, N2);
  y3 = conv(h, x);

  printf("Error of myconvlong %d, of myconvshort %d\n",
         sumsq(y1 -y3), sumsq(y2 - y3));
endfunction

function [y, L1, L2] = myconvlong(h, M1, M2, x, N1, N2)
  if (N2 - N1 < M2 - M1)
    t = N2; N2 = M2; M2 = t;
    t = N1; N1 = M1; M1 = t;
    t = x; x = h; h = t;
  end

  cl = M1 + N1;
  cr = M2 + N2;

  y = zeros(1, N2 + M2 - N1 - M1 + 1);

  for n = (M1 + N1) : (M2 + N2)
    if (n < M1 + N1 + (M2 - M1))
      k = M1 : (n - N1);
    end

    if (M1 + N1 + (M2 - M1) <= n &&
        n <= M2 + N2 - (M2 - M1) )
      k = M1 : M2;
    end

    if (n > M2 + N2 - (M2 - M1))
      k = n - N2 : M2;
    end

    y(n - cl + 1) = h(k - M1 + 1) * x(n - k - N1 + 1)';
  end

  L1 = M1 + N1;
  L2 = M2 + N2;
endfunction

function [y, L1, L2] = myconvshort(h, M1, M2, x, N1, N2)
  xb = [zeros(1, M2 - M1) x zeros(1, M2 - M1)];
  y = zeros(1, M2 + N2 - N1 - M1 + 1);

  for n = M1 + N1 : M2 + N2
    y(n - M1 - N1 + 1) = h * xb((M2 - M1 + 1 : -1 : 1) + n - M1 - N1)';
  end

  L1 = M1 + N1;
  L2 = N2 + M2;
endfunction
