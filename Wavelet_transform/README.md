# Single-Level 2D Haar Wavelet Transform for Image Processing (MATLAB)

## 📌 Overview
This project implements a **single-level 2D Haar Wavelet Transform** for grayscale images using MATLAB.  
The transform decomposes an image into four frequency subbands: **LL, LH, HL, and HH**, which represent different spatial frequency components.

The implementation is written **from scratch**, without using MATLAB’s Wavelet Toolbox, making it suitable for **educational purposes and MATLAB Online**.

---

## 🎯 Objectives
- Perform Haar wavelet decomposition manually
- Understand row-wise and column-wise wavelet filtering
- Decompose an image into approximation and detail components
- Visualize wavelet subbands
- Strengthen fundamentals of multiresolution analysis

---

## 🧠 Theory (Short Explanation)
The **Haar Wavelet Transform** is the simplest form of wavelet transform.

In 2D image processing:
- The transform is applied **first along rows**, then **along columns**
- Each step separates the image into **low-frequency (average)** and **high-frequency (difference)** components
- After one level of decomposition, four subbands are obtained:

| Subband | Meaning |
|-------|--------|
| LL | Approximation (low–low) |
| LH | Horizontal details |
| HL | Vertical details |
| HH | Diagonal details |

This representation is widely used in **image compression**, **denoising**, and **feature extraction**.

---

## 🛠️ Requirements
- MATLAB (Desktop or MATLAB Online)
- Input image file (`Image.jpeg`)

> No Wavelet Toolbox required

---

## 📂 File Structure
Haar_Wavelet_Transform/
│
├── Image.jpeg % Input image
├── haar_wavelet.m % MATLAB source code
└── README.md % Project documentation


---

## ⚙️ Algorithm Steps
1. Read input image
2. Convert image to grayscale (if RGB)
3. Convert pixel values to double precision
4. Ensure image dimensions are even
5. Apply Haar transform row-wise
6. Apply Haar transform column-wise
7. Generate LL, LH, HL, and HH subbands
8. Display the decomposed images

---

## 📌 Key MATLAB Concepts Used
- Image preprocessing (`imread`, `rgb2gray`)
- Matrix indexing and slicing
- Downsampling
- Arithmetic operations
- Subplot visualization

---

## 📊 Output Description
- **LL**: Smoothed, low-resolution version of the image  
- **LH**: Horizontal edge information  
- **HL**: Vertical edge information  
- **HH**: High-frequency diagonal details  

All subbands are displayed using automatic intensity scaling.

---

## ⚠️ Notes
- Image dimensions must be even for correct downsampling
- This implementation performs **only one level** of decomposition
- Haar wavelet is fast but not optimal for smooth signals

---

## 🚀 Possible Extensions
- Multi-level wavelet decomposition
- Image reconstruction (inverse Haar transform)
- Compare Haar with Daubechies wavelets
- Apply thresholding for image compression
- Energy analysis of subbands

---

## 👤 Author
**Sandesh**

---

## 📚 References
- S. Mallat, *A Wavelet Tour of Signal Processing*
- Digital Image Processing – Gonzalez & Woods
- MATLAB Documentation
