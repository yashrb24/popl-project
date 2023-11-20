use std::ptr;

// Define a simple Node structure for the linked list
struct Node {
    data: i32,
    next: *mut Node,
}

impl Node {
    // Constructor for creating a new node
    fn new(data: i32) -> Self {
        Node { data, next: ptr::null_mut() }
    }
}

// Function to append a node to the end of the linked list
fn append_node(head: *mut Node, data: i32) -> *mut Node {
    let new_node = Box::into_raw(Box::new(Node::new(data)));

    if head.is_null() {
        return new_node;
    }

    let mut current = head;
    unsafe{
        while !(*current).next.is_null() {
            current = (*current).next;
        }
    
    (*current).next = new_node;
    }
    head
}

// Function to print the linked list
fn print_list(head: *const Node) {
    let mut current = head;
    while !current.is_null() {
        print!("{} ", unsafe { (*current).data });
        current = unsafe { (*current).next };
    }
    println!();
}

fn main() {
    // Creating a linked list in Rust
    let mut head = Box::into_raw(Box::new(Node::new(1)));
    head = append_node(head, 2);
    head = append_node(head, 3);

    println!("Original list:");
    print_list(head);

    // Interacting with C code to append a node
    unsafe {
        append_node_from_c(head, 4);
    }

    println!("Updated list:");
    print_list(head);
}

// Declaration of the external C function to append a node
extern "C" {
    fn append_node_from_c(head: *mut Node, data: i32);
}