clc;
clear;
close all;

%% Step 1: Read Original Image
rgb_img = imread('Image.jpeg');

%% Step 2: Convert to Grayscale
gray_img = rgb2gray(rgb_img);

[M, N] = size(gray_img);

%% ================================
% METHOD 1: Histogram Equalization USING histeq
%% ================================
histeq_img = histeq(gray_img);

%% ================================
% METHOD 2: Histogram Equalization WITHOUT histeq (Manual)
%% ================================

% Step 1: Compute Histogram
hist = zeros(1,256);
for i = 1:M
    for j = 1:N
        intensity = gray_img(i,j);
        hist(intensity + 1) = hist(intensity + 1) + 1;
    end
end

% Step 2: PDF
pdf = hist / (M * N);

% Step 3: CDF
cdf = zeros(1,256);
cdf(1) = pdf(1);
for k = 2:256
    cdf(k) = cdf(k-1) + pdf(k);
end

% Step 4: Transformation Function
T = round(cdf * 255);

% Step 5: Pixel Mapping
manual_eq_img = zeros(M,N);
for i = 1:M
    for j = 1:N
        manual_eq_img(i,j) = T(gray_img(i,j) + 1);
    end
end

manual_eq_img = uint8(manual_eq_img);

%% ================================
% DISPLAY RESULTS (COMPARISON)
%% ================================

figure('Name','Histogram Equalization Comparison','NumberTitle','off');

% Original RGB
subplot(3,3,1);
imshow(rgb_img);
title('Original RGB Image');

% Original Grayscale
subplot(3,3,2);
imshow(gray_img);
title('Grayscale Image');

% Original Histogram
subplot(3,3,3);
imhist(gray_img);
title('Grayscale Histogram');

% histeq Image
subplot(3,3,4);
imshow(histeq_img);
title('histeq Result');

% histeq Histogram
subplot(3,3,5);
imhist(histeq_img);
title('histeq Histogram');

% Manual Equalized Image
subplot(3,3,6);
imshow(manual_eq_img);
title('Manual Equalization');

% Manual Histogram
subplot(3,3,7);
imhist(manual_eq_img);
title('Manual Histogram');

% Empty for symmetry
subplot(3,3,8); axis off;
subplot(3,3,9); axis off;
