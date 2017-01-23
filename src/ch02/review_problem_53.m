% ch02/review_problem_53.m

img = imread('res/Lenna.png');

img_ind = rgb2ind(img);
img_bw = (img_ind - min(img_ind(:))) ...
				 / (max(img_ind(:)) - min(img_ind(:)));

subplot(221); imshow(img_bw);
subplot(222); imshow(filter2([1 -2 1], img_bw) > 0.1);
subplot(223); imshow(filter2([1 -2 1]', img_bw) > 0.1);
subplot(224); imshow(filter2([1 -2 1; -2 4 -2; 1 -2 1]', img_bw));
