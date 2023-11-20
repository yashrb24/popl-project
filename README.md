# Formal Verification for Rust Ported Codebases 

## Introduction

### 1. Problem Statement:

- **Original Statement:**
  - Porting operating system code from C/C++ to Rust is a growing trend in systems programming, due to how Rust offers Memory Safety and Concurrency Safety. Our objective is to employ formal verification methods, including model checking and symbolic execution, to rigorously assess and make claims about specific memory safety properties of a C/C++ codebase that has been ported to Rust. 

- **POPL Angle:**
  - The Principles of Programming Languages angle is in exploring different program paths without concrete inputs. This is a common challenge in software testing. Using formal verification techniques we verified code with different programming language concepts like:
    - Memory Safety: Rust prevents memory-related errors like null pointer dereferences and buffer overflows through its ownership system.
    - Ownership and Borrowing: Rust's ownership system ensures exclusive ownership of data, preventing data races, while borrowing allows safe temporary access.
    - Zero-Cost Abstractions: Rust allows expressive high-level abstractions without sacrificing runtime performance.
    - Type System and Static Typing: Rust's strong type system catches errors at compile time, improving code reliability.

- **Previous Solutions:**
  - Symbolic execution and testing tools like KLEE are well-established in the field of formal verification, but they have rarely been used to verify hybrid Rust and C/C++ codebases. //TODO: Add prev literature

- **Differences in Your Solution:**
  - The unique aspect here is the application of symbolic execution to hybrid Rust and C/C++ code snippets involving memory operations in the heap and in global uninitialized data space.

### 2. Software Architecture:

- **Architecture Overview:**
  - The architecture of the provided C code is concise, encapsulated within a single file named main.c. This file contains a data structure (data) representing an offset and an array of integers, along with a memory array (data_memory) allocated for symbolic execution. The code utilizes standard C libraries, as well as the KLEE symbolic execution engine for testing purposes. The main execution flow is centered around the test function, serving as the entry point, where symbolic data is generated, assumptions are applied, and symbolic execution is conducted using KLEE. Despite the absence of external interfaces or complex system interactions, the architecture efficiently demonstrates the core components and their relationships, emphasizing symbolic execution within a self-contained C file.
  - 
- **Reused vs. Developed:**
  - It primarily uses standard C libraries and KLEE for symbolic execution. The test function is developed for this specific purpose.

- **Client-Server or Local/Remote Testing:**
  - It doesn't involve client-server architecture. KLEE and Kani both operate locally.

- **Database Involvement:**
  - No database is involved in this specific implementation.

### 3. POPL Aspects:

- **Symbolic Execution in KLEE:**
  - Symbolic execution is performed in the `test` function using KLEE. Lines 26-28 symbolize the offset and array, initiating symbolic execution.

- **Assumptions and Constraints:**
  - Assumptions are made on the offset (line 30), restricting it to a set of values. This is a common POPL practice to manage state space.

- **Memory Access Safety:**
  - Memory access safety is crucial in lines 14-16, ensuring that symbolic data is accessed safely without causing memory issues.

- **Conditional Checks:**
  - The conditional check on line 32 involves symbolic data, representing a POPL aspect where conditions are explored symbolically.

### 4. Results and Testing:

- **Tests Conducted:**
  - The test function conducts symbolic execution tests on the `data` structure.

- **Datasets Used:**
  - It uses symbolic data as a dataset for testing, generated with KLEE's symbolic execution.

- **Benchmark Results:**
  - No explicit benchmark results or graphs are provided. Visualization of KLEE's output could be considered for a more comprehensive analysis.

- **Validation:**
  - The validation relies on the output of the conditional check, indicating whether the symbolic execution behaves as expected.

### 5. Potential for Future Work:

- **Extended Features:**
  - Placeholder: With more time, additional features enhancing symbolic execution capabilities could be explored.

- **Additional POPL Aspects:**
  - Placeholder: Further investigation into advanced POPL concepts related to symbolic execution could be considered for future work.
## [LinkedList Implementation in Rust(Linked_List_Example.rs)](https://github.com/yashrb24/popl-project/blob/main/code-orig/Linked_List_Example.rs)

### Overview

This Rust code provides a basic implementation of a singly linked list. The linked list consists of nodes, each containing an integer value (`i32`) and a pointer to the next node in the list. The implementation includes methods for creating a new node, initializing a linked list, appending nodes to the end of the list, and printing the elements of the list.

### Code Structure

#### [Node Struct](https://github.com/yashrb24/popl-project/blob/main/code-orig/Linked_List_Example.rs#L1)

The `Node` struct represents a single node in the linked list. It has two fields:
- `data`: An integer value associated with the node.
- `next`: A mutable raw pointer (`*mut Node`) pointing to the next node in the list. We used mutable raw pointers so that we can introduce unsafe operations.

#### [LinkedList Struct](https://github.com/yashrb24/popl-project/blob/main/code-orig/Linked_List_Example.rs#L12)

The `LinkedList` struct represents the entire linked list and contains a mutable raw pointer to the head of the list. It includes methods for initializing an empty linked list (`new`), appending a node to the end of the list (`append`), and printing the elements of the list (`print`).

#### Functions

- [`Node::new(data: i32) -> Self`](https://github.com/yashrb24/popl-project/blob/main/code-orig/Linked_List_Example.rs#L7): A constructor for creating a new node with the given integer value.
- [`LinkedList::new() -> Self`](https://github.com/yashrb24/popl-project/blob/main/code-orig/Linked_List_Example.rs#L17): A constructor for creating a new, empty linked list.
- [`LinkedList::append(&mut self, data: i32)`](https://github.com/yashrb24/popl-project/blob/main/code-orig/Linked_List_Example.rs#L21): Appends a new node with the specified data to the end of the linked list.
- [`LinkedList::print(&self)`](https://github.com/yashrb24/popl-project/blob/main/code-orig/Linked_List_Example.rs#L36): Prints the elements of the linked list.

#### [do_stuff Function](https://github.com/yashrb24/popl-project/blob/main/code-orig/Linked_List_Example.rs#L47)

The `do_stuff` function demonstrates the usage of the linked list by creating an instance of `LinkedList`, appending three nodes with values 1, 2, and 3, and then printing the elements of the list. This is the function that we are checking using Kani for null pointer dereferences. The code uses unsafe Rust features due to the manual management of raw pointers. In real code, care must be taken to ensure that operations involving raw pointers are safe and do not lead to memory safety issues.

### Building and Running

To build and run the code, ensure you have a Rust environment set up. Then, compile and execute the code using:

```bash
cargo run
```

### [Verification](https://github.com/yashrb24/popl-project/blob/main/code-orig/Linked_List_Example.rs#L62)

The code includes a verification block using the Kani proof system. The `verify_success` function tests the `do_stuff` function, providing a simple proof of null pointer dereference.

### Notes

- This implementation focuses on simplicity and may not handle all edge cases or optimizations.

  
## [Custom Malloc For KLEE Verification(custom_malloc.c)](https://github.com/yashrb24/popl-project/blob/main/code-orig/custom_malloc.c)

### Overview

- To enable verification with tools like KLEE, the code necessitates memory allocation on the stack rather than the heap. The conventional malloc function, which allocates
memory on the heap and returns its pointer, isn't compatible with this verification process.
- To address this, a custom malloc function has been written by us. This implementation allocates memory within a global buffer, aiming to replicate the memory allocation behaviour of the original malloc. For developers, the change is minimal—simply substituting custom_malloc for malloc when requesting memory. The specifics of how and where memory is obtained remain opaque to the developer, akin to malloc. KLEE can successfully work on this global buffer.
- These adjustments are crucial to ensure compatibility with verification tools. Adhering to specific coding practices and patterns significantly enhances the effectiveness of such tools in verification, contributing to the code's overall correctness and safety for deployment in production environments.

### Code Logic Progression
This code snippet demonstrates a simplistic memory allocation scheme using a fixedsize buffer and manual bookkeeping of allocated regions. It also introduces symbolic execution to explore different execution paths, typically used in testing and verification
1. Allocate memory from `globalBuffer` .
2. Assign symbolic values to allocated memory blocks.
3. Print these symbolic values.
4. Free allocated memory.


### Explanation
####[`BUFFER_SIZE`](https://github.com/yashrb24/popl-project/blob/main/code-orig/custom_malloc.c#L5) defines the size of the global buffer




## Symbolic Execution Test in C

### Overview

This C code snippet utilizes the KLEE symbolic execution engine to test a program that involves symbolic data. The program defines a structure `data` containing an offset and an array of integers. The goal is to perform symbolic execution on this program to explore different paths and verify certain conditions.

### Code Structure

#### Data Structure

The `data` structure includes:
- `offset`: An unsigned integer indicating an offset.
- `array`: An array of unsigned integers with a maximum size of `MAX_SIZE`.

#### Memory

The code reserves a block of memory (`data_memory`) to be used for symbolic execution.

#### Symbolic Execution Functions

- `klee_make_symbolic_range(void* addr, unsigned int offset, unsigned int nbytes, const char* name)`: A helper function to create symbolic data within a specified range.
- `test()`: The main function for testing. It creates a symbolic `data` structure, assumes certain conditions on the symbolic data, and then performs a conditional check.

### KLEE Symbolic Execution

KLEE is a symbolic execution engine that analyzes a program to explore different paths and conditions without executing the program on concrete inputs. This allows testing various scenarios and identifying potential issues.

#### Symbolic Data Generation

The `klee_make_symbolic_range` function is used to create symbolic data for the `offset` and the `array` within the `data` structure. This symbolic data is then assumed to meet certain conditions to guide the symbolic execution.

#### Assumptions

The code includes an assumption (`klee_assume`) on the `offset` field to limit its possible values. This is a common technique in symbolic execution to reduce the state space and make the analysis more manageable.

#### Conditional Check

The program performs a conditional check based on the symbolic data. If the value at a specific offset in the `array` is equal to the ASCII value of 'a', it prints "true"; otherwise, it prints "false."

### Notes

- Symbolic execution is a powerful technique for exploring different program paths and identifying potential issues without the need for concrete inputs.
- The code assumes familiarity with KLEE and symbolic execution concepts.
- Ensure that KLEE is properly installed and configured to run this code.
- The provided assumptions on symbolic data and conditional checks should be adjusted based on the specific requirements of the program under test.
