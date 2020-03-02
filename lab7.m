%Nebula
nebula = imread('NGC1499-766-L.jpg');
gaussian = fspecial('gaussian', 33, 3);
filter = imfilter(nebula, gaussian);
figure(1);
imshow(nebula+(nebula - filter));

%moon
moon = imread('PIA04521_Martian_Moon.jpg');
gaussian2 = fspecial('gaussian', 13, 1.5);
moon_gaussian = imfilter(moon, gaussian2);
avg = fspecial('average', 25);
moon_avg = imfilter(moon_gaussian, avg);

moon_ans = moon_gaussian + 2.5*(moon_gaussian - moon_avg);
figure(2);
imshow(moon_ans);

