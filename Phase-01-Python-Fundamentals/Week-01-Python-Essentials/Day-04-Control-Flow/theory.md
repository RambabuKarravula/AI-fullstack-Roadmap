# Day 4: Control Flow - If-Else Statements

## 📚 Learning Objectives
By the end of this day, you will:
- Master conditional statements (if, elif, else)
- Understand boolean logic and operators
- Write complex conditions
- Use ternary operators
- Implement nested conditions
- Handle multiple conditions efficiently

---

## 1. Introduction to Control Flow

Control flow determines the order in which code executes. Conditional statements allow programs to make decisions.

```python
# Without control flow - executes sequentially
print("Line 1")
print("Line 2")
print("Line 3")

# With control flow - executes conditionally
age = 18
if age >= 18:
    print("You can vote!")  # Only executes if condition is True
```

---

## 2. If Statements

### 2.1 Basic If Statement

**Syntax:**
```python
if condition:
    # code to execute if condition is True
    statement1
    statement2
```

**Example:**
```python
temperature = 30

if temperature > 25:
    print("It's hot outside!")
    print("Stay hydrated!")

# Output: It's hot outside!
#         Stay hydrated!
```

### 2.2 Indentation is Critical!

```python
# Correct indentation
if True:
    print("This is inside if")
    print("This is also inside if")
print("This is outside if")

# Wrong indentation
if True:
    print("Inside")
  print("ERROR!")  # ❌ IndentationError
```

### 2.3 Conditions Must Be Boolean

```python
# Boolean expressions
x = 10
if x > 5:       # True
    print("x is greater than 5")

if x == 10:     # True
    print("x equals 10")

if x != 20:     # True
    print("x is not 20")

# Truthy and Falsy values
if 5:           # Non-zero numbers are True
    print("This runs")

if "hello":     # Non-empty strings are True
    print("This runs")

if []:          # Empty list is False
    print("This won't run")

if None:        # None is False
    print("This won't run")
```

---

## 3. If-Else Statements

### 3.1 Basic If-Else

```python
age = 16

if age >= 18:
    print("You can vote")
else:
    print("You cannot vote yet")

# Output: You cannot vote yet
```

### 3.2 Multiple Statements in Each Block

```python
password = "secret123"

if password == "secret123":
    print("Access granted")
    print("Welcome back!")
    print("Loading dashboard...")
else:
    print("Access denied")
    print("Invalid password")
    print("Please try again")
```

---

## 4. If-Elif-Else Statements

### 4.1 Multiple Conditions

```python
score = 85

if score >= 90:
    grade = "A"
elif score >= 80:
    grade = "B"
elif score >= 70:
    grade = "C"
elif score >= 60:
    grade = "D"
else:
    grade = "F"

print(f"Your grade: {grade}")
# Output: Your grade: B
```

### 4.2 How It Works

- Python checks conditions from top to bottom
- Stops at the first True condition
- Only executes one block
- `else` is optional

```python
x = 15

if x > 20:
    print("Greater than 20")
elif x > 10:
    print("Greater than 10")  # ✅ This executes
elif x > 5:
    print("Greater than 5")   # ❌ Never checked (already found True)
else:
    print("5 or less")
```

---

## 5. Comparison Operators

```python
# Equal to
print(5 == 5)    # True
print(5 == 10)   # False

# Not equal to
print(5 != 10)   # True
print(5 != 5)    # False

# Greater than
print(10 > 5)    # True
print(5 > 10)    # False

# Less than
print(5 < 10)    # True
print(10 < 5)    # False

# Greater than or equal to
print(10 >= 10)  # True
print(10 >= 5)   # True

# Less than or equal to
print(5 <= 10)   # True
print(5 <= 5)    # True

# String comparison (alphabetical)
print("apple" < "banana")  # True
print("zebra" > "apple")   # True

# Case-sensitive
print("Apple" == "apple")  # False
print("Apple".lower() == "apple".lower())  # True
```

---

## 6. Logical Operators

### 6.1 AND Operator

**Both conditions must be True**

```python
age = 25
has_license = True

# Both must be True
if age >= 18 and has_license:
    print("You can drive")

# Truth table
print(True and True)    # True
print(True and False)   # False
print(False and True)   # False
print(False and False)  # False
```

### 6.2 OR Operator

**At least one condition must be True**

```python
is_weekend = True
is_holiday = False

# At least one must be True
if is_weekend or is_holiday:
    print("You can relax!")

# Truth table
print(True or True)     # True
print(True or False)    # True
print(False or True)    # True
print(False or False)   # False
```

### 6.3 NOT Operator

**Inverts the boolean value**

```python
is_raining = False

if not is_raining:
    print("Go for a walk")

# Examples
print(not True)         # False
print(not False)        # True
print(not (5 > 10))     # True (because 5 > 10 is False)
```

### 6.4 Combining Logical Operators

```python
age = 25
has_license = True
has_insurance = True

# Multiple conditions
if age >= 18 and has_license and has_insurance:
    print("You can rent a car")

# Complex conditions
if (age >= 18 and has_license) or (age >= 21 and has_insurance):
    print("Eligible")

# Order of operations: NOT > AND > OR
# Use parentheses for clarity!
result = not False and True or False  # True
result = not (False and True) or False  # True (clearer)
```

---

## 7. Membership Operators

### 7.1 In Operator

```python
# Check if element is in collection
fruits = ["apple", "banana", "orange"]

if "apple" in fruits:
    print("We have apples!")

# Works with strings
text = "hello world"
if "world" in text:
    print("Found 'world'")

# Works with dictionaries (checks keys)
person = {"name": "John", "age": 25}
if "name" in person:
    print("Key 'name' exists")

# Works with sets
numbers = {1, 2, 3, 4, 5}
if 3 in numbers:
    print("3 is in the set")
```

### 7.2 Not In Operator

```python
fruits = ["apple", "banana", "orange"]

if "grape" not in fruits:
    print("We don't have grapes")

# Practical example
banned_users = ["user1", "user2", "user3"]
username = "user4"

if username not in banned_users:
    print("Access granted")
```

---

## 8. Identity Operators

### 8.1 Is Operator

```python
# Check if two variables refer to same object
x = [1, 2, 3]
y = x  # y refers to same list as x
z = [1, 2, 3]  # z is a different list with same values

print(x is y)       # True (same object)
print(x is z)       # False (different objects)
print(x == z)       # True (same values)

# Common use: checking for None
value = None
if value is None:
    print("Value is None")

# Don't use 'is' for comparing values!
x = 1000
y = 1000
print(x == y)       # True ✅ Use this
print(x is y)       # False (different objects)
```

### 8.2 Is Not Operator

```python
value = 42

if value is not None:
    print("Value exists")
```

---

## 9. Nested If Statements

```python
# Nested conditions
age = 25
has_license = True
has_car = True

if age >= 18:
    if has_license:
        if has_car:
            print("You can drive your car")
        else:
            print("You can rent a car")
    else:
        print("Get a license first")
else:
    print("Too young to drive")

# Better: flatten with 'and'
if age >= 18 and has_license and has_car:
    print("You can drive your car")
elif age >= 18 and has_license:
    print("You can rent a car")
elif age >= 18:
    print("Get a license first")
else:
    print("Too young to drive")
```

---

## 10. Ternary Operator (Conditional Expression)

### 10.1 Basic Ternary

**Syntax:** `value_if_true if condition else value_if_false`

```python
# Traditional if-else
age = 20
if age >= 18:
    status = "Adult"
else:
    status = "Minor"

# Ternary operator (one line)
age = 20
status = "Adult" if age >= 18 else "Minor"

# More examples
x = 10
result = "Positive" if x > 0 else "Non-positive"

# With math
a = 5
b = 10
max_value = a if a > b else b  # 10

# In print
score = 85
print("Pass" if score >= 60 else "Fail")
```

### 10.2 Nested Ternary (Use Sparingly!)

```python
score = 85
grade = "A" if score >= 90 else "B" if score >= 80 else "C" if score >= 70 else "F"

# Better: use if-elif-else for readability
if score >= 90:
    grade = "A"
elif score >= 80:
    grade = "B"
elif score >= 70:
    grade = "C"
else:
    grade = "F"
```

---

## 11. Truthy and Falsy Values

### 11.1 Falsy Values (Evaluate to False)

```python
# All of these are False in boolean context
if False: pass          # ❌
if None: pass           # ❌
if 0: pass              # ❌
if 0.0: pass            # ❌
if "": pass             # ❌ Empty string
if []: pass             # ❌ Empty list
if {}: pass             # ❌ Empty dict
if set(): pass          # ❌ Empty set
if (): pass             # ❌ Empty tuple
```

### 11.2 Truthy Values (Evaluate to True)

```python
# Everything else is True
if True: pass           # ✅
if 1: pass              # ✅ Any non-zero number
if "hello": pass        # ✅ Any non-empty string
if [1, 2]: pass         # ✅ Non-empty list
if {"a": 1}: pass       # ✅ Non-empty dict

# Practical use
name = input("Enter name: ")
if name:  # Check if name is not empty
    print(f"Hello, {name}!")
else:
    print("Name cannot be empty")
```

---

## 12. Common Patterns

### 12.1 Input Validation

```python
# Validate age
age = int(input("Enter age: "))

if age < 0:
    print("Age cannot be negative")
elif age > 150:
    print("Invalid age")
elif age < 18:
    print("Minor")
else:
    print("Adult")

# Validate email (simple check)
email = input("Enter email: ")
if "@" in email and "." in email:
    print("Valid email format")
else:
    print("Invalid email")
```

### 12.2 Range Checking

```python
score = 85

# Check if in range
if 0 <= score <= 100:
    print("Valid score")
else:
    print("Invalid score")

# Multiple ranges
if score >= 90:
    print("Excellent")
elif 80 <= score < 90:
    print("Good")
elif 70 <= score < 80:
    print("Average")
else:
    print("Needs improvement")
```

### 12.3 Default Values

```python
# Provide default if None
username = None
display_name = username if username else "Guest"
# or simpler:
display_name = username or "Guest"

# With dictionary
config = {}
timeout = config.get("timeout") or 30  # Use 30 if not set
```

### 12.4 Early Returns (Functions)

```python
def check_age(age):
    # Early return for invalid input
    if age < 0:
        return "Invalid age"
    
    # Early return for specific case
    if age < 18:
        return "Minor"
    
    # Default case
    return "Adult"
```

---

## 13. Best Practices

### 13.1 Keep Conditions Simple

```python
# Bad - too complex
if x > 5 and (y < 10 or z == 20) and not (a == b or c != d):
    pass

# Good - break into variables
is_x_valid = x > 5
is_y_or_z_valid = y < 10 or z == 20
is_a_b_c_d_valid = not (a == b or c != d)

if is_x_valid and is_y_or_z_valid and is_a_b_c_d_valid:
    pass
```

### 13.2 Avoid Deep Nesting

```python
# Bad - deeply nested
if condition1:
    if condition2:
        if condition3:
            if condition4:
                do_something()

# Good - flat structure
if not condition1:
    return

if not condition2:
    return

if not condition3:
    return

if condition4:
    do_something()
```

### 13.3 Use Descriptive Conditions

```python
# Bad
if x > 18 and y:
    pass

# Good
MIN_AGE = 18
age = x
has_permission = y

if age > MIN_AGE and has_permission:
    pass
```

---

## 14. Common Mistakes

### 14.1 Assignment vs Comparison

```python
x = 10

# Wrong - assignment (always True)
if x = 10:  # ❌ SyntaxError
    pass

# Correct - comparison
if x == 10:  # ✅
    pass
```

### 14.2 Checking Multiple Values

```python
x = 5

# Wrong
if x == 5 or 6 or 7:  # ❌ Always True!
    pass

# Correct
if x == 5 or x == 6 or x == 7:  # ✅
    pass

# Or better
if x in [5, 6, 7]:  # ✅
    pass
```

### 14.3 Floating Point Comparison

```python
# Problematic
x = 0.1 + 0.1 + 0.1
if x == 0.3:  # ❌ Might be False due to floating point precision
    pass

# Better
import math
if math.isclose(x, 0.3):  # ✅
    pass

# Or
epsilon = 1e-9
if abs(x - 0.3) < epsilon:  # ✅
    pass
```

---

## 15. Practice Exercises

### Exercise 1: Grade Calculator
```python
# Input: score (0-100)
# Output: Grade (A, B, C, D, F) with +/- modifiers
# A: 90-100, B: 80-89, C: 70-79, D: 60-69, F: 0-59
# +: 7-9, regular: 3-6, -: 0-2
```

### Exercise 2: Leap Year Checker
```python
# A year is a leap year if:
# - Divisible by 4 AND (not divisible by 100 OR divisible by 400)
# Examples: 2000 (leap), 1900 (not leap), 2004 (leap)
```

### Exercise 3: Password Validator
```python
# Password is strong if:
# - At least 8 characters
# - Contains uppercase letter
# - Contains lowercase letter
# - Contains digit
# - Contains special character (!@#$%^&*)
```

### Exercise 4: BMI Calculator
```python
# Calculate BMI = weight(kg) / height(m)^2
# Categories:
# < 18.5: Underweight
# 18.5-24.9: Normal
# 25-29.9: Overweight
# >= 30: Obese
```

### Exercise 5: Rock Paper Scissors
```python
# Create a game where:
# - User enters choice (rock/paper/scissors)
# - Computer randomly chooses
# - Determine winner
# - Handle invalid input
```

---

## 16. Key Takeaways

✅ **if** executes code when condition is True  
✅ **elif** checks additional conditions  
✅ **else** executes when all conditions are False  
✅ **Comparison operators**: ==, !=, <, >, <=, >=  
✅ **Logical operators**: and, or, not  
✅ **Membership**: in, not in  
✅ **Identity**: is, is not  
✅ **Ternary operator** for simple conditions  
✅ Keep conditions simple and readable  
✅ Avoid deep nesting  

---

## 17. Resources

### Documentation
- [Python Control Flow](https://docs.python.org/3/tutorial/controlflow.html)
- [Boolean Operations](https://docs.python.org/3/library/stdtypes.html#boolean-operations-and-or-not)

### Video Tutorials
- [Python Conditionals - Corey Schafer](https://www.youtube.com/watch?v=DZwmZ8Usvnk)
- [If Statements - Programming with Mosh](https://www.youtube.com/watch?v=f4KOjWS_KZs)

---

## 18. Tomorrow's Preview: Loops (For & While)

Tomorrow you'll learn:
- 🔄 For loops - iterate over sequences
- ♾️ While loops - repeat until condition
- 🎯 Break and continue statements
- 🔢 Range function
- 🚀 Loop patterns and best practices

---

**🎉 Congratulations on completing Day 4!**

Checklist:
- [ ] Complete all practice exercises
- [ ] Build a simple calculator with validation
- [ ] Create a number guessing game
- [ ] Practice nested conditions
- [ ] Understand truthy/falsy values

**See you tomorrow for Day 5! 🚀**
