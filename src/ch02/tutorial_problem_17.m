% ch02/tutorial_problem_17.m

pkg load signal;

% y[n] = 1.15y[n - 1] - 1.5y[n - 2] + 0.7y[n - 3] -
% - 0.25y[n - 4] + 0.18x[n] + 0.1x[n - 1] + 0.3x[n - 2] +
% + 0.1x[n - 3] + 0.18x[n - 4]

b = [0.18 0.1 0.3 0.1 0.18];

a = [1 -1.15 1.5 -0.7 0.25 -0.18];

n = (0:200);

for hlen = [length(n) length(n) / 2]
  h = impz(b, a, hlen);

  y_recursive = filter(b, a, (n >= 0));

  y_conv = conv(h, (n >= 0))(n + 1);

  y_filter_nonrecursive = filter(h, 1, (n >= 0));

  printf("Error y_recursive vs y_conv %d\n", ...
      sumsq(y_recursive - y_conv));
  printf("Error y_recursive vs y_filter_nonrecursive %d\n", ...
      sumsq(y_recursive - y_filter_nonrecursive));

  figure();

  subplot(221); stem(0 : length(h) - 1, h); xlabel('n'); ylabel('h[n]');
  subplot(222); stem(n, y_recursive); xlabel('n');
  ylabel('yrec[n]');
  subplot(223); stem(n, y_conv); xlabel('n'); ylabel('yconv[n]');
  subplot(224); stem(n, y_filter_nonrecursive); xlabel('n');
  ylabel('yfilternonrecursive[n]');
end
