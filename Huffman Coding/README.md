
---

## ⚙️ Algorithm Steps
1. Read grayscale image
2. Convert image into a 1D pixel array
3. Compute symbol frequencies and probabilities
4. Construct Huffman tree
5. Generate Huffman codes recursively
6. Encode image into a bitstream
7. Decode bitstream back to pixels
8. Reshape decoded pixels into image
9. Display original and decoded images
10. Calculate compression ratio

---

## 📊 Compression Metrics
- **Original Size** = Number of pixels × 8 bits  
- **Compressed Size** = Length of Huffman encoded bitstream  
- **Compression Ratio** = Original Size / Compressed Size  

Higher redundancy in the image → better compression.

---

## ✅ Key Features
- Lossless compression
- Manual Huffman tree construction
- Recursive code generation
- MATLAB Online safe
- Clear visualization of results

---

## 📌 Output
- Original image
- Decoded image (identical to original)
- Compression statistics printed in Command Window

---

## ⚠️ Notes
- This implementation focuses on **conceptual clarity**, not speed
- String-based bit storage is memory-expensive for large images
- For real-world systems, bit-level storage is preferred

---

## 🚀 Possible Extensions
- Compare with Run-Length Encoding (RLE)
- Add entropy calculation
- Implement bit-level storage
- Apply to color images (per channel)

---

## 👤 Author
**BT23ECE100**

---

## 📚 References
- D. A. Huffman, “A Method for the Construction of Minimum-Redundancy Codes”
- Digital Image Processing – Gonzalez & Woods
- MATLAB Documentation
