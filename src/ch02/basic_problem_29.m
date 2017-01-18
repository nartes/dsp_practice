% ch02/basic_problem_29.m

delta = @(n) (n == 0);
x = @(n) n .* (((n - 10) >= 0) .+ ((n + 15) >= 0));
h = @(n) (0.5) .^ n .* ((n >= 0) .- ((n - 10) >= 0));
h1 = @(n) cos(0.05 * pi * n) .* ((n >= 0) .- ((n - 2) >= 0));
h2 = @(n) 2 * ((n + 3) == 0) .+ ((n - 1) >= 0) .- 3 * ((n - 5) >= 0);
n = (-50 : 50);

assert(conv(x(n), h(n)) == conv(h(n), x(n)));
assert(sumsq(conv(conv(x(n), h1(n)), h2(n)) -
       conv(x(n), conv(h1(n), h2(n)))) < 1e-16);
assert(sumsq(conv(x(n), h1(n)) .+ conv(x(n), h2(n)) .- ...
       conv(x(n), h1(n) .+ h2(n))) < 1e-16);
assert(sumsq(conv(x(n), delta(n), "same") - x(n)) < 1e-16);
assert(sumsq(conv(x(n), delta(n - 10), "same") - x(n - 10)) < 1e-16);
