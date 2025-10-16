# Day 3: Dictionaries & Sets

## 📚 Learning Objectives
By the end of this day, you will:
- Master Python dictionaries (key-value pairs)
- Understand sets and their unique properties
- Perform dictionary and set operations
- Learn when to use each data structure
- Work with nested dictionaries
- Use dictionary and set comprehensions

---

## 1. Introduction to Dictionaries

### 1.1 What are Dictionaries?

Dictionaries are **unordered collections of key-value pairs**. Think of them like a real dictionary where you look up a word (key) to find its definition (value).

```python
# Creating dictionaries
student = {
    "name": "John Doe",
    "age": 20,
    "grade": "A",
    "courses": ["Math", "Physics"]
}

# Empty dictionary
empty_dict = {}
another_empty = dict()

# Dictionary with different data types
mixed = {
    "string": "hello",
    "number": 42,
    "list": [1, 2, 3],
    "tuple": (4, 5, 6),
    "nested": {"inner": "value"}
}

# Using dict() constructor
person = dict(name="Alice", age=25, city="Boston")
# Result: {"name": "Alice", "age": 25, "city": "Boston"}
```

### 1.2 Key Characteristics

✅ **Keys must be unique** - duplicate keys overwrite previous values  
✅ **Keys must be immutable** - strings, numbers, tuples (not lists)  
✅ **Values can be anything** - any data type  
✅ **Unordered** - items don't have a fixed position (Python 3.7+ maintains insertion order)  
✅ **Mutable** - can add, modify, delete items  

```python
# Valid keys
valid_dict = {
    "string_key": 1,
    42: "number key",
    (1, 2): "tuple key",
    True: "boolean key"
}

# Invalid keys
# invalid_dict = {
#     [1, 2]: "list key"  # ❌ TypeError: unhashable type: 'list'
# }

# Duplicate keys - last one wins
duplicate = {"name": "John", "age": 25, "name": "Alice"}
print(duplicate)  # {"name": "Alice", "age": 25}
```

---

## 2. Dictionary Operations

### 2.1 Accessing Values

```python
student = {"name": "John", "age": 20, "grade": "A"}

# Using square brackets
name = student["name"]  # "John"
age = student["age"]    # 20

# KeyError if key doesn't exist
# score = student["score"]  # ❌ KeyError

# Using get() method (safer)
grade = student.get("grade")      # "A"
score = student.get("score")      # None (no error!)
score = student.get("score", 0)   # 0 (default value)

# Checking if key exists
if "name" in student:
    print(student["name"])

# Alternative
has_grade = "grade" in student  # True
no_score = "score" not in student  # True
```

### 2.2 Modifying Dictionaries

```python
student = {"name": "John", "age": 20}

# Adding new key-value pair
student["grade"] = "A"
# Result: {"name": "John", "age": 20, "grade": "A"}

# Modifying existing value
student["age"] = 21
# Result: {"name": "John", "age": 21, "grade": "A"}

# Adding multiple items with update()
student.update({"gpa": 3.8, "major": "CS"})
# or
student.update(gpa=3.8, major="CS")

# Remove items
del student["grade"]  # Remove specific key

removed_value = student.pop("age")  # Remove and return value
removed_value = student.pop("nonexistent", "default")  # Safe removal

last_item = student.popitem()  # Remove and return last item (key, value)

student.clear()  # Remove all items
```

---

## 3. Dictionary Methods

### 3.1 Retrieving Keys, Values, and Items

```python
student = {"name": "John", "age": 20, "grade": "A", "gpa": 3.8}

# Get all keys
keys = student.keys()
print(keys)  # dict_keys(['name', 'age', 'grade', 'gpa'])
keys_list = list(keys)  # Convert to list

# Get all values
values = student.values()
print(values)  # dict_values(['John', 20, 'A', 3.8])

# Get all key-value pairs
items = student.items()
print(items)  # dict_items([('name', 'John'), ('age', 20), ...])

# Iterating
for key in student.keys():
    print(key)

for value in student.values():
    print(value)

for key, value in student.items():
    print(f"{key}: {value}")
```

### 3.2 Dictionary Comprehensions

```python
# Create dictionary from range
squares = {x: x**2 for x in range(1, 6)}
# Result: {1: 1, 2: 4, 3: 9, 4: 16, 5: 25}

# With condition
even_squares = {x: x**2 for x in range(1, 11) if x % 2 == 0}
# Result: {2: 4, 4: 16, 6: 36, 8: 64, 10: 100}

# From two lists
names = ["Alice", "Bob", "Charlie"]
ages = [25, 30, 35]
people = {name: age for name, age in zip(names, ages)}
# Result: {"Alice": 25, "Bob": 30, "Charlie": 35}

# Transform existing dictionary
original = {"a": 1, "b": 2, "c": 3}
doubled = {k: v*2 for k, v in original.items()}
# Result: {"a": 2, "b": 4, "c": 6}

# Swap keys and values
swapped = {v: k for k, v in original.items()}
# Result: {1: "a", 2: "b", 3: "c"}
```

### 3.3 Nested Dictionaries

```python
# Complex data structure
students = {
    "student1": {
        "name": "John",
        "age": 20,
        "courses": ["Math", "Physics"],
        "grades": {"Math": "A", "Physics": "B"}
    },
    "student2": {
        "name": "Alice",
        "age": 22,
        "courses": ["Chemistry", "Biology"],
        "grades": {"Chemistry": "A", "Biology": "A"}
    }
}

# Accessing nested values
john_name = students["student1"]["name"]  # "John"
math_grade = students["student1"]["grades"]["Math"]  # "A"

# Modifying nested values
students["student1"]["age"] = 21
students["student1"]["grades"]["Physics"] = "A"

# Iterating through nested dict
for student_id, student_info in students.items():
    print(f"\n{student_id}:")
    for key, value in student_info.items():
        print(f"  {key}: {value}")
```

---

## 4. Introduction to Sets

### 4.1 What are Sets?

Sets are **unordered collections of unique elements**. They automatically remove duplicates.

```python
# Creating sets
numbers = {1, 2, 3, 4, 5}
fruits = {"apple", "banana", "orange"}

# Empty set (must use set(), not {})
empty_set = set()  # ✅ Correct
# empty_set = {}   # ❌ This creates an empty dictionary!

# From list (removes duplicates)
numbers_list = [1, 2, 2, 3, 3, 3, 4, 5]
unique_numbers = set(numbers_list)  # {1, 2, 3, 4, 5}

# From string (unique characters)
letters = set("hello")  # {'h', 'e', 'l', 'o'}

# Set with different types
mixed = {1, "hello", 3.14, (1, 2)}
# mixed = {1, [2, 3]}  # ❌ TypeError: unhashable type: 'list'
```

### 4.2 Set Characteristics

✅ **Unique elements** - no duplicates allowed  
✅ **Unordered** - no indexing or slicing  
✅ **Mutable** - can add/remove elements  
✅ **Elements must be immutable** - strings, numbers, tuples  
✅ **Fast membership testing** - `in` operator is very efficient  

---

## 5. Set Operations

### 5.1 Basic Operations

```python
fruits = {"apple", "banana", "orange"}

# Length
print(len(fruits))  # 3

# Membership testing (very fast!)
print("apple" in fruits)  # True
print("grape" in fruits)  # False

# Adding elements
fruits.add("grape")  # Add single element
fruits.update(["kiwi", "mango"])  # Add multiple elements
fruits.update("strawberry")  # Adds each character!

# Removing elements
fruits.remove("banana")  # Raises KeyError if not found
fruits.discard("grape")  # No error if not found
popped = fruits.pop()  # Remove and return arbitrary element
fruits.clear()  # Remove all elements
```

### 5.2 Mathematical Set Operations

```python
set1 = {1, 2, 3, 4, 5}
set2 = {4, 5, 6, 7, 8}

# Union (all elements from both sets)
union = set1 | set2
union = set1.union(set2)
# Result: {1, 2, 3, 4, 5, 6, 7, 8}

# Intersection (common elements)
intersection = set1 & set2
intersection = set1.intersection(set2)
# Result: {4, 5}

# Difference (in set1 but not in set2)
difference = set1 - set2
difference = set1.difference(set2)
# Result: {1, 2, 3}

# Symmetric Difference (in either set, but not both)
sym_diff = set1 ^ set2
sym_diff = set1.symmetric_difference(set2)
# Result: {1, 2, 3, 6, 7, 8}

# Subset and Superset
set_a = {1, 2, 3}
set_b = {1, 2, 3, 4, 5}

is_subset = set_a <= set_b  # True (or set_a.issubset(set_b))
is_superset = set_b >= set_a  # True (or set_b.issuperset(set_a))
is_disjoint = set_a.isdisjoint(set_b)  # False (they share elements)
```

### 5.3 Set Comprehensions

```python
# Create set of squares
squares = {x**2 for x in range(10)}
# Result: {0, 1, 4, 9, 16, 25, 36, 49, 64, 81}

# With condition
even_squares = {x**2 for x in range(10) if x % 2 == 0}
# Result: {0, 4, 16, 36, 64}

# From string (unique vowels)
text = "hello world"
vowels = {char for char in text if char in "aeiou"}
# Result: {'e', 'o'}
```

---

## 6. Frozen Sets

Frozensets are **immutable sets** - can't add or remove elements after creation.

```python
# Creating frozenset
fs = frozenset([1, 2, 3, 4, 5])
fs2 = frozenset("hello")

# Can use as dictionary keys
dict_with_set_keys = {
    frozenset([1, 2]): "value1",
    frozenset([3, 4]): "value2"
}

# Set operations work
fs1 = frozenset([1, 2, 3])
fs2 = frozenset([3, 4, 5])
union = fs1 | fs2

# But can't modify
# fs.add(6)  # ❌ AttributeError
```

---

## 7. Common Use Cases

### 7.1 Dictionaries

**Use dictionaries when:**
- You need key-value associations
- Fast lookups by key
- Storing structured data
- Building JSON-like data

```python
# Configuration settings
config = {
    "debug": True,
    "max_connections": 100,
    "timeout": 30
}

# Counting occurrences
text = "hello world"
char_count = {}
for char in text:
    char_count[char] = char_count.get(char, 0) + 1

# Caching/Memoization
cache = {}
def expensive_function(n):
    if n in cache:
        return cache[n]
    result = n ** 2  # Expensive calculation
    cache[n] = result
    return result

# Grouping data
students = [
    {"name": "John", "grade": "A"},
    {"name": "Alice", "grade": "B"},
    {"name": "Bob", "grade": "A"}
]

by_grade = {}
for student in students:
    grade = student["grade"]
    if grade not in by_grade:
        by_grade[grade] = []
    by_grade[grade].append(student["name"])
# Result: {"A": ["John", "Bob"], "B": ["Alice"]}
```

### 7.2 Sets

**Use sets when:**
- You need unique elements
- Fast membership testing
- Mathematical set operations
- Removing duplicates

```python
# Remove duplicates
numbers = [1, 2, 2, 3, 3, 3, 4, 5]
unique = list(set(numbers))

# Fast membership testing
large_set = set(range(1000000))
print(999999 in large_set)  # Very fast!

# Find common elements
list1 = [1, 2, 3, 4, 5]
list2 = [4, 5, 6, 7, 8]
common = set(list1) & set(list2)  # {4, 5}

# Find unique to each list
only_in_list1 = set(list1) - set(list2)  # {1, 2, 3}

# Tag/Category systems
post_tags = {"python", "programming", "tutorial"}
user_interests = {"python", "data science", "machine learning"}
matched_interests = post_tags & user_interests  # {"python"}
```

---

## 8. Performance Comparison

| Operation | List | Dictionary | Set |
|-----------|------|------------|-----|
| **Membership test** (`in`) | O(n) - Slow | O(1) - Fast | O(1) - Fast |
| **Add element** | O(1) - append | O(1) | O(1) |
| **Remove element** | O(n) | O(1) | O(1) |
| **Access by key/index** | O(1) | O(1) | N/A |
| **Memory usage** | Low | Higher | Medium |

---

## 9. Advanced Patterns

### 9.1 Default Dictionaries

```python
from collections import defaultdict

# Regular dictionary - need to check if key exists
regular_dict = {}
for char in "hello":
    if char not in regular_dict:
        regular_dict[char] = 0
    regular_dict[char] += 1

# defaultdict - automatic default value
char_count = defaultdict(int)  # Default value: 0
for char in "hello":
    char_count[char] += 1
# Much cleaner!

# With list as default
groups = defaultdict(list)
groups["A"].append("John")  # No need to initialize!
groups["A"].append("Alice")
```

### 9.2 Counter

```python
from collections import Counter

# Count occurrences easily
text = "hello world"
char_count = Counter(text)
print(char_count)  # Counter({'l': 3, 'o': 2, ...})

# Most common elements
print(char_count.most_common(2))  # [('l', 3), ('o', 2)]

# Operations with Counters
c1 = Counter("hello")
c2 = Counter("world")
combined = c1 + c2  # Combine counts
```

---

## 10. Practice Exercises

### Exercise 1: Phone Book
```python
# Create a phone book dictionary
# Allow: add contact, search contact, delete contact, list all
# Bonus: Save to file, load from file
```

### Exercise 2: Word Frequency
```python
text = """
Python is a high-level programming language.
Python is easy to learn and Python is powerful.
"""
# Count frequency of each word (case-insensitive)
# Expected: {"python": 3, "is": 3, "a": 1, ...}
```

### Exercise 3: Set Operations
```python
# Given two lists of student IDs
class_a = [101, 102, 103, 104, 105, 106]
class_b = [104, 105, 106, 107, 108, 109]

# Find:
# 1. Students in both classes
# 2. Students only in class A
# 3. Students only in class B
# 4. All students
```

### Exercise 4: Inventory System
```python
# Create an inventory dictionary
inventory = {
    "apple": {"quantity": 50, "price": 0.5},
    "banana": {"quantity": 30, "price": 0.3},
    "orange": {"quantity": 40, "price": 0.6}
}

# Implement:
# 1. Add new item
# 2. Update quantity
# 3. Calculate total inventory value
# 4. Find items with quantity below threshold
```

### Exercise 5: Unique Elements
```python
# Given a list of lists, find all unique elements
lists = [
    [1, 2, 3, 4],
    [3, 4, 5, 6],
    [5, 6, 7, 8],
    [7, 8, 9, 1]
]
# Find all unique numbers across all lists
```

---

## 11. Key Takeaways

✅ **Dictionaries** store key-value pairs `{"key": "value"}`  
✅ **Keys must be unique and immutable** (strings, numbers, tuples)  
✅ **Sets** store unique elements `{1, 2, 3}`  
✅ **Sets** are great for removing duplicates and membership testing  
✅ **Dictionary methods**: get, update, keys, values, items  
✅ **Set operations**: union, intersection, difference  
✅ **Comprehensions** work for both dictionaries and sets  
✅ Use `defaultdict` and `Counter` for advanced use cases  

---

## 12. Resources

### Documentation
- [Python Dictionaries](https://docs.python.org/3/tutorial/datastructures.html#dictionaries)
- [Python Sets](https://docs.python.org/3/tutorial/datastructures.html#sets)

### Video Tutorials
- [Python Dictionaries - Corey Schafer](https://www.youtube.com/watch?v=daefaLgNkw0)
- [Python Sets - Real Python](https://realpython.com/python-sets/)

### Practice
- [HackerRank Dictionaries](https://www.hackerrank.com/domains/python?filters%5Bsubdomains%5D%5B%5D=py-dict-set)

---

## 13. Tomorrow's Preview: Control Flow (If-Else, Conditionals)

Tomorrow you'll learn:
- 🔀 If-elif-else statements
- ✅ Boolean logic and conditions
- 🔄 Comparison and logical operators
- 🎯 Nested conditions
- 💡 Ternary operators

---

**🎉 Congratulations on completing Day 3!**

Checklist:
- [ ] Complete all practice exercises
- [ ] Build a simple contact management system
- [ ] Practice set operations
- [ ] Create programs using nested dictionaries
- [ ] Understand when to use dict vs set

**See you tomorrow for Day 4! 🚀**
