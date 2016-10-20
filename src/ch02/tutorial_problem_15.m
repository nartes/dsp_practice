% ch02/tutorial_problem_15.m

img = imread('res/Lenna.png');

bw_img = sum(img, 3) / (255 * 3);

h = ones(3) / 9;

y1 = filter(h, 1, bw_img);

subplot(131); imshow(bw_img);
subplot(132); imshow(y1);
subplot(133); imshow(filter(ones(5) / 25, 1, bw_img));

% TODO(nartes): need to explain that increasing, dark stripe
%   at the top of the second and the third images
