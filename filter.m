image = imread("image_filter.jpg");

subplot(2,2,1); imshow(image); title('Original Image:');

gray_scaled_image = rgb2gray(image);

subplot(2,2,2); imshow(gray_scaled_image); title('Gray Scaled Image:');

[row, col] = size(gray_scaled_image);

%7x7
for i = 4:1: row - 3

    for j = 4:1: col - 3

        x = gray_scaled_image(i - 3 : i + 3, j - 3 : j + 3);

        C = x(:)';

        average = sum(C) / 49;

        gray_scaled_image(i, j) = average;
        
    end
end

subplot(2,2,3); imshow(gray_scaled_image); title('7x7 Filtered Image:');

%15x15
for i = 8:1: row - 7

    for j = 8:1: col - 7

        x = gray_scaled_image(i - 7 : i + 7, j - 7 : j + 7);

        C = x(:)';

        average = sum(C) / 225;

        gray_scaled_image(i, j) = average;
        
    end
end

subplot(2,2,4); imshow(gray_scaled_image); title('15x15 Filtered Image:');
