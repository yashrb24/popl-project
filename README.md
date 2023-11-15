# popl-project

## LinkedList Implementation in Rust

### Overview

This Rust code provides a basic implementation of a singly linked list. The linked list consists of nodes, each containing an integer value (`i32`) and a pointer to the next node in the list. The implementation includes methods for creating a new node, initializing a linked list, appending nodes to the end of the list, and printing the elements of the list.

### Code Structure

#### Node Struct

The `Node` struct represents a single node in the linked list. It has two fields:
- `data`: An integer value associated with the node.
- `next`: A mutable raw pointer (`*mut Node`) pointing to the next node in the list.

#### LinkedList Struct

The `LinkedList` struct represents the entire linked list and contains a mutable raw pointer to the head of the list. It includes methods for initializing an empty linked list (`new`), appending a node to the end of the list (`append`), and printing the elements of the list (`print`).

#### Functions

- `Node::new(data: i32) -> Self`: A constructor for creating a new node with the given integer value.
- `LinkedList::new() -> Self`: A constructor for creating a new, empty linked list.
- `LinkedList::append(&mut self, data: i32)`: Appends a new node with the specified data to the end of the linked list.
- `LinkedList::print(&self)`: Prints the elements of the linked list.

#### do_stuff Function

The `do_stuff` function demonstrates the usage of the linked list by creating an instance of `LinkedList`, appending three nodes with values 1, 2, and 3, and then printing the elements of the list.

### Safety Considerations

The code uses unsafe Rust features due to the manual management of raw pointers. Care must be taken to ensure that operations involving raw pointers are safe and do not lead to memory safety issues.

### Building and Running

To build and run the code, ensure you have a Rust environment set up. Then, compile and execute the code using:

```bash
cargo run
```

### Verification

The code includes an optional verification block using the Kani proof system. The `verify_success` function demonstrates how the linked list can be used, providing a simple proof of correctness.

### Notes

- This implementation focuses on simplicity and may not handle all edge cases or optimizations.
- Use caution when working with unsafe Rust features, and consider alternatives like `Rc` and `RefCell` for more idiomatic memory management.
- This readme assumes basic familiarity with Rust and linked list data structures.

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
