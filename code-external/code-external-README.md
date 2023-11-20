## Kani Rust Verifier
### Installation Guide
Check out the installation guide [here]([https://github.com/model-checking/kani](https://model-checking.github.io/kani/install-guide.html)https://model-checking.github.io/kani/install-guide.html)

### Overview
- Kani, an open-source verification tool, employs [model checking](https://en.wikipedia.org/wiki/Model_checking) to scrutinize Rust programs
- Its forte verifies unsafe code segments in Rust, where the compiler's "unsafe superpowers" remain unchecked
- Examples of properties that Kani can validate include:
  - Ensuring memory safety (such as null pointer dereferences and use-after-free scenarios)
  - The absence of specific runtime errors (like index out of bounds and panics)
  - The prevention of unexpected behaviours like arithmetic overflows
- Moreover, Kani can substantiate customized properties specified through user assertions
- Employing model checking, Kani either confirms the property, refutes it (providing a counterexample), or might exhaust available resources
- Kani relies on proof harnesses for program analysis, akin to test harnesses, particularly those centred on properties.







