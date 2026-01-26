# Tambola (Housie) Ticket Generator using MATLAB

## 📌 Overview
This project generates a **valid Tambola (Housie) ticket** using MATLAB.  
A Tambola ticket consists of a **3 × 9 grid** with **15 numbers total**, following standard Tambola rules.

The script randomly places numbers column-wise while ensuring:
- Correct number ranges per column
- Exactly **5 numbers per row**
- No repeated numbers

---

## 🎯 Objectives
- Generate a valid Tambola ticket programmatically
- Follow official Tambola number distribution rules
- Use randomization while maintaining constraints
- Practice matrix manipulation and random sampling in MATLAB

---

## 🧠 Tambola Rules Implemented
- Ticket size: **3 rows × 9 columns**
- Each row contains **exactly 5 numbers**
- Total numbers on ticket: **15**
- Column-wise number ranges:
  
| Column | Number Range |
|------|--------------|
| 1 | 1 – 9 |
| 2 | 10 – 19 |
| 3 | 20 – 29 |
| 4 | 30 – 39 |
| 5 | 40 – 49 |
| 6 | 50 – 59 |
| 7 | 60 – 69 |
| 8 | 70 – 79 |
| 9 | 80 – 90 |

Empty cells are represented by `0`.

---

## 🛠️ Requirements
- MATLAB (Desktop or MATLAB Online)
- No additional toolboxes required

---

## 📂 File Structure
Tambola_Ticket_Generator/
│
├── tambola.m % MATLAB source code
└── README.md % Project documentation

---

## ⚙️ Algorithm Steps
1. Initialize a 3 × 9 zero matrix
2. Define number ranges for each column
3. Randomly select numbers for each column
4. Randomly assign selected numbers to rows
5. Ensure no column violates its number range
6. Adjust rows so each has exactly 5 numbers
7. Display the final Tambola ticket

---

## 📌 Key MATLAB Concepts Used
- Matrix initialization
- Cell arrays
- Random number generation (`rng`, `randperm`)
- Sampling without replacement (`datasample`)
- Logical indexing and constraints
- Loop-based validation

---

## ✅ Output
- A valid Tambola ticket displayed in the MATLAB Command Window
- Each execution produces a **different ticket**

Example output format:
Tambola Ticket:
0 14 0 32 45 0 67 71 0
5 0 22 0 48 53 0 0 89
0 18 26 0 0 57 61 78 0
