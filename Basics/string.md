# Strings in Bash

Strings are one of the most commonly used data types in Bash scripting.
This document covers **everything about strings in Bash** — declaration, operations, comparisons, manipulations, and advanced techniques.

---

## ✻ Declaring Strings

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

## ✻ String Length

```bash
str="Hello World"

# Length of string
echo ${#str}      # 11
```

## ✻ Accessing Substrings

We can access string similar way to how we do in python indexing is quite similar

```
str="Hello World"

# Substring (syntax: ${string:position:length})
echo ${str:0:5}   # Hello
echo ${str:6:5}   # World

# From position till end
echo ${str:6}     # World
```
