original_image = imread('extra.jpg');
image = rgb2gray(original_image);

subplot(3,2,1); imshow(image);
title('Gray Scaled Original Image');

subplot(3,2,2); imhist(image);
title('Histogram of Original Image using built in function');

h = zeros(1,256);
[r, c] = size(image);
totla_no_of_pixels = r*c;
n = 0:255; 

hist_image = histeq(image);

subplot(3,2,3);
imshow(hist_image);
title('Histogram Equalization using built in function');

subplot(3,2,4); imhist(hist_image);

title('Histogram Equalization using built in function');

%Calculating Histogram without built-in function
for i = 1:r
    for j = 1:c
        h(image(i,j) + 1) = h(image(i,j) + 1) + 1;
    end
end

%Calculating Probability
for i = 1:256
    h(i)=h(i) / totla_no_of_pixels;
end

%Calculating Cumulative Probability
temp = h(1);
for i = 2:256
    temp = temp + h(i);
    h(i) = temp;
end

%Mapping
for i = 1:r
    for j = 1:c
        image(i,j)=round(h(image(i,j) + 1) * 255);
    end
end

subplot(3,2,5); imshow(image);
title('Histogram Equalized image using own code');

subplot(3,2,6); imhist(image);
title('Histogram Equalization using own code');

