% ch02/review_problem_54.m


img_ind = rgb2ind(img);
img_bw = (img_ind - min(img_ind(:))) ...
				 / (max(img_ind(:)) - min(img_ind(:)));

subplot(131); imshow(img_bw);
subplot(132); imshow(filter2([0 1 0; 1 -4 1; 0 1 0], img_bw));
subplot(133); imshow(filter2([0 0 0; 0 1 0; 0 0 0] - [0 1 0; 1 -4 1; 0 1 0],
														 img_bw
														)
										);
