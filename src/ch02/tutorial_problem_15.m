% ch02/tutorial_problem_15.m

img = imread('res/Lenna.png');

bw_img = sum(img, 3) / (255 * 3);

h = ones(3) / 9;

y1 = filter2(h, bw_img);

subplot(131); imshow(bw_img);
subplot(132); imshow(y1);
subplot(133); imshow(filter2(ones(5) / 25, bw_img));
