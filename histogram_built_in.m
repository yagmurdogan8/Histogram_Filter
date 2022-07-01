image = imread("image_histogram.jpg");

gray_image = rgb2gray(image);

hist_image = histeq(gray_image);

subplot(3,2,1); imshow(image); title('Original Image:');
subplot(3,2,3); imshow(gray_image); title('Grayscaled Image:'); 
subplot(3,2,5); imshow(hist_image); title('Histogram Equalized Image:');
subplot(3,2,2); imhist(image); title('Histogram Graph of the Original Image:');
subplot(3,2,4); imhist(gray_image); title('Histogram Graph of the Gray Scaled Image:');
subplot(3,2,6); imhist(hist_image); title('Histogram Graph of the Histogram Equalized Image:');