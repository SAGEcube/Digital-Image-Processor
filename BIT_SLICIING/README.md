# Bit Plane Slicing of Image using MATLAB

## Overview
Bit Plane Slicing is a fundamental Digital Image Processing technique used to analyze the contribution of individual bits in a grayscale image.  
An 8-bit grayscale image contains 8 bit planes ranging from the Least Significant Bit (LSB) to the Most Significant Bit (MSB).

Each bit plane highlights different levels of image information, where higher bit planes contain the main visual structure and lower bit planes mostly contain fine details and noise.

---

## Objective
- To read an image using MATLAB
- To convert an RGB image into grayscale (if required)
- To extract all 8 bit planes (b0 to b7)
- To visualize the importance of each bit plane

---

## Tools & Requirements
- MATLAB (any version supporting bitget function)
- Input image file named `img.jpg`

---

## File Structure
Bit-Plane-Slicing  
│── bit_plane_slicing.m  
│── img.jpg  
│── README.md  

---

## Working Principle
1. Read the input image using `imread`
2. Convert RGB image to grayscale if needed
3. Convert image to `uint8` format (0–255)
4. Extract individual bit planes using MATLAB’s `bitget()` function
5. Scale extracted bit planes to 0–255 for better visualization
6. Display original image and bit planes using subplot

---

## MATLAB Code

```matlab
% ----------------------------
% Bit Plane Slicing in MATLAB
% ----------------------------
% Author: BT23ECI018
% Description:
% This script reads a grayscale image, extracts its 8 bit planes (LSB to MSB),
% and displays them using MATLAB figures.

clc;
clear;
close all;

% Step 1: Read the image
img = imread('./img.jpg');

% If image is RGB, convert to grayscale
if size(img, 3) == 3
    img = rgb2gray(img);
end

% Step 2: Convert image to uint8 (0–255)
img = uint8(img);

% Step 3: Create a figure
figure;
set(gcf, 'Position', [100 100 900 600]);

% Step 4: Display original image
subplot(3, 3, 1);
imshow(img);
title('Original Image');
axis off;

% Step 5: Extract and display bit planes
% Bit order: b0 (LSB) to b7 (MSB)
for i = 0:7
    % Extract ith bit plane using bitget
    bit_plane = bitget(img, i + 1);  
    % MATLAB uses 1-based indexing for bits
    
    % Convert logical values to 0–255 for visibility
    bit_plane = uint8(bit_plane * 255);
    
    % Display bit plane
    subplot(3, 3, i + 2);
    imshow(bit_plane);
    title(['Bit Plane ', num2str(i)]);
    axis off;
end
