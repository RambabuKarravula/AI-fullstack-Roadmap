# Day 3: Strings

## 📚 Learning Objectives
By the end of this day, you will:
- Understand string creation and manipulation
- Master string indexing and slicing
- Use string methods effectively
- Format strings with f-strings and format()
- Perform string validation and searching
- Build string manipulation projects

---

## 1. Introduction to Strings

**Strings** are sequences of characters enclosed in quotes.

```python
# Single quotes
name = 'Alice'

# Double quotes
message = "Hello World"

# Triple quotes (multi-line)
paragraph = """This is a
multi-line
string"""

# All are equivalent for single-line strings
str1 = 'Hello'
str2 = "Hello"
print(str1 == str2)  # True
```

### 1.1 Escape Characters

```python
# Newline
print("Hello\nWorld")
# Output:
# Hello
# World

# Tab
print("Name:\tAlice")
# Output: Name:    Alice

# Backslash
print("C:\\Users\\Documents")
# Output: C:\Users\Documents

# Quotes inside strings
print("She said \"Hello\"")
# Output: She said "Hello"

print('It\'s a beautiful day')
# Output: It's a beautiful day

# Raw strings (ignore escapes)
path = r"C:\Users\new\folder"
print(path)  # C:\Users\new\folder
```

---

## 2. String Indexing

Access individual characters by position.

```python
text = "Python"

# Positive indexing (0-based)
print(text[0])  # P
print(text[1])  # y
print(text[2])  # t
print(text[5])  # n

# Negative indexing (from end)
print(text[-1])  # n (last character)
print(text[-2])  # o
print(text[-6])  # P (first character)

# IndexError if out of range
# print(text[10])  # Error!
```

---

## 3. String Slicing

Extract portions of strings.

**Syntax:** `string[start:end:step]`
- `start`: Starting index (inclusive)
- `end`: Ending index (exclusive)
- `step`: Increment (default 1)

```python
text = "Python Programming"

# Basic slicing
print(text[0:6])    # Python
print(text[7:18])   # Programming

# Omit start (defaults to 0)
print(text[:6])     # Python

# Omit end (goes to end)
print(text[7:])     # Programming

# Omit both (copies string)
print(text[:])      # Python Programming

# Negative indices
print(text[-11:])   # Programming
print(text[:-12])   # Python

# With step
print(text[0:6:2])  # Pto (every 2nd character)
print(text[::2])    # Pto rgamn (every 2nd char)

# Reverse string
print(text[::-1])   # gnimmargorP nohtyP

# Every 3rd character
print(text[::3])    # Ph ormn
```

### 3.1 Slicing Examples

```python
text = "Hello World"

# First 5 characters
print(text[:5])     # Hello

# Last 5 characters
print(text[-5:])    # World

# Remove first and last
print(text[1:-1])   # ello Worl

# Skip first 2, last 2
print(text[2:-2])   # llo Wor

# Reverse
print(text[::-1])   # dlroW olleH
```

---

## 4. String Methods

Strings have many built-in methods.

### 4.1 Case Conversion

```python
text = "Hello World"

# Uppercase
print(text.upper())      # HELLO WORLD

# Lowercase
print(text.lower())      # hello world

# Title case (capitalize each word)
print(text.title())      # Hello World

# Capitalize first letter only
print(text.capitalize()) # Hello world

# Swap case
print(text.swapcase())   # hELLO wORLD

# Case checking
print("HELLO".isupper())  # True
print("hello".islower())  # True
print("Hello".istitle())  # True
```

### 4.2 Searching & Checking

```python
text = "Python Programming"

# Find substring (returns index or -1)
print(text.find("Pro"))        # 7
print(text.find("Java"))       # -1 (not found)

# Index (like find but raises error if not found)
print(text.index("Pro"))       # 7
# print(text.index("Java"))    # ValueError!

# Count occurrences
print(text.count("o"))         # 2
print(text.count("am"))        # 1

# Check start/end
print(text.startswith("Py"))   # True
print(text.endswith("ing"))    # True

# Check if substring exists
print("Pro" in text)           # True
print("Java" in text)          # False
```

### 4.3 String Validation

```python
# Check if alphanumeric
print("Hello123".isalnum())    # True
print("Hello 123".isalnum())   # False (space)

# Check if alphabetic
print("Hello".isalpha())       # True
print("Hello1".isalpha())      # False (number)

# Check if digits
print("12345".isdigit())       # True
print("123.45".isdigit())      # False (decimal)

# Check if space
print("   ".isspace())         # True
print(" a ".isspace())         # False
```

### 4.4 Trimming & Padding

```python
text = "  Hello World  "

# Remove whitespace
print(text.strip())       # "Hello World"
print(text.lstrip())      # "Hello World  "
print(text.rstrip())      # "  Hello World"

# Remove specific characters
print("###Hello###".strip("#"))  # "Hello"

# Center text
print("Hello".center(20, "-"))   # "-------Hello--------"

# Left justify
print("Hello".ljust(10, "-"))    # "Hello-----"

# Right justify
print("Hello".rjust(10, "-"))    # "-----Hello"

# Zero padding
print("42".zfill(5))             # "00042"
```

### 4.5 Splitting & Joining

```python
# Split string into list
text = "Python is awesome"
words = text.split()
print(words)  # ['Python', 'is', 'awesome']

# Split by custom delimiter
csv = "apple,banana,orange"
fruits = csv.split(",")
print(fruits)  # ['apple', 'banana', 'orange']

# Split with limit
text = "one:two:three:four"
parts = text.split(":", 2)
print(parts)  # ['one', 'two', 'three:four']

# Join list into string
words = ['Python', 'is', 'awesome']
sentence = " ".join(words)
print(sentence)  # "Python is awesome"

# Join with different delimiter
csv = ",".join(fruits)
print(csv)  # "apple,banana,orange"

# Split lines
multiline = "Line 1\nLine 2\nLine 3"
lines = multiline.splitlines()
print(lines)  # ['Line 1', 'Line 2', 'Line 3']
```

### 4.6 Replace & Modify

```python
text = "Hello World"

# Replace substring
print(text.replace("World", "Python"))  # "Hello Python"

# Replace all occurrences
text = "apple apple apple"
print(text.replace("apple", "orange"))  # "orange orange orange"

# Replace with limit
text = "apple apple apple"
print(text.replace("apple", "orange", 2))  # "orange orange apple"
```

---

## 5. String Formatting

### 5.1 F-Strings (Python 3.6+) - RECOMMENDED

```python
name = "Alice"
age = 25
height = 5.6

# Basic f-string
print(f"My name is {name}")

# Multiple variables
print(f"{name} is {age} years old")

# Expressions inside {}
print(f"Next year I'll be {age + 1}")

# Formatting numbers
price = 19.99
print(f"Price: ${price:.2f}")  # Price: $19.99

# Alignment
print(f"|{name:<10}|")  # Left align |Alice     |
print(f"|{name:>10}|")  # Right align |     Alice|
print(f"|{name:^10}|")  # Center |  Alice   |

# Padding with zeros
number = 42
print(f"{number:05}")  # 00042

# Percentage
ratio = 0.75
print(f"Success rate: {ratio:.1%}")  # Success rate: 75.0%

# Thousands separator
big_number = 1000000
print(f"{big_number:,}")  # 1,000,000
```

### 5.2 format() Method

```python
name = "Bob"
age = 30

# Positional arguments
print("My name is {} and I'm {} years old".format(name, age))

# Indexed arguments
print("My name is {0} and I'm {1} years old".format(name, age))
print("{1} is {0} years old".format(age, name))

# Named arguments
print("My name is {n} and I'm {a} years old".format(n=name, a=age))

# Formatting numbers
print("Price: ${:.2f}".format(19.99))
```

### 5.3 Old-Style % Formatting (Legacy)

```python
name = "Charlie"
age = 35

# %s for strings, %d for integers, %f for floats
print("My name is %s and I'm %d years old" % (name, age))

# Formatting floats
print("Price: $%.2f" % 19.99)
```

---

## 6. String Operations

### 6.1 Concatenation

```python
# Using +
first = "Hello"
second = "World"
result = first + " " + second
print(result)  # "Hello World"

# Using +=
message = "Hello"
message += " World"
print(message)  # "Hello World"

# Multiple concatenation
greeting = "Hello" + " " + "there" + " " + "friend"
print(greeting)
```

### 6.2 Repetition

```python
# Using *
print("=" * 20)  # ====================
print("Ha" * 3)  # HaHaHa

# Create divider
divider = "-" * 50
print(divider)
```

### 6.3 Length

```python
text = "Python"
print(len(text))  # 6

# Empty string
print(len(""))  # 0

# Whitespace counts
print(len("  spaces  "))  # 10
```

---

## 7. Multi-line Strings

```python
# Triple quotes
text = """
This is a multi-line string.
It can span multiple lines.
Useful for documentation.
"""
print(text)

# Single-line with newlines
text = "Line 1\nLine 2\nLine 3"
print(text)

# Using parentheses
text = ("This is a very long string that "
        "spans multiple lines using "
        "implicit string concatenation")
print(text)
```

---

## 8. String Immutability

**Strings cannot be changed after creation!**

```python
text = "Hello"

# ❌ Cannot modify
# text[0] = "h"  # TypeError!

# ✅ Create new string
text = "h" + text[1:]
print(text)  # "hello"

# Or use replace
text = "Hello"
text = text.replace("H", "h")
print(text)  # "hello"
```

---

## 9. Mini Projects

### 9.1 Reverse String

```python
def reverse_string(text):
    return text[::-1]

# Test
print(reverse_string("Python"))  # nohtyP
print(reverse_string("Hello World"))  # dlroW olleH
```

### 9.2 Count Vowels

```python
def count_vowels(text):
    vowels = "aeiouAEIOU"
    count = 0
    for char in text:
        if char in vowels:
            count += 1
    return count

# Test
print(count_vowels("Hello World"))  # 3
print(count_vowels("Python Programming"))  # 4
```

### 9.3 Palindrome Checker

```python
def is_palindrome(text):
    # Remove spaces and convert to lowercase
    text = text.replace(" ", "").lower()
    return text == text[::-1]

# Test
print(is_palindrome("racecar"))  # True
print(is_palindrome("hello"))    # False
print(is_palindrome("A man a plan a canal Panama"))  # True
```

### 9.4 Word Counter

```python
def count_words(text):
    words = text.split()
    return len(words)

# Test
print(count_words("Hello World"))  # 2
print(count_words("Python is awesome"))  # 3
```

---

## 10. Practice Exercises

### Exercise 1: Email Validator
```python
# Check if email contains @ and .
# Should have at least 3 characters before @
# Domain should have at least 2 characters
email = "user@example.com"
```

### Exercise 2: Title Formatter
```python
# Convert "hello world" to "Hello World"
# Use both built-in method and manual approach
```

### Exercise 3: Remove Duplicates
```python
# Remove duplicate characters from string
# Example: "hello" → "helo"
```

### Exercise 4: Acronym Generator
```python
# Create acronym from phrase
# Example: "United States of America" → "USA"
```

### Exercise 5: Caesar Cipher
```python
# Shift each letter by n positions
# Example: "abc" with shift 1 → "bcd"
```

---

## 11. Key Takeaways

✅ Strings are **immutable** sequences  
✅ **Indexing**: `text[0]`, `text[-1]`  
✅ **Slicing**: `text[start:end:step]`  
✅ Use **f-strings** for formatting  
✅ **Methods**: `.upper()`, `.lower()`, `.strip()`, `.split()`, `.replace()`  
✅ **Search**: `.find()`, `.count()`, `in` operator  
✅ **Concatenate**: `+` operator, `.join()`  
✅ **Reverse**: `[::-1]`  

---

## 12. Resources

### Documentation
- [Python Strings](https://docs.python.org/3/library/stdtypes.html#text-sequence-type-str)
- [String Methods](https://docs.python.org/3/library/stdtypes.html#string-methods)

### Video Tutorials
- [Python Strings - Corey Schafer](https://www.youtube.com/watch?v=k9TUPpGqYTo)
- [F-Strings - Real Python](https://realpython.com/python-f-strings/)

### Practice
- [HackerRank String Problems](https://www.hackerrank.com/domains/python?filters%5Bsubdomains%5D%5B%5D=py-strings)

---

## 13. Tomorrow's Preview: Lists & Tuples

Tomorrow you'll learn:
- 📋 Creating and accessing lists
- ➕ List methods (append, insert, remove)
- 🔄 List comprehensions
- 📦 Tuples and immutability
- 🎯 Nested data structures

---

**🎉 Congratulations on completing Day 3!**

Checklist:
- [ ] Complete all practice exercises
- [ ] Build vowel counter
- [ ] Create palindrome checker
- [ ] Practice string slicing
- [ ] Master f-strings

**See you tomorrow for Day 4! 🚀**
