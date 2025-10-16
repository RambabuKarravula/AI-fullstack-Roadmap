# Day 6: Conditionals - If-Elif-Else

## 📚 Learning Objectives
By the end of this day, you will:
- Master if, elif, and else statements
- Understand comparison and logical operators
- Write nested conditional statements
- Use membership and identity operators
- Implement proper conditional logic patterns
- Build a number guessing game

---

## 1. Introduction to Conditionals

**Conditionals** allow your program to make decisions and execute different code based on conditions.

```python
age = 18

if age >= 18:
    print("You can vote!")
else:
    print("You cannot vote yet.")
```

**Real-world analogy:**
- "IF it's raining, bring umbrella"
- "IF hungry, eat food, ELSE wait"
- "IF score >= 90, grade = A, ELIF score >= 80, grade = B, ELSE grade = F"

---

## 2. Basic If Statement

**Syntax:**
```python
if condition:
    # code to execute if condition is True
    statement1
    statement2
```

**Examples:**
```python
# Simple if statement
temperature = 35
if temperature > 30:
    print("It's hot outside!")

# Multiple statements
score = 95
if score >= 90:
    print("Excellent!")
    print("You got an A!")

# Without else (nothing happens if False)
balance = 100
if balance < 0:
    print("Warning: Negative balance!")
# If balance >= 0, nothing prints
```

**Important: Indentation**
```python
# ✅ Correct
if True:
    print("Indented")

# ❌ Wrong - IndentationError
if True:
print("Not indented")
```

---

## 3. If-Else Statement

**Execute one block if True, another if False**

**Syntax:**
```python
if condition:
    # execute if True
    statement1
else:
    # execute if False
    statement2
```

**Examples:**
```python
# Simple if-else
age = 16
if age >= 18:
    print("You can vote")
else:
    print("You cannot vote yet")

# Even/odd checker
number = 7
if number % 2 == 0:
    print(f"{number} is even")
else:
    print(f"{number} is odd")

# Grade checker
score = 75
if score >= 60:
    print("Pass")
else:
    print("Fail")
```

---

## 4. If-Elif-Else Statement

**Multiple conditions - check in order**

**Syntax:**
```python
if condition1:
    # execute if condition1 is True
elif condition2:
    # execute if condition2 is True
elif condition3:
    # execute if condition3 is True
else:
    # execute if all above are False
```

**Examples:**
```python
# Grade calculator
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

# Weather advice
temperature = 25
if temperature > 30:
    print("It's hot! Drink water.")
elif temperature > 20:
    print("Nice weather!")
elif temperature > 10:
    print("A bit cool, wear a jacket.")
else:
    print("It's cold! Wear a coat.")

# Multiple categories
age = 35
if age < 13:
    category = "Child"
elif age < 20:
    category = "Teenager"
elif age < 60:
    category = "Adult"
else:
    category = "Senior"
print(f"Category: {category}")
```

**Important:** Only **one block** executes (first True condition)
```python
score = 95
if score >= 60:
    print("Pass")  # This executes
elif score >= 90:
    print("Excellent")  # This NEVER executes (even though True)
```

---

## 5. Comparison Operators

Used to compare values in conditions.

| Operator | Meaning | Example |
|----------|---------|---------|
| `==` | Equal to | `5 == 5` → True |
| `!=` | Not equal to | `5 != 3` → True |
| `>` | Greater than | `7 > 5` → True |
| `<` | Less than | `3 < 5` → True |
| `>=` | Greater than or equal | `5 >= 5` → True |
| `<=` | Less than or equal | `4 <= 5` → True |

**Examples:**
```python
# Equality
x = 10
print(x == 10)  # True
print(x == 5)   # False
print(x != 5)   # True

# Greater/Less than
age = 20
print(age > 18)   # True
print(age >= 20)  # True
print(age < 18)   # False

# String comparison
name = "Alice"
print(name == "Alice")  # True
print(name == "alice")  # False (case-sensitive!)

# Multiple comparisons
score = 85
print(score > 80 and score < 90)  # True
print(80 < score < 90)  # True (Pythonic way!)
```

---

## 6. Logical Operators

Combine multiple conditions.

| Operator | Meaning | Example |
|----------|---------|---------|
| `and` | Both must be True | `True and True` → True |
| `or` | At least one True | `True or False` → True |
| `not` | Reverse boolean | `not True` → False |

### 6.1 AND Operator

**Both conditions must be True**

```python
# Simple and
age = 25
has_license = True

if age >= 18 and has_license:
    print("You can drive")

# Multiple and conditions
score = 85
attendance = 90

if score >= 80 and attendance >= 75 and score <= 100:
    print("Eligible for scholarship")

# And with numbers
x = 15
if x > 10 and x < 20:
    print("x is between 10 and 20")

# Pythonic way
if 10 < x < 20:
    print("x is between 10 and 20")
```

**Truth Table:**
| A | B | A and B |
|---|---|---------|
| True | True | True |
| True | False | False |
| False | True | False |
| False | False | False |

### 6.2 OR Operator

**At least one condition must be True**

```python
# Simple or
day = "Saturday"

if day == "Saturday" or day == "Sunday":
    print("It's the weekend!")

# Multiple or conditions
weather = "rainy"

if weather == "rainy" or weather == "snowy" or weather == "stormy":
    print("Stay inside!")

# Or with membership
fruit = "apple"
if fruit == "apple" or fruit == "banana" or fruit == "orange":
    print("Valid fruit")

# Better way (using in)
if fruit in ["apple", "banana", "orange"]:
    print("Valid fruit")
```

**Truth Table:**
| A | B | A or B |
|---|---|--------|
| True | True | True |
| True | False | True |
| False | True | True |
| False | False | False |

### 6.3 NOT Operator

**Reverses boolean value**

```python
# Simple not
is_raining = False

if not is_raining:
    print("You can go outside")

# Not with comparison
age = 16
if not age >= 18:
    print("You are not an adult")

# Same as:
if age < 18:
    print("You are not an adult")

# Not with membership
username = "admin"
if username not in ["admin", "root", "superuser"]:
    print("Regular user")
```

**Truth Table:**
| A | not A |
|---|-------|
| True | False |
| False | True |

### 6.4 Combining Logical Operators

```python
# and + or
age = 25
is_student = True

if (age < 30 or is_student) and age >= 18:
    print("Eligible for discount")

# Use parentheses for clarity
score = 85
bonus = 10

if (score + bonus) >= 90 and score >= 80:
    print("High achiever")

# Complex condition
temperature = 28
is_sunny = True
is_weekend = True

if temperature > 25 and is_sunny and (is_weekend or temperature > 30):
    print("Perfect day for the beach!")
```

**Operator Precedence:**
1. `not` (highest)
2. `and`
3. `or` (lowest)

```python
# Without parentheses
result = True or False and False
print(result)  # True (and evaluated first)

# With parentheses (clearer!)
result = True or (False and False)
print(result)  # True
```

---

## 7. Membership Operators

Check if value exists in sequence.

| Operator | Meaning |
|----------|---------|
| `in` | Value exists in sequence |
| `not in` | Value doesn't exist in sequence |

**Examples:**
```python
# in operator with lists
fruits = ["apple", "banana", "orange"]
if "apple" in fruits:
    print("Apple is available")

# not in operator
if "mango" not in fruits:
    print("Mango is not available")

# in operator with strings
text = "Hello World"
if "Hello" in text:
    print("Found 'Hello'")

# in operator with dictionaries (checks keys)
person = {"name": "John", "age": 25}
if "name" in person:
    print("Name key exists")

# in operator with tuples
coordinates = (10, 20, 30)
if 20 in coordinates:
    print("20 is in coordinates")

# Practical example
valid_users = ["admin", "user1", "user2"]
username = input("Enter username: ")
if username in valid_users:
    print("Access granted")
else:
    print("Access denied")
```

---

## 8. Identity Operators

Check if objects are **the same object in memory** (not just equal value).

| Operator | Meaning |
|----------|---------|
| `is` | Same object |
| `is not` | Different objects |

**Examples:**
```python
# is vs ==
a = [1, 2, 3]
b = [1, 2, 3]
c = a

print(a == b)  # True (same values)
print(a is b)  # False (different objects)
print(a is c)  # True (same object)

# Common use: checking None
value = None
if value is None:
    print("Value is None")

# Better than:
if value == None:  # Works but not recommended
    print("Value is None")

# Checking True/False
flag = True
if flag is True:
    print("Flag is True")

# But simpler:
if flag:
    print("Flag is True")
```

**Important:** Use `is` for **None, True, False**. Use `==` for **value comparison**.

---

## 9. Nested Conditionals

**Conditionals inside conditionals**

**Syntax:**
```python
if condition1:
    if condition2:
        # both True
    else:
        # condition1 True, condition2 False
else:
    # condition1 False
```

**Examples:**
```python
# Simple nested if
age = 20
has_id = True

if age >= 18:
    if has_id:
        print("Entry allowed")
    else:
        print("Need ID")
else:
    print("Too young")

# Multiple levels
score = 85
attendance = 90

if score >= 60:
    if attendance >= 75:
        if score >= 80:
            print("Eligible for honors")
        else:
            print("Pass with good attendance")
    else:
        print("Pass but poor attendance")
else:
    print("Fail")

# Better: flatten with and
if score >= 60 and attendance >= 75:
    if score >= 80:
        print("Eligible for honors")
    else:
        print("Pass with good attendance")
elif score >= 60:
    print("Pass but poor attendance")
else:
    print("Fail")
```

**Best Practice:** Avoid deep nesting (max 2-3 levels). Use `and`/`or` to flatten.

---

## 10. Ternary (Conditional) Operator

**Short one-line if-else**

**Syntax:**
```python
value_if_true if condition else value_if_false
```

**Examples:**
```python
# Simple ternary
age = 20
status = "Adult" if age >= 18 else "Minor"
print(status)  # "Adult"

# Equivalent to:
if age >= 18:
    status = "Adult"
else:
    status = "Minor"

# With calculations
number = 7
result = "Even" if number % 2 == 0 else "Odd"
print(result)  # "Odd"

# Nested ternary (avoid if possible!)
score = 85
grade = "A" if score >= 90 else "B" if score >= 80 else "C"

# In function returns
def max_value(a, b):
    return a if a > b else b

print(max_value(10, 5))  # 10
```

**When to use:** Simple cases. For complex logic, use regular if-else.

---

## 11. Truthy and Falsy Values

Python evaluates certain values as **True or False** in boolean context.

**Falsy values** (evaluate to False):
- `False`
- `None`
- `0`, `0.0`
- Empty collections: `""`, `[]`, `()`, `{}`, `set()`

**Truthy values** (evaluate to True):
- `True`
- Any non-zero number
- Non-empty collections

**Examples:**
```python
# Checking empty list
items = []
if items:
    print("List has items")
else:
    print("List is empty")  # This prints

# Checking string
name = ""
if name:
    print(f"Hello {name}")
else:
    print("No name provided")  # This prints

# Checking number
count = 0
if count:
    print("Count is non-zero")
else:
    print("Count is zero")  # This prints

# Checking None
result = None
if result:
    print("Result exists")
else:
    print("No result")  # This prints

# Practical example
user_input = input("Enter something: ")
if user_input:
    print(f"You entered: {user_input}")
else:
    print("You didn't enter anything")
```

---

## 12. Common Patterns

### 12.1 Input Validation

```python
# Validate number range
age = int(input("Enter your age: "))
if 0 < age < 150:
    print("Valid age")
else:
    print("Invalid age")

# Validate string input
choice = input("Enter (y/n): ").lower()
if choice in ['y', 'yes']:
    print("You chose yes")
elif choice in ['n', 'no']:
    print("You chose no")
else:
    print("Invalid choice")
```

### 12.2 Default Values

```python
# Set default if empty
name = input("Enter name: ")
name = name if name else "Anonymous"
print(f"Hello {name}")

# Or using or operator
name = input("Enter name: ") or "Anonymous"
print(f"Hello {name}")
```

### 12.3 Guard Clauses

```python
# Exit early if condition not met
def process_order(items):
    if not items:
        print("No items to process")
        return
    
    if len(items) > 100:
        print("Too many items")
        return
    
    # Main processing logic here
    print("Processing order...")

process_order([])  # "No items to process"
```

---

## 13. Mini Project: Number Guessing Game

```python
import random

# Generate random number
secret_number = random.randint(1, 100)
attempts = 0
max_attempts = 7

print("🎮 Number Guessing Game!")
print(f"Guess a number between 1 and 100")
print(f"You have {max_attempts} attempts")

while attempts < max_attempts:
    guess = int(input("\nEnter your guess: "))
    attempts += 1
    
    if guess == secret_number:
        print(f"🎉 Congratulations! You guessed it in {attempts} attempts!")
        break
    elif guess < secret_number:
        print("📈 Too low! Try higher.")
    else:
        print("📉 Too high! Try lower.")
    
    remaining = max_attempts - attempts
    if remaining > 0:
        print(f"Attempts remaining: {remaining}")
    else:
        print(f"\n😢 Game Over! The number was {secret_number}")
```

---

## 14. Practice Exercises

### Exercise 1: Login System
```python
# Create a simple login system
# Username: "admin", Password: "secret123"
# Give 3 attempts
```

### Exercise 2: Grade Calculator
```python
# Input: score (0-100)
# Output:
# 90-100: A, 80-89: B, 70-79: C, 60-69: D, <60: F
# Also check if score is valid (0-100)
```

### Exercise 3: Leap Year Checker
```python
# A year is a leap year if:
# - Divisible by 4 AND
# - (Not divisible by 100 OR divisible by 400)
# Examples: 2000 (leap), 1900 (not leap), 2024 (leap)
```

### Exercise 4: BMI Calculator
```python
# BMI = weight (kg) / height (m)^2
# < 18.5: Underweight
# 18.5-24.9: Normal
# 25-29.9: Overweight
# >= 30: Obese
```

### Exercise 5: Triangle Classifier
```python
# Input: 3 sides (a, b, c)
# Check if valid triangle: sum of any 2 sides > third side
# Classify: Equilateral (all equal), Isosceles (2 equal), Scalene (none equal)
```

---

## 15. Key Takeaways

✅ **if** executes code when condition is True  
✅ **elif** checks additional conditions  
✅ **else** executes when all conditions are False  
✅ **Comparison operators**: ==, !=, >, <, >=, <=  
✅ **Logical operators**: and, or, not  
✅ **Membership**: in, not in  
✅ **Identity**: is, is not  
✅ Only **first True condition** executes  
✅ Use **ternary operator** for simple cases  
✅ **Flatten nested conditions** with and/or  

---

## 16. Resources

### Documentation
- [Python If-Else](https://docs.python.org/3/tutorial/controlflow.html#if-statements)
- [Comparison Operators](https://docs.python.org/3/library/stdtypes.html#comparisons)

### Video Tutorials
- [Python Conditionals - Corey Schafer](https://www.youtube.com/watch?v=DZwmZ8Usvnk)
- [If Statements - Programming with Mosh](https://www.youtube.com/watch?v=videoseries)

### Practice
- [HackerRank Conditional Statements](https://www.hackerrank.com/domains/python?filters%5Bsubdomains%5D%5B%5D=py-basic-data-types)

---

## 17. Tomorrow's Preview: Loops (For & While)

Tomorrow you'll learn:
- 🔄 For loops and while loops
- 📊 range() function
- 🛑 break and continue statements
- 🔁 Nested loops
- 🎯 Loop patterns and best practices

---

**🎉 Congratulations on completing Day 6!**

Checklist:
- [ ] Complete all practice exercises
- [ ] Build the number guessing game
- [ ] Create a login system with validation
- [ ] Build a calculator with error handling
- [ ] Practice nested conditions

**See you tomorrow for Day 7! 🚀**
