# Day 4: Lists & Tuples

## 📚 Learning Objectives
By the end of this day, you will:
- Create and manipulate lists
- Use list methods effectively
- Understand list indexing and slicing
- Work with nested lists
- Understand tuples and immutability
- Build a to-do list program

---

## 1. Introduction to Lists

**Lists** are ordered, mutable collections that can store multiple items.

```python
# Creating lists
numbers = [1, 2, 3, 4, 5]
names = ["Alice", "Bob", "Charlie"]
mixed = [1, "hello", 3.14, True]
empty = []

# Lists can contain duplicates
duplicates = [1, 2, 2, 3, 3, 3]

# Nested lists
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

print(numbers)  # [1, 2, 3, 4, 5]
print(type(numbers))  # <class 'list'>
```

---

## 2. Accessing List Elements

### 2.1 Indexing

```python
fruits = ["apple", "banana", "orange", "grape"]

# Positive indexing (0-based)
print(fruits[0])   # apple
print(fruits[1])   # banana
print(fruits[3])   # grape

# Negative indexing (from end)
print(fruits[-1])  # grape (last item)
print(fruits[-2])  # orange
print(fruits[-4])  # apple (first item)

# IndexError if out of range
# print(fruits[10])  # IndexError!
```

### 2.2 Slicing

```python
numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# Basic slicing [start:end:step]
print(numbers[2:5])      # [2, 3, 4]
print(numbers[:3])       # [0, 1, 2]
print(numbers[5:])       # [5, 6, 7, 8, 9]
print(numbers[:])        # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# Negative indices
print(numbers[-3:])      # [7, 8, 9]
print(numbers[:-3])      # [0, 1, 2, 3, 4, 5, 6]

# With step
print(numbers[::2])      # [0, 2, 4, 6, 8]
print(numbers[1::2])     # [1, 3, 5, 7, 9]
print(numbers[::-1])     # [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]

# Complex slicing
print(numbers[2:8:2])    # [2, 4, 6]
```

---

## 3. Modifying Lists

### 3.1 Changing Elements

```python
fruits = ["apple", "banana", "orange"]

# Change single element
fruits[1] = "mango"
print(fruits)  # ['apple', 'mango', 'orange']

# Change multiple elements (slicing)
numbers = [1, 2, 3, 4, 5]
numbers[1:4] = [10, 20, 30]
print(numbers)  # [1, 10, 20, 30, 5]
```

### 3.2 Adding Elements

```python
# append() - add single item to end
fruits = ["apple", "banana"]
fruits.append("orange")
print(fruits)  # ['apple', 'banana', 'orange']

# insert() - add item at specific position
fruits.insert(1, "mango")
print(fruits)  # ['apple', 'mango', 'banana', 'orange']

# extend() - add multiple items
fruits.extend(["grape", "kiwi"])
print(fruits)  # ['apple', 'mango', 'banana', 'orange', 'grape', 'kiwi']

# + operator (concatenation)
list1 = [1, 2, 3]
list2 = [4, 5, 6]
combined = list1 + list2
print(combined)  # [1, 2, 3, 4, 5, 6]

# += operator
list1 += list2
print(list1)  # [1, 2, 3, 4, 5, 6]
```

### 3.3 Removing Elements

```python
fruits = ["apple", "banana", "orange", "grape", "kiwi"]

# remove() - remove first occurrence
fruits.remove("banana")
print(fruits)  # ['apple', 'orange', 'grape', 'kiwi']

# pop() - remove and return item at index (default: last)
last = fruits.pop()
print(last)     # kiwi
print(fruits)   # ['apple', 'orange', 'grape']

# pop() with index
second = fruits.pop(1)
print(second)   # orange
print(fruits)   # ['apple', 'grape']

# del statement
numbers = [1, 2, 3, 4, 5]
del numbers[2]
print(numbers)  # [1, 2, 4, 5]

# Delete slice
numbers = [1, 2, 3, 4, 5]
del numbers[1:3]
print(numbers)  # [1, 4, 5]

# clear() - remove all elements
fruits = ["apple", "banana", "orange"]
fruits.clear()
print(fruits)   # []
```

---

## 4. List Methods

### 4.1 Sorting and Reversing

```python
numbers = [3, 1, 4, 1, 5, 9, 2, 6]

# sort() - sort in place
numbers.sort()
print(numbers)  # [1, 1, 2, 3, 4, 5, 6, 9]

# sort() descending
numbers.sort(reverse=True)
print(numbers)  # [9, 6, 5, 4, 3, 2, 1, 1]

# sorted() - return new sorted list
original = [3, 1, 4, 1, 5]
sorted_list = sorted(original)
print(original)     # [3, 1, 4, 1, 5]
print(sorted_list)  # [1, 1, 3, 4, 5]

# reverse() - reverse in place
numbers = [1, 2, 3, 4, 5]
numbers.reverse()
print(numbers)  # [5, 4, 3, 2, 1]

# Reverse with slicing
numbers = [1, 2, 3, 4, 5]
reversed_list = numbers[::-1]
print(reversed_list)  # [5, 4, 3, 2, 1]
```

### 4.2 Searching and Counting

```python
numbers = [1, 2, 3, 2, 4, 2, 5]

# count() - count occurrences
print(numbers.count(2))  # 3
print(numbers.count(10)) # 0

# index() - find first occurrence
print(numbers.index(3))  # 2
print(numbers.index(2))  # 1 (first occurrence)

# index() with start/end
print(numbers.index(2, 2))  # 3 (search from index 2)

# in operator - check existence
print(3 in numbers)      # True
print(10 in numbers)     # False
print(3 not in numbers)  # False
```

### 4.3 Copying Lists

```python
# WRONG - creates reference, not copy
list1 = [1, 2, 3]
list2 = list1
list2.append(4)
print(list1)  # [1, 2, 3, 4] - list1 changed too!

# ✅ copy() method
list1 = [1, 2, 3]
list2 = list1.copy()
list2.append(4)
print(list1)  # [1, 2, 3]
print(list2)  # [1, 2, 3, 4]

# ✅ list() constructor
list2 = list(list1)

# ✅ Slicing
list2 = list1[:]

# Shallow copy vs Deep copy
import copy

# Shallow copy (only copies top level)
nested = [[1, 2], [3, 4]]
shallow = nested.copy()
shallow[0][0] = 99
print(nested)  # [[99, 2], [3, 4]] - inner list affected!

# Deep copy (copies everything)
nested = [[1, 2], [3, 4]]
deep = copy.deepcopy(nested)
deep[0][0] = 99
print(nested)  # [[1, 2], [3, 4]] - not affected!
```

---

## 5. List Comprehensions

Create lists in a concise way.

**Syntax:** `[expression for item in iterable if condition]`

```python
# Traditional way
squares = []
for i in range(10):
    squares.append(i ** 2)
print(squares)  # [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]

# List comprehension
squares = [i ** 2 for i in range(10)]
print(squares)  # [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]

# With condition
evens = [i for i in range(20) if i % 2 == 0]
print(evens)  # [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]

# Transform strings
names = ["alice", "bob", "charlie"]
capitalized = [name.capitalize() for name in names]
print(capitalized)  # ['Alice', 'Bob', 'Charlie']

# Multiple conditions
numbers = [i for i in range(100) if i % 2 == 0 if i % 5 == 0]
print(numbers)  # [0, 10, 20, 30, 40, 50, 60, 70, 80, 90]

# If-else in comprehension
numbers = [1, 2, 3, 4, 5]
result = ["even" if n % 2 == 0 else "odd" for n in numbers]
print(result)  # ['odd', 'even', 'odd', 'even', 'odd']

# Nested comprehension
matrix = [[i * j for j in range(1, 4)] for i in range(1, 4)]
print(matrix)  # [[1, 2, 3], [2, 4, 6], [3, 6, 9]]
```

---

## 6. Nested Lists

Lists containing other lists.

```python
# 2D list (matrix)
matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

# Accessing elements
print(matrix[0])      # [1, 2, 3]
print(matrix[0][0])   # 1
print(matrix[1][2])   # 6
print(matrix[2][1])   # 8

# Modifying elements
matrix[0][0] = 99
print(matrix[0])  # [99, 2, 3]

# Iterating nested lists
for row in matrix:
    for element in row:
        print(element, end=" ")
    print()

# Output:
# 99 2 3
# 4 5 6
# 7 8 9

# List comprehension with nested lists
flat = [element for row in matrix for element in row]
print(flat)  # [99, 2, 3, 4, 5, 6, 7, 8, 9]
```

---

## 7. Common List Operations

```python
# Length
numbers = [1, 2, 3, 4, 5]
print(len(numbers))  # 5

# Min and Max
print(min(numbers))  # 1
print(max(numbers))  # 5

# Sum
print(sum(numbers))  # 15

# All and Any
print(all([True, True, True]))   # True
print(all([True, False, True]))  # False
print(any([True, False, False])) # True
print(any([False, False, False]))# False

# Enumerate (index and value)
fruits = ["apple", "banana", "orange"]
for index, fruit in enumerate(fruits):
    print(f"{index}: {fruit}")
# 0: apple
# 1: banana
# 2: orange

# Zip (combine lists)
names = ["Alice", "Bob", "Charlie"]
ages = [25, 30, 35]
for name, age in zip(names, ages):
    print(f"{name} is {age} years old")
# Alice is 25 years old
# Bob is 30 years old
# Charlie is 35 years old
```

---

## 8. Introduction to Tuples

**Tuples** are ordered, **immutable** collections.

```python
# Creating tuples
point = (10, 20)
colors = ("red", "green", "blue")
mixed = (1, "hello", 3.14, True)

# Single element tuple (note the comma!)
single = (5,)  # Tuple
not_tuple = (5)  # Integer!
print(type(single))     # <class 'tuple'>
print(type(not_tuple))  # <class 'int'>

# Empty tuple
empty = ()

# Without parentheses (tuple packing)
coordinates = 10, 20, 30
print(type(coordinates))  # <class 'tuple'>
```

---

## 9. Tuple Operations

### 9.1 Accessing Elements

```python
colors = ("red", "green", "blue", "yellow")

# Indexing (same as lists)
print(colors[0])   # red
print(colors[-1])  # yellow

# Slicing
print(colors[1:3])  # ('green', 'blue')
print(colors[:2])   # ('red', 'green')
print(colors[::2])  # ('red', 'blue')
```

### 9.2 Immutability

```python
colors = ("red", "green", "blue")

# ❌ Cannot modify
# colors[0] = "yellow"  # TypeError!

# ❌ Cannot add/remove
# colors.append("yellow")  # AttributeError!

# ✅ Can create new tuple
colors = colors + ("yellow",)
print(colors)  # ('red', 'green', 'blue', 'yellow')
```

### 9.3 Tuple Methods

```python
numbers = (1, 2, 3, 2, 4, 2, 5)

# count()
print(numbers.count(2))  # 3

# index()
print(numbers.index(3))  # 2

# That's it! Only 2 methods (because immutable)
```

### 9.4 Tuple Unpacking

```python
# Basic unpacking
point = (10, 20)
x, y = point
print(x)  # 10
print(y)  # 20

# Multiple values
person = ("Alice", 25, "NYC")
name, age, city = person
print(name)  # Alice
print(age)   # 25
print(city)  # NYC

# Swap variables
a, b = 5, 10
a, b = b, a
print(a, b)  # 10 5

# Extended unpacking (Python 3+)
numbers = (1, 2, 3, 4, 5)
first, *middle, last = numbers
print(first)   # 1
print(middle)  # [2, 3, 4]
print(last)    # 5
```

---

## 10. Lists vs Tuples

| Feature | List | Tuple |
|---------|------|-------|
| **Mutability** | Mutable | Immutable |
| **Syntax** | `[1, 2, 3]` | `(1, 2, 3)` |
| **Methods** | Many (append, remove, etc.) | Only 2 (count, index) |
| **Performance** | Slower | Faster |
| **Use Case** | Data that changes | Fixed data |

**When to use Tuples:**
- Data shouldn't change (coordinates, RGB colors)
- Dictionary keys (must be immutable)
- Function returns multiple values
- Better performance for large data

**When to use Lists:**
- Data needs to be modified
- Need list methods
- Building collections dynamically

---

## 11. Mini Project: To-Do List Manager

```python
# To-Do List Application
tasks = []

def show_menu():
    print("\n=== To-Do List ===")
    print("1. View tasks")
    print("2. Add task")
    print("3. Remove task")
    print("4. Mark task as complete")
    print("5. Exit")

def view_tasks():
    if not tasks:
        print("\nNo tasks yet!")
    else:
        print("\nYour tasks:")
        for i, task in enumerate(tasks, 1):
            status = "✓" if task["completed"] else "✗"
            print(f"{i}. [{status}] {task['name']}")

def add_task():
    task_name = input("\nEnter task: ")
    task = {"name": task_name, "completed": False}
    tasks.append(task)
    print(f"Added: {task_name}")

def remove_task():
    view_tasks()
    if tasks:
        try:
            num = int(input("\nEnter task number to remove: "))
            if 1 <= num <= len(tasks):
                removed = tasks.pop(num - 1)
                print(f"Removed: {removed['name']}")
            else:
                print("Invalid task number!")
        except ValueError:
            print("Please enter a number!")

def mark_complete():
    view_tasks()
    if tasks:
        try:
            num = int(input("\nEnter task number to complete: "))
            if 1 <= num <= len(tasks):
                tasks[num - 1]["completed"] = True
                print(f"Completed: {tasks[num - 1]['name']}")
            else:
                print("Invalid task number!")
        except ValueError:
            print("Please enter a number!")

# Main loop
while True:
    show_menu()
    choice = input("\nChoose option (1-5): ")
    
    if choice == "1":
        view_tasks()
    elif choice == "2":
        add_task()
    elif choice == "3":
        remove_task()
    elif choice == "4":
        mark_complete()
    elif choice == "5":
        print("Goodbye!")
        break
    else:
        print("Invalid choice!")
```

---

## 12. Practice Exercises

### Exercise 1: List Statistics
```python
# Calculate mean, median, mode of a list
numbers = [1, 2, 2, 3, 4, 5, 5, 5, 6]
```

### Exercise 2: Remove Duplicates
```python
# Remove duplicates while preserving order
numbers = [1, 2, 2, 3, 4, 4, 5]
# Output: [1, 2, 3, 4, 5]
```

### Exercise 3: Matrix Transpose
```python
# Transpose a matrix
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
# Output: [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
```

### Exercise 4: List Rotation
```python
# Rotate list by n positions
numbers = [1, 2, 3, 4, 5]
# Rotate by 2: [4, 5, 1, 2, 3]
```

### Exercise 5: Common Elements
```python
# Find common elements in two lists
list1 = [1, 2, 3, 4, 5]
list2 = [4, 5, 6, 7, 8]
# Output: [4, 5]
```

---

## 13. Key Takeaways

✅ **Lists** are mutable, ordered collections  
✅ **Tuples** are immutable, ordered collections  
✅ **Indexing**: `list[0]`, `list[-1]`  
✅ **Slicing**: `list[start:end:step]`  
✅ **List methods**: `.append()`, `.remove()`, `.pop()`, `.sort()`  
✅ **List comprehensions**: `[x for x in range(10)]`  
✅ **Tuple unpacking**: `x, y = (1, 2)`  
✅ Use tuples for fixed data, lists for changing data  

---

## 14. Resources

### Documentation
- [Python Lists](https://docs.python.org/3/tutorial/datastructures.html#more-on-lists)
- [Python Tuples](https://docs.python.org/3/tutorial/datastructures.html#tuples-and-sequences)

### Video Tutorials
- [Python Lists - Corey Schafer](https://www.youtube.com/watch?v=W8KRzm-HUcc)
- [List Comprehensions](https://www.youtube.com/watch?v=3dt4OGnU5sM)

### Practice
- [Programiz Python Lists](https://www.programiz.com/python-programming/list)

---

## 15. Tomorrow's Preview: Dictionaries & Sets

Tomorrow you'll learn:
- 📖 Dictionary key-value pairs
- 🔑 Dictionary methods and operations
- 📊 Sets and set operations
- 🎯 When to use dicts vs lists vs sets
- 🏗️ Building a student records system

---

**🎉 Congratulations on completing Day 4!**

Checklist:
- [ ] Complete all practice exercises
- [ ] Build the to-do list manager
- [ ] Practice list comprehensions
- [ ] Understand list vs tuple differences
- [ ] Master slicing operations

**See you tomorrow for Day 5! 🚀**
