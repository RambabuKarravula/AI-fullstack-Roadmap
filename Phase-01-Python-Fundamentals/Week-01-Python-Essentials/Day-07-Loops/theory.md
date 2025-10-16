# Day 7: Loops - For & While (Advanced Practice)

## 📚 Learning Objectives
By the end of this day, you will:
- Master advanced loop patterns
- Build multiplication table generator
- Create pattern printing programs
- Solve loop-based problems
- Combine loops with conditionals
- Build practical projects

---

## 1. Recap: For & While Loops

### For Loop
```python
# Iterate over sequence
for item in sequence:
    # code

# With range
for i in range(5):
    print(i)
```

### While Loop
```python
# Repeat while condition is True
while condition:
    # code
    # update condition!
```

---

## 2. Project 1: Multiplication Table Generator

### 2.1 Single Table
```python
# Print multiplication table for a number
number = 5

print(f"Multiplication Table for {number}")
print("-" * 25)

for i in range(1, 11):
    result = number * i
    print(f"{number} x {i:2} = {result:3}")

# Output:
# Multiplication Table for 5
# -------------------------
# 5 x  1 =   5
# 5 x  2 =  10
# 5 x  3 =  15
# ...
# 5 x 10 =  50
```

### 2.2 Multiple Tables
```python
# Print tables from 1 to 10
for num in range(1, 11):
    print(f"\nTable of {num}")
    print("-" * 15)
    for i in range(1, 11):
        print(f"{num} x {i:2} = {num * i:3}")
```

### 2.3 Custom Range Tables
```python
# User-defined table range
start = int(input("Start table from: "))
end = int(input("End table at: "))
multiply_to = int(input("Multiply up to: "))

for num in range(start, end + 1):
    print(f"\n{'='*20}")
    print(f"  Table of {num}")
    print('='*20)
    for i in range(1, multiply_to + 1):
        print(f"{num} x {i:2} = {num * i:4}")
```

### 2.4 Formatted Grid
```python
# Multiplication grid (1-10)
print("    ", end="")
for i in range(1, 11):
    print(f"{i:4}", end="")
print("\n" + "-" * 45)

for i in range(1, 11):
    print(f"{i:2} |", end="")
    for j in range(1, 11):
        print(f"{i * j:4}", end="")
    print()

# Output:
#        1   2   3   4   5   6   7   8   9  10
# ---------------------------------------------
#  1 |   1   2   3   4   5   6   7   8   9  10
#  2 |   2   4   6   8  10  12  14  16  18  20
#  3 |   3   6   9  12  15  18  21  24  27  30
# ...
```

---

## 3. Project 2: Pattern Printing

### 3.1 Right Triangle
```python
# Pattern 1: Right triangle
n = 5
for i in range(1, n + 1):
    print("* " * i)

# Output:
# *
# * *
# * * *
# * * * *
# * * * * *
```

### 3.2 Number Patterns
```python
# Pattern 2: Number triangle
n = 5
for i in range(1, n + 1):
    for j in range(1, i + 1):
        print(j, end=" ")
    print()

# Output:
# 1
# 1 2
# 1 2 3
# 1 2 3 4
# 1 2 3 4 5

# Pattern 3: Repeating number
for i in range(1, n + 1):
    print(str(i) * i)

# Output:
# 1
# 22
# 333
# 4444
# 55555
```

### 3.3 Pyramid Pattern
```python
# Centered pyramid
n = 5
for i in range(1, n + 1):
    # Print spaces
    print(" " * (n - i), end="")
    # Print stars
    print("* " * i)

# Output:
#     *
#    * *
#   * * *
#  * * * *
# * * * * *

# Diamond pattern
n = 5
# Upper half
for i in range(1, n + 1):
    print(" " * (n - i) + "* " * i)
# Lower half
for i in range(n - 1, 0, -1):
    print(" " * (n - i) + "* " * i)

# Output:
#     *
#    * *
#   * * *
#  * * * *
# * * * * *
#  * * * *
#   * * *
#    * *
#     *
```

### 3.4 Inverted Patterns
```python
# Inverted triangle
n = 5
for i in range(n, 0, -1):
    print("* " * i)

# Output:
# * * * * *
# * * * *
# * * *
# * *
# *

# Right-aligned inverted
for i in range(n, 0, -1):
    print(" " * (n - i) + "* " * i)

# Output:
# * * * * *
#  * * * *
#   * * *
#    * *
#     *
```

### 3.5 Hollow Patterns
```python
# Hollow square
n = 5
for i in range(n):
    for j in range(n):
        if i == 0 or i == n - 1 or j == 0 or j == n - 1:
            print("*", end=" ")
        else:
            print(" ", end=" ")
    print()

# Output:
# * * * * *
# *       *
# *       *
# *       *
# * * * * *

# Hollow pyramid
n = 5
for i in range(1, n + 1):
    print(" " * (n - i), end="")
    for j in range(1, 2 * i):
        if j == 1 or j == 2 * i - 1 or i == n:
            print("*", end="")
        else:
            print(" ", end="")
    print()

# Output:
#     *
#    * *
#   *   *
#  *     *
# *********
```

---

## 4. Advanced Loop Techniques

### 4.1 Loop with Else
```python
# else executes if loop completes without break
for i in range(5):
    if i == 10:  # Never true
        break
    print(i)
else:
    print("Loop completed normally")

# Output:
# 0
# 1
# 2
# 3
# 4
# Loop completed normally

# With break (else doesn't execute)
for i in range(5):
    if i == 3:
        break
    print(i)
else:
    print("This won't print")

# Output:
# 0
# 1
# 2
```

### 4.2 List Comprehension (Alternative to Loops)
```python
# Traditional loop
squares = []
for i in range(10):
    squares.append(i ** 2)

# List comprehension (one line!)
squares = [i ** 2 for i in range(10)]
print(squares)  # [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]

# With condition
evens = [i for i in range(20) if i % 2 == 0]
print(evens)  # [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]

# Nested comprehension
matrix = [[i * j for j in range(1, 6)] for i in range(1, 6)]
# Creates 5x5 multiplication table
```

### 4.3 Loop with Multiple Variables
```python
# Multiple variables in for loop
for i, j in [(1, 2), (3, 4), (5, 6)]:
    print(f"i={i}, j={j}")

# With enumerate
fruits = ["apple", "banana", "orange"]
for index, fruit in enumerate(fruits, start=1):
    print(f"{index}. {fruit}")

# With zip
names = ["Alice", "Bob", "Charlie"]
scores = [85, 90, 95]
for name, score in zip(names, scores):
    print(f"{name}: {score}")
```

---

## 5. Common Loop Problems

### 5.1 Fibonacci Sequence
```python
# Generate first n Fibonacci numbers
n = 10
fib = [0, 1]
for i in range(2, n):
    fib.append(fib[i-1] + fib[i-2])
print(fib)

# Output: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
```

### 5.2 Prime Number Checker
```python
# Check if number is prime
def is_prime(num):
    if num < 2:
        return False
    for i in range(2, int(num ** 0.5) + 1):
        if num % i == 0:
            return False
    return True

# Test
print(is_prime(17))  # True
print(is_prime(20))  # False

# Find all primes up to n
n = 50
primes = []
for num in range(2, n + 1):
    if is_prime(num):
        primes.append(num)
print(primes)
```

### 5.3 Factorial Calculator
```python
# Calculate factorial
def factorial(n):
    result = 1
    for i in range(1, n + 1):
        result *= i
    return result

print(factorial(5))  # 120
print(factorial(0))  # 1
```

### 5.4 Reverse String/List
```python
# Reverse string without [::-1]
text = "Python"
reversed_text = ""
for char in text:
    reversed_text = char + reversed_text
print(reversed_text)  # "nohtyP"

# Or using range
text = "Python"
reversed_text = ""
for i in range(len(text) - 1, -1, -1):
    reversed_text += text[i]
print(reversed_text)
```

### 5.5 Count Vowels
```python
# Count vowels in string
text = "Hello World"
vowels = "aeiouAEIOU"
count = 0
for char in text:
    if char in vowels:
        count += 1
print(f"Vowels: {count}")  # 3

# With dictionary (count each vowel)
vowel_count = {}
for char in text.lower():
    if char in "aeiou":
        vowel_count[char] = vowel_count.get(char, 0) + 1
print(vowel_count)  # {'e': 1, 'o': 2}
```

---

## 6. Practical Mini Projects

### 6.1 Simple Calculator
```python
print("Simple Calculator")
while True:
    print("\nOperations:")
    print("1. Add")
    print("2. Subtract")
    print("3. Multiply")
    print("4. Divide")
    print("5. Exit")
    
    choice = input("Choose operation (1-5): ")
    
    if choice == '5':
        print("Goodbye!")
        break
    
    if choice in ['1', '2', '3', '4']:
        num1 = float(input("Enter first number: "))
        num2 = float(input("Enter second number: "))
        
        if choice == '1':
            print(f"Result: {num1 + num2}")
        elif choice == '2':
            print(f"Result: {num1 - num2}")
        elif choice == '3':
            print(f"Result: {num1 * num2}")
        elif choice == '4':
            if num2 != 0:
                print(f"Result: {num1 / num2}")
            else:
                print("Error: Division by zero!")
    else:
        print("Invalid choice!")
```

### 6.2 Password Validator
```python
# Validate password strength
def validate_password(password):
    if len(password) < 8:
        return "Too short (minimum 8 characters)"
    
    has_upper = False
    has_lower = False
    has_digit = False
    has_special = False
    
    for char in password:
        if char.isupper():
            has_upper = True
        elif char.islower():
            has_lower = True
        elif char.isdigit():
            has_digit = True
        elif char in "!@#$%^&*":
            has_special = True
    
    if not has_upper:
        return "Need uppercase letter"
    if not has_lower:
        return "Need lowercase letter"
    if not has_digit:
        return "Need digit"
    if not has_special:
        return "Need special character (!@#$%^&*)"
    
    return "Strong password!"

# Test
while True:
    pwd = input("Enter password (or 'quit'): ")
    if pwd.lower() == 'quit':
        break
    print(validate_password(pwd))
```

### 6.3 To-Do List Manager
```python
tasks = []

while True:
    print("\n=== To-Do List ===")
    print("1. Add task")
    print("2. View tasks")
    print("3. Remove task")
    print("4. Exit")
    
    choice = input("Choose option: ")
    
    if choice == '1':
        task = input("Enter task: ")
        tasks.append(task)
        print("Task added!")
    
    elif choice == '2':
        if not tasks:
            print("No tasks yet!")
        else:
            print("\nYour tasks:")
            for i, task in enumerate(tasks, 1):
                print(f"{i}. {task}")
    
    elif choice == '3':
        if not tasks:
            print("No tasks to remove!")
        else:
            print("\nYour tasks:")
            for i, task in enumerate(tasks, 1):
                print(f"{i}. {task}")
            try:
                num = int(input("Enter task number to remove: "))
                if 1 <= num <= len(tasks):
                    removed = tasks.pop(num - 1)
                    print(f"Removed: {removed}")
                else:
                    print("Invalid task number!")
            except ValueError:
                print("Please enter a number!")
    
    elif choice == '4':
        print("Goodbye!")
        break
    
    else:
        print("Invalid choice!")
```

---

## 7. Practice Exercises

### Exercise 1: Armstrong Number
```python
# A number is Armstrong if sum of cubes of digits equals the number
# Example: 153 = 1³ + 5³ + 3³ = 1 + 125 + 27 = 153
# Check if a number is Armstrong
```

### Exercise 2: Palindrome Checker
```python
# Check if string reads same forwards and backwards
# Examples: "madam", "racecar", "A man a plan a canal Panama"
# Ignore spaces and case
```

### Exercise 3: Sum of Digits
```python
# Calculate sum of all digits in a number
# Example: 12345 → 1+2+3+4+5 = 15
```

### Exercise 4: GCD Calculator
```python
# Find Greatest Common Divisor of two numbers
# Example: GCD(48, 18) = 6
# Use Euclidean algorithm
```

### Exercise 5: ASCII Art Generator
```python
# Create your own ASCII art pattern
# Use nested loops
# Make it customizable (size, character, etc.)
```

---

## 8. Key Takeaways

✅ **Loops** are powerful for repetitive tasks  
✅ **For loops** for known iterations  
✅ **While loops** for unknown iterations  
✅ **Nested loops** for 2D patterns  
✅ **Break** exits loop, **continue** skips iteration  
✅ **List comprehensions** provide concise alternatives  
✅ Combine **loops with conditionals** for complex logic  
✅ Always ensure **while loop conditions** update  

---

## 9. Week 1 Completion Checklist

- [ ] Completed all 7 days of Python Essentials
- [ ] Built multiplication table generator
- [ ] Created pattern printing programs
- [ ] Completed number guessing game
- [ ] Built at least 3 mini projects
- [ ] Solved all practice exercises
- [ ] Comfortable with for and while loops
- [ ] Can combine loops with conditionals

---

## 10. Resources

### Documentation
- [Python Loops](https://docs.python.org/3/tutorial/controlflow.html)
- [List Comprehensions](https://docs.python.org/3/tutorial/datastructures.html#list-comprehensions)

### Video Tutorials
- [Python Pattern Programs](https://www.youtube.com/results?search_query=python+pattern+programs)
- [Loop Practice Problems](https://www.youtube.com/results?search_query=python+loop+problems)

### Practice Platforms
- [HackerRank Python Loops](https://www.hackerrank.com/domains/python?filters%5Bsubdomains%5D%5B%5D=py-basic-data-types)
- [LeetCode Easy Problems](https://leetcode.com/problemset/all/?difficulty=Easy)
- [CodingBat Python](https://codingbat.com/python)

---

## 11. Next Week Preview: Functions & Modules

In Week 2, you'll learn:
- 📦 Functions and scopes
- 🔧 Lambda functions
- 📚 Built-in functions (map, filter, reduce)
- 📁 Modules and packages
- 🎯 Exception handling
- 📝 File I/O operations

---

**🎉 Congratulations on completing Week 1! 🎉**

You've mastered:
- ✅ Python setup and syntax
- ✅ Variables and data types
- ✅ Strings and methods
- ✅ Lists, tuples, dictionaries, sets
- ✅ Conditionals (if-elif-else)
- ✅ Loops (for and while)
- ✅ Pattern printing and problem-solving

**Take a break, review your notes, and get ready for Week 2! 🚀**
