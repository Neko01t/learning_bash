# Strings in Bash

Strings are one of the most commonly used data types in Bash scripting.
This document covers **everything about strings in Bash** — declaration, operations, comparisons, manipulations, and advanced techniques.

---

## 📌 Declaring Strings

```bash
# Single quotes: literal string (no variable expansion)
str1='Hello $USER'
echo $str1   # Output: Hello $USER

# Double quotes: allows variable and command substitution
str2="Hello $USER"
echo $str2   # Output: Hello <your-username>

# Without quotes: behaves like double quotes unless spaces or special chars
str3=Hello
```
