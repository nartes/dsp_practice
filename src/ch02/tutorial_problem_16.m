% ch02/tutorial_problem_16.m

img = imread('res/Lenna.png');

img_bw = sum(img, 3) / (255 * 3);

h = ones(1, 5) / 5;

row_filter = filter2(h, img_bw);

col_filter = filter2(h', img_bw);

row_col_filter = filter2(h', row_filter);

subplot(131); imshow(img_bw);
subplot(132); imshow(row_filter);
subplot(133); imshow(row_col_filter);
