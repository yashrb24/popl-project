## Kani Rust Verifier
### Installation Guide
Check out the installation guide [here](https://model-checking.github.io/kani/install-guide.html)

### Overview
- Kani, an open-source verification tool, employs [model checking](https://en.wikipedia.org/wiki/Model_checking) to scrutinize Rust programs
- Its forte verifies unsafe code segments in Rust, where the compiler's "unsafe superpowers" remain unchecked
- Examples of properties that Kani can validate include:
  - Ensuring memory safety (such as null pointer dereferences and use-after-free scenarios)
  - The absence of specific runtime errors (like index out of bounds and panics)
  - The prevention of unexpected behaviours like arithmetic overflows
- Moreover, Kani can substantiate customized properties specified through user assertions
- Employing model checking, Kani either confirms the property, refutes it (providing a counterexample), or might exhaust available resources
- Kani relies on proof harnesses for program analysis, akin to test harnesses, particularly those centred on properties

### Usage
- To demonstrate the usage of Kani, we have used `Linked_List.rs` as a sample code
- To verify this using Kani, run the command `kani --harness verify_success Linked_List_Example.rs`
- The expected output here is `VERIFICATION:- FAILED`
- This is because we are making a null pointer [dereference](https://github.com/yashrb24/popl-project/blob/main/code-orig/Linked_List_Example.rs#L58)


## KLEE Symbolic Execution Engine

### Installation Guide
Check out the installation guide [here](https://klee.github.io/docker/)
Use the docker installation as that works out of the box, Ensure docker is installed in the system before this

### Overview
- **Symbolic Execution Engine:** KLEE is a symbolic execution engine designed for program analysis.
- **LLVM IR Compatibility:** It operates on programs represented in LLVM intermediate representation.
- **Automatic Test Case Generation:** KLEE generates test cases automatically to explore different program paths.
- **Path Exploration:** It systematically explores execution paths, including branches, loops, and conditionals.
- **Constraint Solving:** KLEE uses constraint solving to determine input values satisfying specified conditions.
- **SMT Solver Integration:** Integrates with SMT solvers, such as Z3, for efficient constraint solving.
- **Memory Modeling:** Symbolically models memory operations, aiding in reasoning about memory safety.
- **Platform Independence:** Aims to be platform-independent, supporting analysis across different OS and architectures.

### Usage

1. **Compile Your Code:**
   - Use `clang` to compile your C code to LLVM bitcode. For example:
     ```bash
     clang -emit-llvm -c -g your_code.c -o your_code.bc
     ```
   - Note that klee currently works with llvm 13 and clang 13 so if you want to run this outside the docker container, ensure the clang       version is clang 13
   - To install clang 13 and llvm 13 on recent Ubuntu (e.g. 21.10) or Debian run
     ```bash
     sudo apt-get install clang-13 llvm-13 llvm-13-dev llvm-13-tools
     ```
   - To compile your Rust code to LLVM bitcode, ensure you are using rustc version 1.59.0 which compiles to llvm 13
   -  To change the rust version use 
     ```bash
     rustup override set 1.59.0
     ```
   - to compile the rust file llvm bitcode use
     ```bash
     rustc --emit=llvm-bc my_rust_code.rs
     ```

2. **Run KLEE:**
   - Use KLEE to symbolically execute your compiled code:
     ```bash
     klee your_code.bc
     ```








