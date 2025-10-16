# Day 1: Python Setup & Basic Syntax

## 📚 Learning Objectives
By the end of this day, you will:
- Install Python and set up your development environment
- Understand Python syntax and basic structure
- Write your first Python programs
- Learn about variables, data types, and basic operations

---

## 1. Python Installation & Setup

### 1.1 Installing Python

**Windows:**
1. Download Python from [python.org](https://www.python.org/downloads/)
2. Run the installer
3. ✅ **IMPORTANT**: Check "Add Python to PATH"
4. Click "Install Now"

**Verify Installation:**
```bash
python --version
# Should show: Python 3.11.x or higher
```

### 1.2 Setting Up Your IDE

**Option 1: VS Code (Recommended)**
1. Download from [code.visualstudio.com](https://code.visualstudio.com/)
2. Install Python extension
3. Configure Python interpreter

**Option 2: PyCharm Community Edition**
- Professional IDE for Python development
- Download from [jetbrains.com/pycharm](https://www.jetbrains.com/pycharm/)

### 1.3 Your First Python File

Create a file named `hello.py`:
```python
print("Hello, World!")
print("Welcome to Python Programming!")
```

Run it:
```bash
python hello.py
```

---

## 2. Python Syntax Basics

### 2.1 Comments

```python
# This is a single-line comment

"""
This is a multi-line comment
Also called a docstring
Useful for documentation
"""

'''
You can also use single quotes
for multi-line comments
'''
```

### 2.2 Print Statement

```python
# Basic print
print("Hello, World!")

# Multiple items
print("Name:", "John", "Age:", 25)

# Using sep and end parameters
print("Python", "Java", "C++", sep=" | ")
print("Loading", end="...\n")

# Formatted strings
name = "Alice"
age = 30
print(f"My name is {name} and I am {age} years old")
```

### 2.3 Indentation (Critical in Python!)

Python uses indentation to define code blocks (no curly braces):

```python
# Correct - 4 spaces indentation
if True:
    print("This is indented correctly")
    print("This is also correct")

# Wrong - inconsistent indentation
if True:
    print("Correct")
  print("ERROR! This will cause IndentationError")
```

**Rules:**
- Use 4 spaces per indentation level
- Be consistent (don't mix tabs and spaces)
- All lines in the same block must have the same indentation

---

## 3. Variables & Data Types

### 3.1 Variables

Variables store data. Python is dynamically typed (no need to declare type).

```python
# Variable assignment
name = "John"
age = 25
height = 5.9
is_student = True

# Multiple assignment
x, y, z = 10, 20, 30

# Same value to multiple variables
a = b = c = 100

# Variable naming rules
my_variable = 10      # ✅ Good (snake_case)
myVariable = 10       # ✅ OK (camelCase)
_private_var = 10     # ✅ Valid
variable_123 = 10     # ✅ Valid

# Invalid names
# 123variable = 10    # ❌ Can't start with number
# my-variable = 10    # ❌ Can't use hyphens
# for = 10            # ❌ Can't use keywords
```

### 3.2 Data Types

#### **1. Numeric Types**

```python
# Integer
age = 25
population = 1000000
negative = -50

# Float (decimal numbers)
price = 19.99
temperature = -3.5
scientific = 2.5e3  # 2500.0

# Complex numbers
complex_num = 3 + 4j
```

#### **2. String (Text)**

```python
# Single or double quotes
name = "Alice"
message = 'Hello, World!'

# Multi-line strings
paragraph = """
This is a multi-line string.
It can span multiple lines.
Very useful for long text.
"""

# String concatenation
first_name = "John"
last_name = "Doe"
full_name = first_name + " " + last_name

# String repetition
laugh = "Ha" * 3  # "HaHaHa"

# String indexing
text = "Python"
print(text[0])   # 'P' (first character)
print(text[-1])  # 'n' (last character)

# String slicing
print(text[0:3])   # 'Pyt'
print(text[2:])    # 'thon'
print(text[:4])    # 'Pyth'
```

#### **3. Boolean**

```python
is_active = True
is_deleted = False

# Boolean from comparisons
result = (5 > 3)      # True
check = (10 == 5)     # False
```

#### **4. None Type**

```python
# Represents absence of value
empty_value = None

# Useful for initialization
user_input = None
```

### 3.3 Type Checking & Conversion

```python
# Check type
x = 10
print(type(x))  # <class 'int'>

# Type conversion
num_str = "25"
num_int = int(num_str)      # String to integer
num_float = float(num_str)  # String to float

age = 25
age_str = str(age)          # Integer to string

# Be careful with conversion
invalid = int("hello")  # ❌ ValueError!
```

---

## 4. Basic Operations

### 4.1 Arithmetic Operators

```python
# Basic math
a = 10
b = 3

addition = a + b        # 13
subtraction = a - b     # 7
multiplication = a * b  # 30
division = a / b        # 3.333...
floor_division = a // b # 3 (integer division)
modulus = a % b         # 1 (remainder)
exponent = a ** b       # 1000 (10^3)

# Order of operations (PEMDAS)
result = 2 + 3 * 4      # 14 (not 20)
result = (2 + 3) * 4    # 20 (use parentheses)
```

### 4.2 Comparison Operators

```python
x = 10
y = 20

equal = (x == y)           # False
not_equal = (x != y)       # True
greater = (x > y)          # False
less = (x < y)             # True
greater_equal = (x >= y)   # False
less_equal = (x <= y)      # True
```

### 4.3 Logical Operators

```python
# AND, OR, NOT
a = True
b = False

result = a and b  # False (both must be True)
result = a or b   # True (at least one is True)
result = not a    # False (inverts boolean)

# Practical example
age = 25
has_license = True

can_drive = (age >= 18) and has_license  # True
```

### 4.4 Assignment Operators

```python
x = 10

# Compound assignment
x += 5   # x = x + 5  → 15
x -= 3   # x = x - 3  → 12
x *= 2   # x = x * 2  → 24
x /= 4   # x = x / 4  → 6.0
x //= 2  # x = x // 2 → 3.0
x %= 2   # x = x % 2  → 1.0
x **= 3  # x = x ** 3 → 1.0
```

---

## 5. User Input

### 5.1 Getting Input

```python
# Basic input (always returns string)
name = input("Enter your name: ")
print("Hello, " + name)

# Converting input to numbers
age = int(input("Enter your age: "))
height = float(input("Enter your height in meters: "))

# Multiple inputs on same line
x, y = input("Enter two numbers (space-separated): ").split()
x = int(x)
y = int(y)
```

### 5.2 Input Validation (Preview)

```python
# Always validate user input
age_str = input("Enter your age: ")

if age_str.isdigit():
    age = int(age_str)
    print(f"You are {age} years old")
else:
    print("Invalid input! Please enter a number.")
```

---

## 6. Basic String Methods

```python
text = "python programming"

# Case conversion
print(text.upper())        # "PYTHON PROGRAMMING"
print(text.lower())        # "python programming"
print(text.capitalize())   # "Python programming"
print(text.title())        # "Python Programming"

# Checking content
print(text.startswith("py"))   # True
print(text.endswith("ing"))    # True
print(text.isalpha())          # False (has space)
print("123".isdigit())         # True

# Finding and replacing
print(text.find("prog"))       # 7 (index position)
print(text.replace("python", "Java"))  # "Java programming"

# Stripping whitespace
padded = "  hello  "
print(padded.strip())    # "hello"
print(padded.lstrip())   # "hello  "
print(padded.rstrip())   # "  hello"

# Splitting strings
words = text.split()     # ['python', 'programming']
```

---

## 7. Common Errors & Debugging

### 7.1 SyntaxError

```python
# Missing colon
if x > 5
    print("Greater")  # ❌ SyntaxError

# Correct
if x > 5:
    print("Greater")  # ✅
```

### 7.2 NameError

```python
# Using undefined variable
print(undefined_var)  # ❌ NameError

# Must define first
my_var = 10
print(my_var)  # ✅
```

### 7.3 TypeError

```python
# Wrong type operation
result = "5" + 5  # ❌ TypeError (can't add string and int)

# Correct
result = int("5") + 5  # ✅ 10
result = "5" + str(5)  # ✅ "55"
```

### 7.4 IndentationError

```python
# Inconsistent indentation
if True:
    print("Line 1")
  print("Line 2")  # ❌ IndentationError

# Correct
if True:
    print("Line 1")
    print("Line 2")  # ✅
```

---

## 8. Best Practices

### 8.1 Code Style (PEP 8)

```python
# Good variable names (descriptive)
user_age = 25
total_price = 99.99
is_active = True

# Bad variable names
a = 25        # What is 'a'?
x123 = 99.99  # Not descriptive
flag = True   # Not specific

# Constants (uppercase)
MAX_SIZE = 100
PI = 3.14159
API_KEY = "abc123"

# Spacing
x = 5         # ✅ Space around =
x=5           # ❌ No space

y = x + 1     # ✅ Space around +
y=x+1         # ❌ No space
```

### 8.2 Comments

```python
# Good comments explain WHY
price = price * 0.9  # Apply 10% discount for loyalty members

# Bad comments state the obvious
x = x + 1  # Increment x by 1
```

### 8.3 Print Debugging

```python
# Use print to debug
x = 10
y = 20
result = x + y
print(f"Debug: x={x}, y={y}, result={result}")
```

---

## 9. Practice Exercises

### Exercise 1: Variable Swap
```python
# Swap two variables without a temp variable
a = 5
b = 10
# Your code here
# Expected: a = 10, b = 5
```

### Exercise 2: Temperature Converter
```python
# Convert Celsius to Fahrenheit
# Formula: F = (C * 9/5) + 32
celsius = float(input("Enter temperature in Celsius: "))
# Your code here
```

### Exercise 3: Circle Calculator
```python
# Calculate area and circumference of a circle
# Area = π * r²
# Circumference = 2 * π * r
radius = float(input("Enter radius: "))
# Your code here
```

### Exercise 4: String Manipulator
```python
# Take a string and:
# - Print it in uppercase
# - Print it in lowercase
# - Print its length
# - Print it reversed (use slicing [::-1])
text = input("Enter some text: ")
# Your code here
```

---

## 10. Key Takeaways

✅ **Python is easy to read** - uses plain English-like syntax  
✅ **Indentation matters** - defines code blocks  
✅ **Dynamic typing** - no need to declare variable types  
✅ **Variables** - store data with descriptive names  
✅ **Data types** - int, float, str, bool, None  
✅ **Operators** - arithmetic, comparison, logical  
✅ **Input/Output** - interact with users  
✅ **Comments** - explain your code  

---

## 11. Resources

### Official Documentation
- [Python Tutorial](https://docs.python.org/3/tutorial/)
- [Python Built-in Functions](https://docs.python.org/3/library/functions.html)

### Video Tutorials
- [Python for Beginners - freeCodeCamp](https://www.youtube.com/watch?v=rfscVS0vtbw)
- [Python Tutorial - Programming with Mosh](https://www.youtube.com/watch?v=_uQrJ0TkZlc)

### Practice Platforms
- [Python.org Exercises](https://wiki.python.org/moin/BeginnersGuide/Examples)
- [HackerRank Python](https://www.hackerrank.com/domains/python)
- [LeetCode Easy Problems](https://leetcode.com/problemset/)

---

## 12. Tomorrow's Preview: Data Structures (Lists & Tuples)

Tomorrow you'll learn:
- 📦 Lists - ordered, mutable collections
- 🔒 Tuples - ordered, immutable collections
- 🎯 Indexing and slicing
- 🔄 List methods and operations
- 🚀 List comprehensions

---

**🎉 Congratulations on completing Day 1!**

Make sure to:
- [ ] Complete all practice exercises
- [ ] Write at least 5 different Python programs
- [ ] Experiment with different data types
- [ ] Create a simple calculator program
- [ ] Review any concepts you found challenging

**See you tomorrow for Day 2! 🚀**
