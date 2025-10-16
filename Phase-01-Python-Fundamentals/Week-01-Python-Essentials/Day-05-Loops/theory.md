# Day 5: Loops - For & While

## 📚 Learning Objectives
By the end of this day, you will:
- Master for loops and while loops
- Understand the range() function
- Use break, continue, and pass statements
- Write nested loops
- Implement common loop patterns
- Avoid infinite loops

---

## 1. Introduction to Loops

Loops allow you to **repeat code multiple times** without writing it repeatedly.

```python
# Without loops - repetitive!
print("Hello 1")
print("Hello 2")
print("Hello 3")
print("Hello 4")
print("Hello 5")

# With loop - elegant!
for i in range(1, 6):
    print(f"Hello {i}")
```

**Two types of loops:**
- **For loop**: Iterate over a sequence (list, string, range)
- **While loop**: Repeat while a condition is True

---

## 2. For Loops

### 2.1 Basic For Loop

**Syntax:**
```python
for variable in sequence:
    # code to repeat
    statement1
    statement2
```

**Examples:**
```python
# Iterating over a list
fruits = ["apple", "banana", "orange"]
for fruit in fruits:
    print(fruit)

# Iterating over a string
for char in "Python":
    print(char)

# Iterating over a tuple
coordinates = (10, 20, 30)
for coord in coordinates:
    print(coord)

# Iterating over a set
numbers = {1, 2, 3, 4, 5}
for num in numbers:
    print(num)

# Iterating over dictionary keys
person = {"name": "John", "age": 25, "city": "NYC"}
for key in person:
    print(f"{key}: {person[key]}")

# Better: iterate over items
for key, value in person.items():
    print(f"{key}: {value}")
```

### 2.2 The range() Function

**range()** generates a sequence of numbers.

**Syntax:**
- `range(stop)` - from 0 to stop-1
- `range(start, stop)` - from start to stop-1
- `range(start, stop, step)` - from start to stop-1, incrementing by step

```python
# range(stop)
for i in range(5):
    print(i)  # 0, 1, 2, 3, 4

# range(start, stop)
for i in range(2, 6):
    print(i)  # 2, 3, 4, 5

# range(start, stop, step)
for i in range(0, 10, 2):
    print(i)  # 0, 2, 4, 6, 8

# Negative step (countdown)
for i in range(10, 0, -1):
    print(i)  # 10, 9, 8, ..., 1

# Convert to list
numbers = list(range(5))  # [0, 1, 2, 3, 4]
```

### 2.3 Enumerate() Function

Get both **index and value** while looping.

```python
fruits = ["apple", "banana", "orange"]

# Without enumerate
for i in range(len(fruits)):
    print(f"{i}: {fruits[i]}")

# With enumerate (better!)
for index, fruit in enumerate(fruits):
    print(f"{index}: {fruit}")

# Start counting from 1
for num, fruit in enumerate(fruits, start=1):
    print(f"{num}. {fruit}")

# Output:
# 1. apple
# 2. banana
# 3. orange
```

### 2.4 Zip() Function

**Combine multiple iterables** and iterate together.

```python
names = ["Alice", "Bob", "Charlie"]
ages = [25, 30, 35]
cities = ["NYC", "LA", "Chicago"]

# Iterate multiple lists together
for name, age, city in zip(names, ages, cities):
    print(f"{name} is {age} years old and lives in {city}")

# Output:
# Alice is 25 years old and lives in NYC
# Bob is 30 years old and lives in LA
# Charlie is 35 years old and lives in Chicago

# zip stops at shortest list
list1 = [1, 2, 3, 4, 5]
list2 = ['a', 'b', 'c']
for num, letter in zip(list1, list2):
    print(num, letter)  # Only 3 iterations
```

---

## 3. While Loops

### 3.1 Basic While Loop

**Repeats as long as condition is True**

**Syntax:**
```python
while condition:
    # code to repeat
    statement1
    statement2
```

**Examples:**
```python
# Count to 5
count = 1
while count <= 5:
    print(count)
    count += 1  # IMPORTANT: update condition!

# User input loop
password = ""
while password != "secret":
    password = input("Enter password: ")
print("Access granted!")

# Process until empty
items = ["apple", "banana", "orange"]
while items:
    print(items.pop())  # Removes and prints last item
```

### 3.2 Infinite Loops (Be Careful!)

```python
# ❌ DANGER: Infinite loop!
while True:
    print("This never stops!")  # Ctrl+C to stop

# ✅ Proper infinite loop with break
while True:
    response = input("Continue? (yes/no): ")
    if response.lower() == "no":
        break
    print("Processing...")
```

### 3.3 For vs While

| For Loop | While Loop |
|----------|------------|
| Known iterations | Unknown iterations |
| Iterate over sequences | Repeat until condition |
| Simpler syntax | More flexible |
| Less prone to infinite loops | Risk of infinite loops |

**When to use:**
- **For**: Know number of iterations, iterating over collection
- **While**: Don't know iterations, waiting for condition

---

## 4. Break Statement

**Exit loop immediately**, regardless of condition.

```python
# Stop at first match
numbers = [1, 3, 5, 7, 8, 9, 11]
for num in numbers:
    if num % 2 == 0:  # Found even number
        print(f"First even number: {num}")
        break

# Search for value
fruits = ["apple", "banana", "orange", "grape"]
search = "orange"
for fruit in fruits:
    if fruit == search:
        print(f"Found {search}!")
        break
else:  # Executes if loop completes without break
    print(f"{search} not found")

# Game loop
while True:
    command = input("Enter command (quit to exit): ")
    if command == "quit":
        break
    print(f"Executing: {command}")
```

---

## 5. Continue Statement

**Skip to next iteration**, without exiting loop.

```python
# Skip even numbers
for i in range(10):
    if i % 2 == 0:
        continue  # Skip rest of loop body
    print(i)  # Only odd numbers

# Output: 1, 3, 5, 7, 9

# Skip specific values
for num in range(1, 11):
    if num == 5:
        continue  # Skip 5
    print(num)

# Process only valid items
items = ["apple", "", "banana", None, "orange", ""]
for item in items:
    if not item:  # Skip empty or None
        continue
    print(f"Processing: {item}")
```

---

## 6. Pass Statement

**Placeholder** - does nothing, used when syntax requires a statement.

```python
# Empty loop body (placeholder)
for i in range(5):
    pass  # TODO: implement later

# Empty function
def future_function():
    pass  # Will implement later

# Empty class
class FutureClass:
    pass

# Conditional placeholder
if condition:
    pass  # Will add logic later
else:
    print("False case")
```

---

## 7. Nested Loops

### 7.1 Basic Nested Loops

```python
# Nested for loops
for i in range(3):
    for j in range(3):
        print(f"({i}, {j})", end=" ")
    print()  # New line after inner loop

# Output:
# (0, 0) (0, 1) (0, 2)
# (1, 0) (1, 1) (1, 2)
# (2, 0) (2, 1) (2, 2)

# Multiplication table
for i in range(1, 11):
    for j in range(1, 11):
        print(f"{i * j:4}", end=" ")
    print()
```

### 7.2 Nested with Lists

```python
# 2D list (matrix)
matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

# Print matrix
for row in matrix:
    for element in row:
        print(element, end=" ")
    print()

# Sum all elements
total = 0
for row in matrix:
    for element in row:
        total += element
print(f"Sum: {total}")
```

### 7.3 Break in Nested Loops

```python
# Break only exits innermost loop
for i in range(3):
    for j in range(3):
        if j == 1:
            break  # Only breaks inner loop
        print(f"({i}, {j})")

# To break both loops, use a flag
found = False
for i in range(5):
    for j in range(5):
        if i == 2 and j == 2:
            found = True
            break
    if found:
        break
```

---

## 8. Common Loop Patterns

### 8.1 Accumulator Pattern

```python
# Sum of numbers
numbers = [1, 2, 3, 4, 5]
total = 0
for num in numbers:
    total += num
print(total)  # 15

# Concatenate strings
words = ["Hello", " ", "World", "!"]
result = ""
for word in words:
    result += word
print(result)  # "Hello World!"

# Build list
squares = []
for i in range(1, 6):
    squares.append(i ** 2)
print(squares)  # [1, 4, 9, 16, 25]
```

### 8.2 Counter Pattern

```python
# Count occurrences
text = "hello world"
count = 0
for char in text:
    if char == 'l':
        count += 1
print(f"'l' appears {count} times")

# Count even numbers
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
even_count = 0
for num in numbers:
    if num % 2 == 0:
        even_count += 1
print(f"Even numbers: {even_count}")
```

### 8.3 Search Pattern

```python
# Linear search
numbers = [10, 20, 30, 40, 50]
target = 30
found_index = -1

for i in range(len(numbers)):
    if numbers[i] == target:
        found_index = i
        break

if found_index != -1:
    print(f"Found at index {found_index}")
else:
    print("Not found")
```

### 8.4 Max/Min Pattern

```python
# Find maximum
numbers = [3, 7, 2, 9, 1, 5]
max_value = numbers[0]
for num in numbers:
    if num > max_value:
        max_value = num
print(f"Max: {max_value}")

# Find minimum
min_value = numbers[0]
for num in numbers:
    if num < min_value:
        min_value = num
print(f"Min: {min_value}")

# Or use built-in functions
print(f"Max: {max(numbers)}")
print(f"Min: {min(numbers)}")
```

### 8.5 Filter Pattern

```python
# Filter even numbers
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
evens = []
for num in numbers:
    if num % 2 == 0:
        evens.append(num)
print(evens)  # [2, 4, 6, 8, 10]

# Or use list comprehension
evens = [num for num in numbers if num % 2 == 0]
```

---

## 9. Loop Performance Tips

### 9.1 Avoid Unnecessary Computation

```python
# Bad - recalculates len() every iteration
numbers = [1, 2, 3, 4, 5]
for i in range(len(numbers)):
    # len() called multiple times
    pass

# Good - calculate once
length = len(numbers)
for i in range(length):
    pass

# Best - don't need index
for num in numbers:
    pass
```

### 9.2 Use Built-in Functions

```python
numbers = [1, 2, 3, 4, 5]

# Slow - manual sum
total = 0
for num in numbers:
    total += num

# Fast - built-in sum
total = sum(numbers)

# Other useful built-ins
max_value = max(numbers)
min_value = min(numbers)
count = len(numbers)
```

---

## 10. Common Mistakes

### 10.1 Modifying List While Iterating

```python
# ❌ Bad - modifying list during iteration
numbers = [1, 2, 3, 4, 5]
for num in numbers:
    if num % 2 == 0:
        numbers.remove(num)  # Don't do this!

# ✅ Good - iterate over copy
numbers = [1, 2, 3, 4, 5]
for num in numbers[:]:  # [:] creates a copy
    if num % 2 == 0:
        numbers.remove(num)

# ✅ Better - create new list
numbers = [1, 2, 3, 4, 5]
numbers = [num for num in numbers if num % 2 != 0]
```

### 10.2 Forgetting to Update While Loop Condition

```python
# ❌ Infinite loop!
count = 0
while count < 5:
    print(count)
    # Forgot to increment count!

# ✅ Correct
count = 0
while count < 5:
    print(count)
    count += 1
```

### 10.3 Off-by-One Errors

```python
# ❌ Doesn't include 5
for i in range(5):
    print(i)  # 0, 1, 2, 3, 4

# ✅ Includes 5
for i in range(1, 6):
    print(i)  # 1, 2, 3, 4, 5
```

---

## 11. Practice Exercises

### Exercise 1: Fibonacci Sequence
```python
# Generate first n Fibonacci numbers
# 1, 1, 2, 3, 5, 8, 13, 21, ...
n = 10
# Output: [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
```

### Exercise 2: Prime Number Checker
```python
# Check if a number is prime
# A prime number is only divisible by 1 and itself
num = 17
# Output: "17 is prime"
```

### Exercise 3: Factorial Calculator
```python
# Calculate factorial: n! = n * (n-1) * (n-2) * ... * 1
# Example: 5! = 5 * 4 * 3 * 2 * 1 = 120
n = 5
```

### Exercise 4: Pattern Printing
```python
# Print pyramid pattern:
#     *
#    ***
#   *****
#  *******
# *********
height = 5
```

### Exercise 5: Number Guessing Game
```python
# Computer picks random number 1-100
# User guesses, computer says "higher" or "lower"
# Count number of guesses
import random
secret = random.randint(1, 100)
```

### Exercise 6: List Sum Pairs
```python
# Find all pairs in list that sum to target
numbers = [2, 7, 11, 15, 3, 6]
target = 9
# Output: [(2, 7), (3, 6)]
```

---

## 12. Key Takeaways

✅ **For loops** iterate over sequences  
✅ **While loops** repeat while condition is True  
✅ **range()** generates number sequences  
✅ **enumerate()** gives index and value  
✅ **zip()** combines multiple iterables  
✅ **break** exits loop immediately  
✅ **continue** skips to next iteration  
✅ **pass** is a placeholder  
✅ Avoid modifying list while iterating  
✅ Use built-in functions when possible  

---

## 13. Resources

### Documentation
- [Python Loops](https://docs.python.org/3/tutorial/controlflow.html#for-statements)
- [range() Function](https://docs.python.org/3/library/functions.html#func-range)

### Video Tutorials
- [Python For Loops - Corey Schafer](https://www.youtube.com/watch?v=6iF8Xb7Z3wQ)
- [While Loops - Programming with Mosh](https://www.youtube.com/watch?v=videoseries)

### Practice
- [HackerRank Loops](https://www.hackerrank.com/domains/python?filters%5Bsubdomains%5D%5B%5D=py-basic-data-types)

---

## 14. Tomorrow's Preview: String Methods & Formatting

Tomorrow you'll learn:
- 🔤 String manipulation methods
- 📝 String formatting (f-strings, format())
- ✂️ Slicing and indexing
- 🔍 String searching and validation
- 🎨 Advanced string operations

---

**🎉 Congratulations on completing Day 5!**

Checklist:
- [ ] Complete all practice exercises
- [ ] Build a times table generator
- [ ] Create a menu-driven program
- [ ] Practice nested loops
- [ ] Build a simple text-based game

**See you tomorrow for Day 6! 🚀**
