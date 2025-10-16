# Day 2: Variables & Operators

## 📚 Learning Objectives
By the end of this day, you will:
- Understand variables and variable naming conventions
- Master arithmetic operators
- Use assignment operators effectively
- Understand comparison operators
- Work with logical operators
- Build a simple calculator script

---

## 1. Introduction to Variables

**Variables** are containers for storing data values.

```python
# Creating variables
name = "John"
age = 25
height = 5.9
is_student = True

# Python is dynamically typed - no need to declare type
x = 5        # integer
x = "Hello"  # now it's a string (allowed!)
```

### 1.1 Variable Naming Rules

**Rules (must follow):**
- Must start with letter (a-z, A-Z) or underscore (_)
- Can contain letters, numbers, and underscores
- Case-sensitive (`age` ≠ `Age`)
- Cannot use Python keywords

```python
# ✅ Valid names
name = "Alice"
_age = 25
first_name = "Bob"
userName = "charlie"
user_1 = "David"

# ❌ Invalid names
2name = "Error"      # Cannot start with number
first-name = "Error" # No hyphens
class = "Error"      # 'class' is a keyword
```

**Naming Conventions (best practices):**
```python
# snake_case for variables and functions (recommended in Python)
user_name = "Alice"
total_price = 100

# PascalCase for classes
class UserProfile:
    pass

# UPPERCASE for constants
MAX_SIZE = 100
PI = 3.14159
```

### 1.2 Multiple Assignment

```python
# Assign same value to multiple variables
x = y = z = 0

# Assign multiple values at once
a, b, c = 1, 2, 3
print(a)  # 1
print(b)  # 2
print(c)  # 3

# Swap variables (Python way!)
x, y = 10, 20
x, y = y, x  # Swap
print(x, y)  # 20 10
```

---

## 2. Arithmetic Operators

Perform mathematical operations.

| Operator | Name | Example | Result |
|----------|------|---------|--------|
| `+` | Addition | `5 + 3` | 8 |
| `-` | Subtraction | `5 - 3` | 2 |
| `*` | Multiplication | `5 * 3` | 15 |
| `/` | Division (float) | `7 / 2` | 3.5 |
| `//` | Floor Division | `7 // 2` | 3 |
| `%` | Modulus (remainder) | `7 % 2` | 1 |
| `**` | Exponentiation | `2 ** 3` | 8 |

### 2.1 Basic Arithmetic

```python
# Addition
result = 10 + 5
print(result)  # 15

# Subtraction
result = 10 - 5
print(result)  # 5

# Multiplication
result = 10 * 5
print(result)  # 50

# Division (always returns float)
result = 10 / 3
print(result)  # 3.3333...

# Floor Division (returns integer, rounds down)
result = 10 // 3
print(result)  # 3

# Modulus (remainder)
result = 10 % 3
print(result)  # 1

# Exponentiation (power)
result = 2 ** 3  # 2³
print(result)  # 8
```

### 2.2 Operator Precedence

**Order of operations (PEMDAS):**
1. `()` - Parentheses
2. `**` - Exponentiation
3. `*`, `/`, `//`, `%` - Multiplication/Division
4. `+`, `-` - Addition/Subtraction

```python
# Without parentheses
result = 2 + 3 * 4
print(result)  # 14 (multiplication first)

# With parentheses
result = (2 + 3) * 4
print(result)  # 20 (addition first)

# Complex expression
result = 10 + 5 * 2 ** 3 / 4 - 2
# = 10 + 5 * 8 / 4 - 2
# = 10 + 40 / 4 - 2
# = 10 + 10 - 2
# = 18
print(result)  # 18.0
```

---

## 3. Assignment Operators

Assign values to variables.

| Operator | Example | Equivalent |
|----------|---------|------------|
| `=` | `x = 5` | `x = 5` |
| `+=` | `x += 3` | `x = x + 3` |
| `-=` | `x -= 3` | `x = x - 3` |
| `*=` | `x *= 3` | `x = x * 3` |
| `/=` | `x /= 3` | `x = x / 3` |
| `//=` | `x //= 3` | `x = x // 3` |
| `%=` | `x %= 3` | `x = x % 3` |
| `**=` | `x **= 3` | `x = x ** 3` |

### 3.1 Compound Assignment

```python
# Addition assignment
count = 10
count += 5  # count = count + 5
print(count)  # 15

# Subtraction assignment
score = 100
score -= 20
print(score)  # 80

# Multiplication assignment
price = 50
price *= 2
print(price)  # 100

# Division assignment
total = 100
total /= 4
print(total)  # 25.0

# Exponentiation assignment
base = 2
base **= 3  # 2³
print(base)  # 8

# String concatenation
message = "Hello"
message += " World"
print(message)  # "Hello World"

# List concatenation
numbers = [1, 2, 3]
numbers += [4, 5]
print(numbers)  # [1, 2, 3, 4, 5]
```

---

## 4. Comparison Operators

Compare two values and return `True` or `False`.

| Operator | Meaning | Example |
|----------|---------|---------|
| `==` | Equal to | `5 == 5` → True |
| `!=` | Not equal to | `5 != 3` → True |
| `>` | Greater than | `5 > 3` → True |
| `<` | Less than | `3 < 5` → True |
| `>=` | Greater than or equal | `5 >= 5` → True |
| `<=` | Less than or equal | `3 <= 5` → True |

### 4.1 Comparison Examples

```python
# Equal to
print(5 == 5)    # True
print(5 == 3)    # False

# Not equal to
print(5 != 3)    # True
print(5 != 5)    # False

# Greater than
print(5 > 3)     # True
print(3 > 5)     # False

# Less than
print(3 < 5)     # True
print(5 < 3)     # False

# Greater than or equal
print(5 >= 5)    # True
print(5 >= 3)    # True
print(3 >= 5)    # False

# Less than or equal
print(3 <= 5)    # True
print(5 <= 5)    # True
print(5 <= 3)    # False

# String comparison (lexicographic)
print("apple" < "banana")  # True
print("hello" == "hello")  # True

# Case-sensitive
print("Hello" == "hello")  # False
```

### 4.2 Chaining Comparisons

```python
# Python allows chaining
x = 15
print(10 < x < 20)  # True (x is between 10 and 20)

# Equivalent to:
print(10 < x and x < 20)

# Multiple chains
y = 25
print(10 < x < y < 30)  # True
```

---

## 5. Logical Operators

Combine conditional statements.

| Operator | Description | Example |
|----------|-------------|---------|
| `and` | Both must be True | `True and False` → False |
| `or` | At least one True | `True or False` → True |
| `not` | Negates the result | `not True` → False |

### 5.1 AND Operator

```python
# Both conditions must be True
age = 25
has_license = True

print(age >= 18 and has_license)  # True

# If any is False, result is False
print(True and False)   # False
print(False and True)   # False
print(False and False)  # False
print(True and True)    # True
```

### 5.2 OR Operator

```python
# At least one condition must be True
is_weekend = True
is_holiday = False

print(is_weekend or is_holiday)  # True

# Truth table
print(True or False)   # True
print(False or True)   # True
print(False or False)  # False
print(True or True)    # True
```

### 5.3 NOT Operator

```python
# Reverses boolean value
is_raining = False
print(not is_raining)  # True

# With comparisons
x = 5
print(not x > 10)  # True (x is not greater than 10)
print(not x == 5)  # False
```

### 5.4 Combining Logical Operators

```python
# Complex conditions
age = 25
income = 50000
has_debt = False

# Eligible for loan?
eligible = age >= 21 and income >= 30000 and not has_debt
print(eligible)  # True

# Using parentheses for clarity
result = (age > 18 and income > 20000) or (has_debt == False)
print(result)  # True
```

---

## 6. Operator Precedence (All Operators)

**Order from highest to lowest:**

1. `()` - Parentheses
2. `**` - Exponentiation
3. `+x`, `-x`, `~x` - Unary plus, minus, bitwise NOT
4. `*`, `/`, `//`, `%` - Multiplication, Division
5. `+`, `-` - Addition, Subtraction
6. `<<`, `>>` - Bitwise shifts
7. `&` - Bitwise AND
8. `^` - Bitwise XOR
9. `|` - Bitwise OR
10. `==`, `!=`, `>`, `<`, `>=`, `<=`, `is`, `is not`, `in`, `not in` - Comparisons
11. `not` - Logical NOT
12. `and` - Logical AND
13. `or` - Logical OR

```python
# Example
result = 5 + 3 * 2 > 10 and not False or 1 < 2
# = 5 + 6 > 10 and not False or 1 < 2
# = 11 > 10 and not False or 1 < 2
# = True and True or True
# = True or True
# = True
print(result)  # True
```

---

## 7. Type Conversion

Convert between data types.

```python
# String to integer
age_str = "25"
age_int = int(age_str)
print(age_int + 5)  # 30

# String to float
price_str = "19.99"
price_float = float(price_str)
print(price_float * 2)  # 39.98

# Integer to string
count = 100
count_str = str(count)
print("Count: " + count_str)  # "Count: 100"

# Float to integer (truncates decimal)
value = 3.99
print(int(value))  # 3

# Boolean conversions
print(int(True))   # 1
print(int(False))  # 0
print(bool(1))     # True
print(bool(0))     # False
```

---

## 8. Mini Project: Simple Calculator

```python
print("=== Simple Calculator ===")
print("Operations: +, -, *, /, //, %, **")

# Get user input
num1 = float(input("Enter first number: "))
operator = input("Enter operator (+, -, *, /, //, %, **): ")
num2 = float(input("Enter second number: "))

# Perform calculation
if operator == '+':
    result = num1 + num2
elif operator == '-':
    result = num1 - num2
elif operator == '*':
    result = num1 * num2
elif operator == '/':
    if num2 != 0:
        result = num1 / num2
    else:
        result = "Error: Division by zero!"
elif operator == '//':
    if num2 != 0:
        result = num1 // num2
    else:
        result = "Error: Division by zero!"
elif operator == '%':
    if num2 != 0:
        result = num1 % num2
    else:
        result = "Error: Division by zero!"
elif operator == '**':
    result = num1 ** num2
else:
    result = "Error: Invalid operator!"

# Display result
print(f"\n{num1} {operator} {num2} = {result}")
```

---

## 9. Practice Exercises

### Exercise 1: Temperature Converter
```python
# Convert Celsius to Fahrenheit
# Formula: F = (C * 9/5) + 32
celsius = 25
# Calculate and print Fahrenheit
```

### Exercise 2: Area Calculator
```python
# Calculate area of different shapes
# Rectangle: length * width
# Circle: π * radius²
# Triangle: 0.5 * base * height
```

### Exercise 3: Even/Odd Checker
```python
# Check if number is even or odd using modulus operator
number = 17
# Print "Even" or "Odd"
```

### Exercise 4: Compound Interest
```python
# Formula: A = P(1 + r/n)^(nt)
# P = principal, r = rate, n = times compounded, t = years
principal = 1000
rate = 0.05
years = 5
# Calculate final amount
```

### Exercise 5: BMI Calculator
```python
# BMI = weight (kg) / height (m)²
weight = 70  # kg
height = 1.75  # meters
# Calculate and display BMI
```

---

## 10. Key Takeaways

✅ Variables store data values  
✅ Use **snake_case** for variable names  
✅ **Arithmetic operators**: +, -, *, /, //, %, **  
✅ **Assignment operators**: =, +=, -=, *=, /=  
✅ **Comparison operators**: ==, !=, >, <, >=, <=  
✅ **Logical operators**: and, or, not  
✅ **Operator precedence** matters (use parentheses!)  
✅ Type conversion: int(), float(), str()  

---

## 11. Resources

### Documentation
- [Python Operators](https://docs.python.org/3/library/operator.html)
- [Built-in Functions](https://docs.python.org/3/library/functions.html)

### Video Tutorials
- [Python Variables - Corey Schafer](https://www.youtube.com/watch?v=videoseries)
- [Operators - Programming with Mosh](https://www.youtube.com/watch?v=videoseries)

### Practice
- [W3Schools Python Operators](https://www.w3schools.com/python/python_operators.asp)
- [HackerRank Python Practice](https://www.hackerrank.com/domains/python)

---

## 12. Tomorrow's Preview: Strings

Tomorrow you'll learn:
- 🔤 String indexing and slicing
- ✂️ String methods (upper, lower, split, join)
- 📝 String formatting (f-strings, format())
- 🔍 String searching and validation
- 🎨 Working with multi-line strings

---

**🎉 Congratulations on completing Day 2!**

Checklist:
- [ ] Complete all practice exercises
- [ ] Build the simple calculator
- [ ] Experiment with all operators
- [ ] Practice variable naming conventions
- [ ] Try compound assignment operators

**See you tomorrow for Day 3! 🚀**
