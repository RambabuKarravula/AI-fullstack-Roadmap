# Day 5: Dictionaries & Sets

## 📚 Learning Objectives
By the end of this day, you will:
- Create and manipulate dictionaries
- Use dictionary methods effectively
- Understand sets and set operations
- Perform set mathematical operations
- Build a student records manager
- Know when to use dicts vs lists vs sets

---

## 1. Introduction to Dictionaries

**Dictionaries** store data as **key-value pairs**. Keys must be unique and immutable.

```python
# Creating dictionaries
person = {
    "name": "Alice",
    "age": 25,
    "city": "NYC"
}

# Empty dictionary
empty = {}
empty2 = dict()

# Keys can be strings, numbers, tuples
data = {
    "name": "Bob",
    42: "answer",
    (1, 2): "coordinates"
}

print(person)  # {'name': 'Alice', 'age': 25, 'city': 'NYC'}
print(type(person))  # <class 'dict'>
```

---

## 2. Accessing Dictionary Values

```python
person = {"name": "Alice", "age": 25, "city": "NYC"}

# Access by key
print(person["name"])  # Alice
print(person["age"])   # 25

# KeyError if key doesn't exist
# print(person["country"])  # KeyError!

# get() method (safe access)
print(person.get("name"))     # Alice
print(person.get("country"))  # None (no error)

# get() with default value
print(person.get("country", "USA"))  # USA
```

---

## 3. Modifying Dictionaries

### 3.1 Adding/Updating Values

```python
person = {"name": "Alice", "age": 25}

# Add new key-value
person["city"] = "NYC"
print(person)  # {'name': 'Alice', 'age': 25, 'city': 'NYC'}

# Update existing value
person["age"] = 26
print(person)  # {'name': 'Alice', 'age': 26, 'city': 'NYC'}

# update() method
person.update({"country": "USA", "age": 27})
print(person)
# {'name': 'Alice', 'age': 27, 'city': 'NYC', 'country': 'USA'}

# Update from list of tuples
person.update([("job", "Engineer"), ("salary", 75000)])
print(person)
```

### 3.2 Removing Values

```python
person = {"name": "Alice", "age": 25, "city": "NYC"}

# pop() - remove and return value
age = person.pop("age")
print(age)     # 25
print(person)  # {'name': 'Alice', 'city': 'NYC'}

# pop() with default
country = person.pop("country", "Unknown")
print(country)  # Unknown

# popitem() - remove and return last inserted pair (Python 3.7+)
item = person.popitem()
print(item)    # ('city', 'NYC')
print(person)  # {'name': 'Alice'}

# del statement
person = {"name": "Alice", "age": 25, "city": "NYC"}
del person["age"]
print(person)  # {'name': 'Alice', 'city': 'NYC'}

# clear() - remove all items
person.clear()
print(person)  # {}
```

---

## 4. Dictionary Methods

### 4.1 Keys, Values, Items

```python
person = {"name": "Alice", "age": 25, "city": "NYC"}

# keys() - all keys
keys = person.keys()
print(keys)  # dict_keys(['name', 'age', 'city'])
print(list(keys))  # ['name', 'age', 'city']

# values() - all values
values = person.values()
print(values)  # dict_values(['Alice', 25, 'NYC'])
print(list(values))  # ['Alice', 25, 'NYC']

# items() - all key-value pairs
items = person.items()
print(items)  # dict_items([('name', 'Alice'), ('age', 25), ('city', 'NYC')])

# Iterating
for key in person.keys():
    print(key)

for value in person.values():
    print(value)

for key, value in person.items():
    print(f"{key}: {value}")

# Output:
# name: Alice
# age: 25
# city: NYC
```

### 4.2 Checking Keys

```python
person = {"name": "Alice", "age": 25}

# in operator (checks keys)
print("name" in person)  # True
print("city" in person)  # False

# Check values (slower)
print("Alice" in person.values())  # True
```

### 4.3 Copying Dictionaries

```python
# WRONG - creates reference
dict1 = {"a": 1, "b": 2}
dict2 = dict1
dict2["c"] = 3
print(dict1)  # {'a': 1, 'b': 2, 'c': 3} - dict1 changed!

# ✅ copy() method
dict1 = {"a": 1, "b": 2}
dict2 = dict1.copy()
dict2["c"] = 3
print(dict1)  # {'a': 1, 'b': 2}
print(dict2)  # {'a': 1, 'b': 2, 'c': 3}

# ✅ dict() constructor
dict2 = dict(dict1)
```

---

## 5. Dictionary Comprehensions

```python
# Traditional way
squares = {}
for i in range(1, 6):
    squares[i] = i ** 2
print(squares)  # {1: 1, 2: 4, 3: 9, 4: 16, 5: 25}

# Dictionary comprehension
squares = {i: i ** 2 for i in range(1, 6)}
print(squares)  # {1: 1, 2: 4, 3: 9, 4: 16, 5: 25}

# With condition
even_squares = {i: i ** 2 for i in range(1, 11) if i % 2 == 0}
print(even_squares)  # {2: 4, 4: 16, 6: 36, 8: 64, 10: 100}

# From two lists
keys = ["name", "age", "city"]
values = ["Alice", 25, "NYC"]
person = {k: v for k, v in zip(keys, values)}
print(person)  # {'name': 'Alice', 'age': 25, 'city': 'NYC'}

# Or use dict()
person = dict(zip(keys, values))

# Transform keys/values
names = ["alice", "bob", "charlie"]
name_lengths = {name: len(name) for name in names}
print(name_lengths)  # {'alice': 5, 'bob': 3, 'charlie': 7}
```

---

## 6. Nested Dictionaries

```python
# Student records
students = {
    "student1": {
        "name": "Alice",
        "age": 20,
        "grades": [85, 90, 92]
    },
    "student2": {
        "name": "Bob",
        "age": 22,
        "grades": [78, 82, 88]
    }
}

# Accessing nested values
print(students["student1"]["name"])  # Alice
print(students["student1"]["grades"][0])  # 85

# Modifying nested values
students["student1"]["age"] = 21
students["student2"]["grades"].append(85)

# Iterating nested dict
for student_id, info in students.items():
    print(f"\n{student_id}:")
    for key, value in info.items():
        print(f"  {key}: {value}")
```

---

## 7. Advanced Dictionary Techniques

### 7.1 setdefault()

```python
# Get value, set default if key doesn't exist
person = {"name": "Alice"}

# Old way
if "age" not in person:
    person["age"] = 25

# Better way
age = person.setdefault("age", 25)
print(age)     # 25
print(person)  # {'name': 'Alice', 'age': 25}

# Use case: counting
text = "hello world"
char_count = {}
for char in text:
    char_count.setdefault(char, 0)
    char_count[char] += 1
print(char_count)
```

### 7.2 defaultdict

```python
from collections import defaultdict

# Regular dict - KeyError
counts = {}
# counts["a"] += 1  # KeyError!

# defaultdict - auto-creates default value
counts = defaultdict(int)  # default: 0
counts["a"] += 1
counts["b"] += 2
print(counts)  # defaultdict(<class 'int'>, {'a': 1, 'b': 2})

# With list
groups = defaultdict(list)
groups["fruits"].append("apple")
groups["fruits"].append("banana")
groups["veggies"].append("carrot")
print(groups)
# defaultdict(<class 'list'>, {'fruits': ['apple', 'banana'], 'veggies': ['carrot']})
```

### 7.3 Counter

```python
from collections import Counter

# Count occurrences
text = "hello world"
char_count = Counter(text)
print(char_count)  # Counter({'l': 3, 'o': 2, 'h': 1, ...})

# Most common
print(char_count.most_common(3))  # [('l', 3), ('o', 2), (' ', 1)]

# From list
numbers = [1, 2, 2, 3, 3, 3, 4]
counts = Counter(numbers)
print(counts)  # Counter({3: 3, 2: 2, 1: 1, 4: 1})
```

---

## 8. Introduction to Sets

**Sets** are unordered collections of **unique** elements.

```python
# Creating sets
fruits = {"apple", "banana", "orange"}
numbers = {1, 2, 3, 4, 5}
mixed = {1, "hello", 3.14, True}

# Empty set (NOT {})
empty = set()

# From list (removes duplicates)
numbers = [1, 2, 2, 3, 3, 3, 4]
unique = set(numbers)
print(unique)  # {1, 2, 3, 4}

# Sets are unordered
print(fruits)  # Order may vary

print(type(fruits))  # <class 'set'>
```

---

## 9. Set Operations

### 9.1 Adding/Removing Elements

```python
fruits = {"apple", "banana"}

# add() - add single element
fruits.add("orange")
print(fruits)  # {'apple', 'banana', 'orange'}

# Adding duplicate (no effect)
fruits.add("apple")
print(fruits)  # {'apple', 'banana', 'orange'}

# update() - add multiple elements
fruits.update(["grape", "kiwi"])
print(fruits)  # {'apple', 'banana', 'orange', 'grape', 'kiwi'}

# remove() - remove element (raises KeyError if not found)
fruits.remove("banana")
print(fruits)

# discard() - remove element (no error if not found)
fruits.discard("mango")  # No error

# pop() - remove and return random element
item = fruits.pop()
print(item)

# clear() - remove all elements
fruits.clear()
print(fruits)  # set()
```

### 9.2 Set Mathematical Operations

```python
# Union (all unique elements)
A = {1, 2, 3}
B = {3, 4, 5}

print(A | B)  # {1, 2, 3, 4, 5}
print(A.union(B))  # {1, 2, 3, 4, 5}

# Intersection (common elements)
print(A & B)  # {3}
print(A.intersection(B))  # {3}

# Difference (in A but not in B)
print(A - B)  # {1, 2}
print(A.difference(B))  # {1, 2}

# Symmetric Difference (in A or B but not both)
print(A ^ B)  # {1, 2, 4, 5}
print(A.symmetric_difference(B))  # {1, 2, 4, 5}

# Subset
C = {1, 2}
print(C <= A)  # True (C is subset of A)
print(C.issubset(A))  # True

# Superset
print(A >= C)  # True (A is superset of C)
print(A.issuperset(C))  # True

# Disjoint (no common elements)
D = {6, 7, 8}
print(A.isdisjoint(D))  # True
```

---

## 10. Set Comprehensions

```python
# Traditional way
squares = set()
for i in range(10):
    squares.add(i ** 2)
print(squares)

# Set comprehension
squares = {i ** 2 for i in range(10)}
print(squares)  # {0, 1, 4, 9, 16, 25, 36, 49, 64, 81}

# With condition
even_squares = {i ** 2 for i in range(10) if i % 2 == 0}
print(even_squares)  # {0, 4, 16, 36, 64}

# Remove duplicates from list
numbers = [1, 2, 2, 3, 3, 3, 4]
unique = {n for n in numbers}
print(unique)  # {1, 2, 3, 4}
```

---

## 11. When to Use What?

| Data Structure | Use When |
|----------------|----------|
| **List** | Ordered, allow duplicates, need indexing |
| **Tuple** | Immutable ordered data, dictionary keys |
| **Dictionary** | Key-value pairs, fast lookups |
| **Set** | Unique elements, mathematical operations |

### Examples:

```python
# List - shopping list (order matters, duplicates ok)
shopping = ["apple", "banana", "apple", "orange"]

# Tuple - coordinates (immutable, fixed size)
point = (10, 20)

# Dictionary - person info (key-value mapping)
person = {"name": "Alice", "age": 25}

# Set - unique tags (no duplicates, no order)
tags = {"python", "programming", "coding"}
```

---

## 12. Mini Project: Student Records Manager

```python
# Student Records Management System
students = {}

def add_student():
    student_id = input("Enter student ID: ")
    if student_id in students:
        print("Student ID already exists!")
        return
    
    name = input("Enter name: ")
    age = int(input("Enter age: "))
    grades = []
    
    students[student_id] = {
        "name": name,
        "age": age,
        "grades": grades
    }
    print(f"Added student: {name}")

def view_students():
    if not students:
        print("\nNo students yet!")
        return
    
    print("\n=== All Students ===")
    for student_id, info in students.items():
        avg = sum(info["grades"]) / len(info["grades"]) if info["grades"] else 0
        print(f"ID: {student_id}, Name: {info['name']}, Age: {info['age']}, Avg: {avg:.2f}")

def add_grade():
    student_id = input("Enter student ID: ")
    if student_id not in students:
        print("Student not found!")
        return
    
    grade = float(input("Enter grade: "))
    students[student_id]["grades"].append(grade)
    print("Grade added!")

def delete_student():
    student_id = input("Enter student ID to delete: ")
    if student_id in students:
        name = students[student_id]["name"]
        del students[student_id]
        print(f"Deleted student: {name}")
    else:
        print("Student not found!")

# Main menu
while True:
    print("\n=== Student Records ===")
    print("1. Add student")
    print("2. View all students")
    print("3. Add grade")
    print("4. Delete student")
    print("5. Exit")
    
    choice = input("Choose option: ")
    
    if choice == "1":
        add_student()
    elif choice == "2":
        view_students()
    elif choice == "3":
        add_grade()
    elif choice == "4":
        delete_student()
    elif choice == "5":
        print("Goodbye!")
        break
    else:
        print("Invalid choice!")
```

---

## 13. Practice Exercises

### Exercise 1: Word Frequency Counter
```python
# Count word frequency in a sentence
text = "hello world hello python world"
# Output: {'hello': 2, 'world': 2, 'python': 1}
```

### Exercise 2: Merge Dictionaries
```python
# Merge two dictionaries, sum values for common keys
dict1 = {"a": 1, "b": 2, "c": 3}
dict2 = {"b": 3, "c": 4, "d": 5}
# Output: {'a': 1, 'b': 5, 'c': 7, 'd': 5}
```

### Exercise 3: Common Elements
```python
# Find common elements in multiple sets
set1 = {1, 2, 3, 4, 5}
set2 = {4, 5, 6, 7, 8}
set3 = {3, 4, 5, 9, 10}
# Output: {4, 5}
```

### Exercise 4: Invert Dictionary
```python
# Swap keys and values
original = {"a": 1, "b": 2, "c": 3}
# Output: {1: 'a', 2: 'b', 3: 'c'}
```

### Exercise 5: Remove Duplicates (preserve order)
```python
# Remove duplicates while preserving order
numbers = [1, 2, 2, 3, 4, 4, 5]
# Output: [1, 2, 3, 4, 5]
```

---

## 14. Key Takeaways

✅ **Dictionaries** store key-value pairs  
✅ **Sets** store unique elements  
✅ **Dictionary methods**: `.get()`, `.keys()`, `.values()`, `.items()`  
✅ **Set operations**: union (|), intersection (&), difference (-)  
✅ Use **comprehensions** for concise creation  
✅ **defaultdict** for auto-initialization  
✅ **Counter** for counting occurrences  
✅ Choose right data structure for the task  

---

## 15. Resources

### Documentation
- [Python Dictionaries](https://docs.python.org/3/tutorial/datastructures.html#dictionaries)
- [Python Sets](https://docs.python.org/3/tutorial/datastructures.html#sets)

### Video Tutorials
- [Python Dictionaries - Corey Schafer](https://www.youtube.com/watch?v=daefaLgNkw0)
- [Python Sets](https://www.youtube.com/watch?v=videoseries)

### Practice
- [W3Schools Dict Methods](https://www.w3schools.com/python/python_dictionaries.asp)

---

## 16. Tomorrow's Preview: Conditionals

Tomorrow you'll learn:
- 🔀 If-elif-else statements
- ⚖️ Comparison and logical operators
- 🎯 Nested conditions
- 🎮 Build a number guessing game
- 🔍 Ternary operators

---

**🎉 Congratulations on completing Day 5!**

Checklist:
- [ ] Complete all practice exercises
- [ ] Build student records manager
- [ ] Practice dictionary comprehensions
- [ ] Master set operations
- [ ] Understand data structure trade-offs

**See you tomorrow for Day 6! 🚀**
