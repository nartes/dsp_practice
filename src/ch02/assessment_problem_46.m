% ch02/assessment_problem_46.m

img = imread('res/Lenna.png');

bw_img = sum(img, 3) / (255 * 3);

h = [1 2 1; 0 0 0; -1 -2 -1];

y1 = filter2(h, bw_img);

subplot(131); imshow(bw_img);
subplot(132); imshow(filter2([1 2 1; 0 0 0; -1 -2 -1], bw_img));
subplot(133); imshow(filter2([1 2 1; 0 0 0; -1 -2 -1]', bw_img));

