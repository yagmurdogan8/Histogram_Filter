image = imread('image_filter.jpg'); 
subplot(2,2,1); imshow(image); title('Original Image:');

gray_scaled_image = rgb2gray(image);
subplot(2,2,2); imshow(gray_scaled_image); title('Grayscaled Image:');

windowWidth = 7; 
kernel = ones(windowWidth) / windowWidth ^ 2;

blurredImage = imfilter(gray_scaled_image, kernel);

imshow(blurredImage);
subplot(2,2,3); imshow(blurredImage); title('7x7 Filtered Image:');

windowWidth = 15; 
kernel = ones(windowWidth) / windowWidth ^ 2;

blurredImage = imfilter(gray_scaled_image, kernel);

imshow(blurredImage);
subplot(2,2,4); imshow(blurredImage); title('15x15 Filtered Image:');