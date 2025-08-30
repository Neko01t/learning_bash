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

```bash
str="Hello World"

# Substring (syntax: ${string:position:length})
echo ${str:0:5}   # Hello
echo ${str:6:5}   # World

# From position till end
echo ${str:6}     # World
```

## ✻ String Concatenation

We can concatenate string by just writing it together in a string
Don't forget the $ to access the string in the double quotes like "$stuff"
its good to put double quotes around it to avoid errors when string is empty or contain
spaces

```bash
str1="Hello"
str2="World"

# Simple concatenation

str3="$str1 $str2"
echo $str3 # Hello World
```

## String Comparison

- In Bash, `[ ]` (square brackets) are used for tests/conditions.
- Inside [ ], you can use different operators to check strings, numbers, or files
- If we do `[[ ]]` then it is more powerfull now it can even check patterns and regex
  their are many things we can do in `[]` but remember one thing `=` in [] is treated as == as in different language but in `[[ ]]` have `==` hence `[[ ]]` is more powerfull
- `[[ ]]` is bash only

```bash
str1="abc"
str2="xyz"

# Equality
[[ $str1 == $str2 ]] && echo "Equal" || echo "Not Equal"

# Inequality
[[ $str1 != $str2 ]] && echo "Not Equal"

# Length check
[[ -z $str1 ]] && echo "Empty"
[[ -n $str1 ]] && echo "Not Empty"

```
