# Formal Verification for Rust Ported Codebases 

## Introduction

### 1. Problem Statement:

- **Original Statement:**
  - Porting code from C/C++ to Rust is a growing trend in systems programming due to how Rust offers Memory and Concurrency Safety. One such example is the [Rust For Linux](https://rust-for-linux.com/) project that adds Rust as a second programming language to C for writing kernel components.
  - We aim to employ formal verification methods, including model checking and symbolic execution, to ensure the correctness of memory safety properties and functional correctness of certain properties across the C/C++ and ported Rust code

- **POPL Angle:**
  - **Integration of the best aspects of the two programming languages**: The project aims at porting C codebases to Rust in order to achieve the memory safety guarantees provided by Rust, while making minimal changes to the legacy code. 
  - **Exploring different program paths without concrete inputs**: This is a common challenge in software testing. Using formal verification techniques, we verified code with different programming language concepts like:
    - Memory Safety: Rust prevents memory-related errors like null pointer dereferences, and buffer overflows through its ownership system.
    - Ownership and Borrowing: Rust's ownership system ensures exclusive data ownership, preventing data races, while borrowing allows safe temporary access.
    - Zero-Cost Abstractions: Rust allows expressive high-level abstractions without sacrificing runtime performance.
    - Type System and Static Typing: Rust's strong type system catches errors at compile time, improving code reliability.

- **Previous Solutions:**
  - Symbolic execution and testing tools like KLEE are well-established in formal verification, but they have rarely been used to verify hybrid Rust and C/C++ codebases
  - Some papers which discuss similar problems can be found [here](https://dl.acm.org/doi/abs/10.1145/1629575.1629596) and [here](https://accelconf.web.cern.ch/icalepcs2019/papers/wecpr02.pdf)

- **Differences in Your Solution:**
  - The unique aspect here is the application of symbolic execution to hybrid Rust and C/C++ code snippets involving memory operations in the heap and in global uninitialized data space.

### 2. Software Architecture:

- **Architecture Overview:**
  - Kani Rust Verifier: simple linked list in rust to check for null pointer dereferences
  - KLEE: custom_malloc code to check for memory_out_of_bounds errors. There is also a hybrid code that consists of the linked_list implemented in Rust and append function implemented in C which is called in the rust code through FFI

### 3. POPL Aspects:
- **Memory Safety** : We try to take advantage Rust's ownership, borrowing and lifetime system to ensure memory safety in the ported codebase, thereby mitigating common memory-related pitfalls like null pointer dereferencing and memory leaks which are usually problems in a pure C codebase. In our examples we use a linked list implemented in Rust to take advantage of its memory safety guarantees. 
- **Symbolic Execution** : We use KLEE which is an LLVM based symbolic execution engine to test the C code for memory out of bounds errors. We use the functions `klee_make_symbolic` and `klee_assume` to create symbolic data and to assume certain conditions on the symbolic data to guide the symbolic execution. We are also using klee_check_memory_access to specifically check for memory out of bounds errors. 
- **Model Checking** : We are using Kani which is a model checker for Rust to check for null pointer dereferences in the Rust code. Kani specializes in checking memory unsafe Rust code. This is important for us since we are trying to port C code to Rust and we want to ensure that the Rust code which includes `unsafe` blocks is memory safe.
- **Hybrid Linking** : We are using FFI to link the Rust code with the C code. We are using the `#[no_mangle]` attribute to ensure that the function name is not mangled by the compiler. We are also using the `extern` keyword to indicate that the function is implemented outside of Rust.
- ** Choice of Programming Paradigms ** :  Implementation of a certain functionality in Rust or C/C++ is decided based on the programming paradigm that is best suited for the task. Each programming language has its pros and cons and in our use case Rust offers memory safety but many codebases have not been converted to Rust which will take a lot of time and require a lot of testing to ensure that the functionality is preserved. C on the other hand is widely used in many codebases and is a low level language which is not memory safe. 
- **Data Structures** : In our examples we are testing it on a linked list implementation which we have written in Rust. In many codebases data structures are crucial to the code and are often included in header files which are written in C which is the parent language here. We try to include the Rust implemented linked list inside the C code to test whether we can use data structures implemented in Rust in C codebases.
- **Object-Oriented Programming Principles** : We have implemented a linked list according to the object oriented programming principles in Rust. We have used structs to encapsulate the data and functions to operate on the data. We have also used the `impl` keyword to implement the functions.

### 4. Results and Testing:

- **Preliminary Tests Conducted:**
  - We used the `test.rs` file to check whether Kani detects a null pointer dereference in the code.
  - We used the hybrid folder in the code external directory to test the linking of the Rust code with the C code. 

- **KLEE tests:**
  - We implemented a custom_malloc function in C to check whether KLEE detected memory out of bounds errors. We also aim to apply it in future work to combined Rust and C LLVM bitcode to verify hybrid code.

### 5. Potential for Future Work Given More Time:

- **Extended Features:**
1. **Enhanced Symbolic Execution:**
   - Investigate advanced features and optimizations in symbolic execution engines like KLEE.

2. **Integration with Larger Codebases:**
   - Extend the symbolic testing approach to larger and more complex codebases to evaluate scalability and applicability, and collaborate with the other group to test ported real world code.

3. **Dynamic Analysis:**
   - Incorporate dynamic analysis techniques to complement symbolic execution, providing a more comprehensive understanding of program behavior.

4. **Property-Based Testing:**
   - Extend the project to support property-based testing, enabling the specification of properties to be checked during symbolic execution.

5. **Benchmarking and Evaluation:**
   - Establish a comprehensive benchmark suite and evaluate the performance of the symbolic execution engine on various types of programs and real-world use cases.

6. **Concurrency and Parallel Symbolic Execution:**
   - Explore techniques for handling concurrent and parallel code in symbolic execution to address challenges in modern multi-threaded applications.

7. **Security Analysis:**
    - Extend the project to include security-focused symbolic execution, identifying vulnerabilities and security issues in code.

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

The code includes a verification block using the Kani proof system. The `verify_success` function calls the `do_stuff` function. Kani providing a simple proof of null pointer dereference.

### Notes

- This implementation focuses on simplicity and may not handle all edge cases or optimizations.

## [Symbolic Execution Test in C](https://github.com/yashrb24/popl-project/blob/main/tests/memory_bounds_check.c)

### Overview

This C code snippet utilizes the KLEE symbolic execution engine to test a program that involves symbolic data. The program defines a structure `data` containing an offset and an array of integers. The goal is to perform symbolic execution on this program to explore bounds checking for an array in C using KLEE.

### Code Structure

#### [Data Structure](https://github.com/yashrb24/popl-project/blob/main/tests/memory_bounds_check.c#L13)

The `data` structure includes:
- `offset`: An unsigned integer indicating an offset.
- `array`: An array of unsigned integers with a maximum size of `MAX_SIZE`.

#### [Memory](https://github.com/yashrb24/popl-project/blob/main/tests/memory_bounds_check.c#L18)

The code reserves a block of memory (`data_memory`) in uninitialized global data space to be used for symbolic execution.

#### Symbolic Execution Functions

- [`klee_make_symbolic_range(void* addr, unsigned int offset, unsigned int nbytes, const char* name)`](https://github.com/yashrb24/popl-project/blob/main/tests/memory_bounds_check.c#L20): A helper function to create symbolic data within a specified range.
- [`test()`](https://github.com/yashrb24/popl-project/blob/main/tests/memory_bounds_check.c#L36): The main function for testing. It creates a symbolic `data` structure, assumes certain conditions on the symbolic data, and then performs a conditional check.

### KLEE Symbolic Execution

KLEE is a symbolic execution engine that analyzes a program to explore different paths and conditions without executing the program on concrete inputs. This allows testing various scenarios and identifying potential issues.

#### [Symbolic Data Generation](https://github.com/yashrb24/popl-project/blob/main/tests/memory_bounds_check.c#L40)

The `klee_make_symbolic_range` function is used to create symbolic data for the `offset` and the `array` within the `data` structure. This symbolic data is then assumed to meet certain conditions to guide the symbolic execution.

#### [Assumptions](https://github.com/yashrb24/popl-project/blob/main/tests/memory_bounds_check.c#L44)

The code includes an assumption (`klee_assume`) on the `offset` field to limit its possible values. This is a common technique in symbolic execution to reduce the state space and make the analysis more manageable.
Exploding state space can be a real problem with large codebases for symbolic execution.

#### Conditional Check

The program performs a conditional check based on the symbolic data. If the value at a specific offset in the `array` is equal to the ASCII value of 'a', it prints "true"; otherwise, it prints "false."



## [FAILED ATTEMPT] [Custom Malloc For KLEE Verification(custom_malloc.c)](https://github.com/yashrb24/popl-project/blob/main/code-orig/custom_malloc.c)

### Why did this fail and why are we documenting this
We attempted to make a `custom malloc` code for KLEE Verification. However, after completing the code and documenting it fully we realised that the code is incorrect due to some starting assumptions we made. This can be fixed, however, we decided that it's better to write a newer code from scratch to ensure we can complete it within the deadline. Below is the documentation we had written for the code. 

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


### Code Structure
[BUFFER_SIZE](https://github.com/yashrb24/popl-project/blob/main/code-orig/custom_malloc.c#L5) defines the size of the global buffer

[globalBuffer](https://github.com/yashrb24/popl-project/blob/main/code-orig/custom_malloc.c#L6) is an array of characters acting as a global memory buffer with a fixed size

[MemoryAllocation Struct](https://github.com/yashrb24/popl-project/blob/main/code-orig/custom_malloc.c#L5) Represents a memory allocation with two fields:
-  `startAddress`: Pointer to the start of the allocated memory
-  `size` : Size of the allocated memory block.

[allocatedRegions Array](https://github.com/yashrb24/popl-project/blob/main/code-orig/custom_malloc.c#L9)
- An array of `MemoryAllocation` structures to store information about allocated memory regions.
- `numAllocatedRegions` : Keeps track of the number of allocations.

[globalMalloc Function](https://github.com/yashrb24/popl-project/blob/main/code-orig/custom_malloc.c#L22)
- Takes a size argument and attempts to allocate memory from `globalBuffer` .
- Checks if there's enough space and assigns memory from `globalBuffer` .
- Stores information about the allocated memory in `allocatedRegions`.
- Notice how [klee_make_symbolic](https://github.com/yashrb24/popl-project/blob/main/code-orig/custom_malloc.c#L25) has been used here to keep track of memory locations has been used here

[globalFree Function](https://github.com/yashrb24/popl-project/blob/main/code-orig/custom_malloc.c#L51)
- Frees previously allocated memory by matching the pointer to an allocated region.
- Clears the corresponding entry in `allocatedRegions`.

[Main Function](https://github.com/yashrb24/popl-project/blob/main/code-orig/custom_malloc.c#L74)
- Memory Allocation and Initialization:
  - [Calls](https://github.com/yashrb24/popl-project/blob/main/code-orig/custom_malloc.c#L76) `globalMalloc` twice to allocate memory for two dynamic arrays (`dynamicArray1` and `dynamicArray2`)
  -  Assigns symbolic values to these arrays using [klee_make_symbolic](https://github.com/yashrb24/popl-project/blob/main/code-orig/custom_malloc.c#L80). This is typically used in symbolic execution to explore different paths in the code without knowing exact concrete values.
- Printing Array Values:
  - [prints](https://github.com/yashrb24/popl-project/blob/main/code-orig/custom_malloc.c#L84) the values of `dynamicArray1` and `dynamicArray2`.
- Freeing Allocated Memory:
  - [Calls](https://github.com/yashrb24/popl-project/blob/main/code-orig/custom_malloc.c#L96) globalFree to free the memory allocated for `dynamicArray1` and `dynamicArray2`
