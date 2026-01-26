clc;
clear;
close all;

I = imread('Image.jpeg');

% Convert to grayscale
if size(I,3) == 3
    I = rgb2gray(I);
end

I = double(I);

[M, N] = size(I);

% Ensure even dimensions
I = I(1:2*floor(M/2), 1:2*floor(N/2));

% ---- ROW TRANSFORM ----
L = (I(:,1:2:end) + I(:,2:2:end)) / sqrt(2);
H = (I(:,1:2:end) - I(:,2:2:end)) / sqrt(2);

% ---- COLUMN TRANSFORM ----
LL = (L(1:2:end,:) + L(2:2:end,:)) / sqrt(2);
LH = (L(1:2:end,:) - L(2:2:end,:)) / sqrt(2);
HL = (H(1:2:end,:) + H(2:2:end,:)) / sqrt(2);
HH = (H(1:2:end,:) - H(2:2:end,:)) / sqrt(2);

% ---- DISPLAY ----
figure;
subplot(2,2,1), imshow(LL, []), title('LL');
subplot(2,2,2), imshow(LH, []), title('LH');
subplot(2,2,3), imshow(HL, []), title('HL');
subplot(2,2,4), imshow(HH, []), title('HH');