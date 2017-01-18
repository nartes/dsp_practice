% ch02/basic_problem_31.m

h = filter(1, [1 -1 -1], (0 : 100) == 0);
figure();
stem((0 : 100), h); xlabel('n'); ylabel('h[n]');

figure();
plot_index = 1;
for a = [0.1 0.9 1.1 1.9 2.1 2.3]
  y = filter(1, [1 -1 -1], a .^ (0 : 100));
  subplot(2, 3, plot_index++);
  stem((0 : 100), y); xlabel('n'); ylabel(['y[n], a=' num2str(a)]);
end
