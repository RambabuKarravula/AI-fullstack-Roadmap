# Day 2: Data Structures - Lists & Tuples

## 📚 Learning Objectives
By the end of this day, you will:
- Master Python lists and their operations
- Understand tuples and their immutability
- Perform indexing, slicing, and iteration
- Use list methods effectively
- Write list comprehensions
- Understand when to use lists vs tuples

---

## 1. Introduction to Lists

### 1.1 What are Lists?

Lists are **ordered, mutable collections** that can store multiple items of any data type.

```python
# Creating lists
numbers = [1, 2, 3, 4, 5]
fruits = ["apple", "banana", "orange"]
mixed = [1, "hello", 3.14, True, None]
empty_list = []

# Lists can contain other lists (nested)
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

# Using list() constructor
letters = list("hello")  # ['h', 'e', 'l', 'l', 'o']
range_list = list(range(5))  # [0, 1, 2, 3, 4]
```

### 1.2 Why Use Lists?

✅ Store multiple related items together  
✅ Maintain order of elements  
✅ Dynamically grow or shrink  
✅ Access elements by position  
✅ Modify elements after creation  

---

## 2. List Indexing & Slicing

### 2.1 Indexing (Accessing Elements)

```python
fruits = ["apple", "banana", "orange", "grape", "mango"]

# Positive indexing (starts at 0)
print(fruits[0])   # "apple" (first item)
print(fruits[2])   # "orange"
print(fruits[4])   # "mango" (last item)

# Negative indexing (from the end)
print(fruits[-1])  # "mango" (last item)
print(fruits[-2])  # "grape" (second to last)
print(fruits[-5])  # "apple" (first item)

# IndexError
# print(fruits[10])  # ❌ IndexError: list index out of range
```

**Index Visualization:**
```
List:     ["apple", "banana", "orange", "grape", "mango"]
Positive:    0        1         2         3        4
Negative:   -5       -4        -3        -2       -1
```

### 2.2 Slicing (Extracting Portions)

**Syntax:** `list[start:stop:step]`

```python
numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# Basic slicing
print(numbers[2:5])    # [2, 3, 4] (from index 2 to 4)
print(numbers[0:3])    # [0, 1, 2]
print(numbers[5:])     # [5, 6, 7, 8, 9] (from 5 to end)
print(numbers[:4])     # [0, 1, 2, 3] (start to 3)
print(numbers[:])      # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] (copy entire list)

# Negative indices in slicing
print(numbers[-3:])    # [7, 8, 9] (last 3 items)
print(numbers[:-3])    # [0, 1, 2, 3, 4, 5, 6] (all except last 3)

# Step parameter
print(numbers[::2])    # [0, 2, 4, 6, 8] (every 2nd item)
print(numbers[1::2])   # [1, 3, 5, 7, 9] (every 2nd, starting at 1)
print(numbers[::3])    # [0, 3, 6, 9] (every 3rd item)

# Reverse a list
print(numbers[::-1])   # [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
print(numbers[::-2])   # [9, 7, 5, 3, 1] (reverse, every 2nd)
```

---

## 3. List Operations

### 3.1 Basic Operations

```python
# Length
fruits = ["apple", "banana", "orange"]
print(len(fruits))  # 3

# Concatenation
list1 = [1, 2, 3]
list2 = [4, 5, 6]
combined = list1 + list2  # [1, 2, 3, 4, 5, 6]

# Repetition
repeat = [0] * 5  # [0, 0, 0, 0, 0]
pattern = [1, 2] * 3  # [1, 2, 1, 2, 1, 2]

# Membership testing
fruits = ["apple", "banana", "orange"]
print("apple" in fruits)      # True
print("grape" in fruits)      # False
print("grape" not in fruits)  # True

# Min, Max, Sum (for numeric lists)
numbers = [3, 1, 4, 1, 5, 9, 2, 6]
print(min(numbers))  # 1
print(max(numbers))  # 9
print(sum(numbers))  # 31

# Count occurrences
print(numbers.count(1))  # 2 (1 appears twice)
```

### 3.2 Modifying Lists (Mutability)

```python
# Changing elements
fruits = ["apple", "banana", "orange"]
fruits[1] = "grape"  # ["apple", "grape", "orange"]

# Changing slices
numbers = [1, 2, 3, 4, 5]
numbers[1:3] = [20, 30]  # [1, 20, 30, 4, 5]

# Deleting elements
fruits = ["apple", "banana", "orange", "grape"]
del fruits[1]  # ["apple", "orange", "grape"]
del fruits[0:2]  # ["grape"]
```

---

## 4. List Methods

### 4.1 Adding Elements

```python
# append() - add to end
fruits = ["apple", "banana"]
fruits.append("orange")
# Result: ["apple", "banana", "orange"]

# insert() - add at specific position
fruits.insert(1, "grape")  # index, value
# Result: ["apple", "grape", "banana", "orange"]

# extend() - add multiple elements
fruits.extend(["mango", "kiwi"])
# Result: ["apple", "grape", "banana", "orange", "mango", "kiwi"]

# Difference: append vs extend
list1 = [1, 2, 3]
list1.append([4, 5])    # [1, 2, 3, [4, 5]] (nested list)

list2 = [1, 2, 3]
list2.extend([4, 5])    # [1, 2, 3, 4, 5] (flattened)
```

### 4.2 Removing Elements

```python
fruits = ["apple", "banana", "orange", "grape", "banana"]

# remove() - remove first occurrence
fruits.remove("banana")
# Result: ["apple", "orange", "grape", "banana"]

# pop() - remove and return by index
last_fruit = fruits.pop()      # Removes "banana", returns it
first_fruit = fruits.pop(0)    # Removes "apple", returns it
# Result: ["orange", "grape"]

# clear() - remove all elements
fruits.clear()
# Result: []
```

### 4.3 Sorting & Reversing

```python
# sort() - sort in place (modifies original)
numbers = [3, 1, 4, 1, 5, 9, 2]
numbers.sort()
print(numbers)  # [1, 1, 2, 3, 4, 5, 9]

# sort() with reverse
numbers.sort(reverse=True)
print(numbers)  # [9, 5, 4, 3, 2, 1, 1]

# sorted() - returns new sorted list (original unchanged)
numbers = [3, 1, 4, 1, 5]
sorted_nums = sorted(numbers)
print(numbers)       # [3, 1, 4, 1, 5] (unchanged)
print(sorted_nums)   # [1, 1, 3, 4, 5]

# Sorting strings
words = ["banana", "apple", "cherry"]
words.sort()  # Alphabetical: ["apple", "banana", "cherry"]

# reverse() - reverse in place
numbers = [1, 2, 3, 4, 5]
numbers.reverse()
print(numbers)  # [5, 4, 3, 2, 1]

# reversed() - returns iterator (use list() to convert)
numbers = [1, 2, 3, 4, 5]
rev = list(reversed(numbers))
print(rev)  # [5, 4, 3, 2, 1]
```

### 4.4 Other Useful Methods

```python
# index() - find position of element
fruits = ["apple", "banana", "orange", "banana"]
pos = fruits.index("banana")  # 1 (first occurrence)

# With start and end parameters
pos = fruits.index("banana", 2)  # 3 (search from index 2)

# copy() - create a shallow copy
original = [1, 2, 3]
copy_list = original.copy()
copy_list[0] = 100
print(original)   # [1, 2, 3] (unchanged)
print(copy_list)  # [100, 2, 3]
```

---

## 5. List Iteration

### 5.1 Basic Loops

```python
# Iterating through elements
fruits = ["apple", "banana", "orange"]

for fruit in fruits:
    print(fruit)

# With index using enumerate()
for index, fruit in enumerate(fruits):
    print(f"{index}: {fruit}")
# Output:
# 0: apple
# 1: banana
# 2: orange

# Starting enumerate from different number
for num, fruit in enumerate(fruits, start=1):
    print(f"{num}. {fruit}")
# Output:
# 1. apple
# 2. banana
# 3. orange
```

### 5.2 List Comprehensions

**Syntax:** `[expression for item in iterable if condition]`

```python
# Traditional way
squares = []
for x in range(10):
    squares.append(x ** 2)
# Result: [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]

# List comprehension (concise)
squares = [x**2 for x in range(10)]
# Same result!

# With condition
even_squares = [x**2 for x in range(10) if x % 2 == 0]
# Result: [0, 4, 16, 36, 64]

# String manipulation
words = ["hello", "world", "python"]
upper_words = [word.upper() for word in words]
# Result: ["HELLO", "WORLD", "PYTHON"]

# Filtering
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
evens = [x for x in numbers if x % 2 == 0]
# Result: [2, 4, 6, 8, 10]

# If-else in comprehension
numbers = [1, 2, 3, 4, 5]
result = ["even" if x % 2 == 0 else "odd" for x in numbers]
# Result: ["odd", "even", "odd", "even", "odd"]

# Nested comprehension (flatten matrix)
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
flattened = [num for row in matrix for num in row]
# Result: [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

---

## 6. Introduction to Tuples

### 6.1 What are Tuples?

Tuples are **ordered, immutable collections** - like lists but can't be modified.

```python
# Creating tuples
coordinates = (10, 20)
rgb_color = (255, 128, 0)
mixed = (1, "hello", 3.14, True)

# Single element tuple (note the comma!)
single = (42,)  # ✅ Tuple with one element
not_tuple = (42)  # ❌ Just an integer in parentheses

# Empty tuple
empty = ()

# Without parentheses (tuple packing)
point = 10, 20, 30  # (10, 20, 30)

# Using tuple() constructor
letters = tuple("hello")  # ('h', 'e', 'l', 'l', 'o')
from_list = tuple([1, 2, 3])  # (1, 2, 3)
```

### 6.2 Why Use Tuples?

✅ Protect data from modification  
✅ Slightly faster than lists  
✅ Can be used as dictionary keys  
✅ Used for multiple return values  
✅ Unpack multiple variables  

### 6.3 Tuple Operations

```python
# Indexing and slicing (same as lists)
point = (10, 20, 30, 40, 50)
print(point[0])      # 10
print(point[-1])     # 50
print(point[1:4])    # (20, 30, 40)

# Concatenation
tuple1 = (1, 2, 3)
tuple2 = (4, 5, 6)
combined = tuple1 + tuple2  # (1, 2, 3, 4, 5, 6)

# Repetition
repeat = (0,) * 5  # (0, 0, 0, 0, 0)

# Length
print(len(point))  # 5

# Membership
print(20 in point)  # True

# Count and index
numbers = (1, 2, 3, 2, 4, 2)
print(numbers.count(2))   # 3
print(numbers.index(2))   # 1 (first occurrence)
```

### 6.4 Immutability

```python
# Tuples can't be modified
point = (10, 20, 30)
# point[0] = 15  # ❌ TypeError: tuple object does not support item assignment

# But you can create a new tuple
point = (15, 20, 30)  # ✅ Reassigning the variable

# However, if tuple contains mutable objects...
mixed = ([1, 2], [3, 4])
mixed[0].append(3)  # ✅ Modifying the list inside tuple works!
print(mixed)  # ([1, 2, 3], [3, 4])
# mixed[0] = [5, 6]  # ❌ But you can't replace the list itself
```

### 6.5 Tuple Unpacking

```python
# Basic unpacking
coordinates = (10, 20)
x, y = coordinates
print(x)  # 10
print(y)  # 20

# Multiple return values from function
def get_user_info():
    return "John", 25, "Engineer"  # Returns a tuple

name, age, job = get_user_info()

# Unpacking with * (rest operator)
numbers = (1, 2, 3, 4, 5)
first, *middle, last = numbers
print(first)   # 1
print(middle)  # [2, 3, 4] (becomes a list!)
print(last)    # 5

# Swapping variables
a = 5
b = 10
a, b = b, a  # Swap using tuple unpacking
print(a, b)  # 10 5
```

---

## 7. Lists vs Tuples

| Feature | List | Tuple |
|---------|------|-------|
| **Syntax** | `[1, 2, 3]` | `(1, 2, 3)` |
| **Mutability** | Mutable (can change) | Immutable (can't change) |
| **Methods** | Many (append, remove, etc.) | Few (count, index) |
| **Performance** | Slower | Faster |
| **Use Case** | Dynamic data | Fixed data |
| **Dict Key** | ❌ Can't be used | ✅ Can be used |

**When to use Lists:**
- Data that needs to change
- Adding/removing elements
- Sorting, reversing, etc.

**When to use Tuples:**
- Data that shouldn't change
- Function return values
- Dictionary keys
- Slightly better performance

---

## 8. Nested Lists & Tuples

### 8.1 Nested Lists (2D Lists)

```python
# Matrix representation
matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

# Accessing elements
print(matrix[0])      # [1, 2, 3] (first row)
print(matrix[1][2])   # 6 (row 1, column 2)

# Iterating through 2D list
for row in matrix:
    for element in row:
        print(element, end=" ")
    print()  # New line after each row

# List comprehension for 2D
matrix = [[i + j for j in range(3)] for i in range(3)]
# Result: [[0, 1, 2], [1, 2, 3], [2, 3, 4]]
```

### 8.2 Nested Tuples

```python
# RGB colors database
colors = (
    ("Red", (255, 0, 0)),
    ("Green", (0, 255, 0)),
    ("Blue", (0, 0, 255))
)

# Accessing
print(colors[0])       # ("Red", (255, 0, 0))
print(colors[0][1])    # (255, 0, 0)
print(colors[0][1][0]) # 255
```

---

## 9. Common Patterns & Tricks

### 9.1 List Creation Patterns

```python
# Create list of zeros
zeros = [0] * 10

# Create list of specific values
values = [5] * 7  # [5, 5, 5, 5, 5, 5, 5]

# Range to list
numbers = list(range(10))        # [0, 1, 2, ..., 9]
numbers = list(range(5, 15))     # [5, 6, 7, ..., 14]
numbers = list(range(0, 20, 2))  # [0, 2, 4, ..., 18]

# Split string to list
text = "hello world"
words = text.split()  # ["hello", "world"]

csv_data = "apple,banana,orange"
fruits = csv_data.split(",")  # ["apple", "banana", "orange"]
```

### 9.2 List Filtering & Transformation

```python
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Filter even numbers
evens = [x for x in numbers if x % 2 == 0]

# Double all numbers
doubled = [x * 2 for x in numbers]

# Filter and transform
even_squares = [x**2 for x in numbers if x % 2 == 0]
# Result: [4, 16, 36, 64, 100]
```

### 9.3 List Flattening

```python
# Flatten 2D list
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
flat = [item for row in matrix for item in row]
# Result: [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

---

## 10. Practice Exercises

### Exercise 1: List Statistics
```python
numbers = [12, 45, 7, 23, 56, 89, 34, 67, 90, 11]
# Calculate and print:
# - Sum
# - Average
# - Maximum
# - Minimum
# - Count of even numbers
```

### Exercise 2: List Manipulation
```python
# Start with: [1, 2, 3, 4, 5]
# Operations:
# 1. Add 6 and 7 to the end
# 2. Insert 0 at the beginning
# 3. Remove the number 3
# 4. Reverse the list
# 5. Print the result
```

### Exercise 3: Duplicate Remover
```python
# Remove duplicates from a list (preserve order)
numbers = [1, 2, 3, 2, 4, 1, 5, 3, 6]
# Expected output: [1, 2, 3, 4, 5, 6]
```

### Exercise 4: List Comprehension Challenge
```python
# Create a list of all numbers from 1-100 that are:
# - Divisible by 3 OR 5
# - But NOT divisible by both
```

### Exercise 5: Tuple Unpacking
```python
# You have a list of tuples representing (name, age, city)
people = [
    ("Alice", 25, "New York"),
    ("Bob", 30, "Los Angeles"),
    ("Charlie", 35, "Chicago")
]
# Print each person's info in format: "Alice is 25 years old and lives in New York"
```

---

## 11. Key Takeaways

✅ **Lists** are ordered, mutable collections `[1, 2, 3]`  
✅ **Tuples** are ordered, immutable collections `(1, 2, 3)`  
✅ **Indexing** starts at 0, negative indices count from end  
✅ **Slicing** syntax: `[start:stop:step]`  
✅ **List methods**: append, extend, insert, remove, pop, sort, reverse  
✅ **List comprehensions** provide concise way to create lists  
✅ **Tuple unpacking** allows multiple assignments at once  
✅ Use **lists** for dynamic data, **tuples** for fixed data  

---

## 12. Resources

### Documentation
- [Python Lists](https://docs.python.org/3/tutorial/datastructures.html#more-on-lists)
- [Python Tuples](https://docs.python.org/3/tutorial/datastructures.html#tuples-and-sequences)

### Video Tutorials
- [Python Lists - Corey Schafer](https://www.youtube.com/watch?v=W8KRzm-HUcc)
- [List Comprehensions - Real Python](https://realpython.com/list-comprehension-python/)

### Practice
- [HackerRank Lists](https://www.hackerrank.com/domains/python?filters%5Bsubdomains%5D%5B%5D=py-basic-data-types)
- [Python List Exercises](https://www.w3resource.com/python-exercises/list/)

---

## 13. Tomorrow's Preview: Dictionaries & Sets

Tomorrow you'll learn:
- 🔑 Dictionaries - key-value pairs
- 🎯 Sets - unique, unordered collections
- 🔄 Dictionary methods and operations
- 🚀 Set operations (union, intersection, etc.)
- 💡 When to use each data structure

---

**🎉 Congratulations on completing Day 2!**

Checklist:
- [ ] Complete all practice exercises
- [ ] Create a program using lists and tuples
- [ ] Practice list comprehensions
- [ ] Understand when to use list vs tuple
- [ ] Review any challenging concepts

**See you tomorrow for Day 3! 🚀**
