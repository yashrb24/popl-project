struct Node {
    data: i32,
    next: *mut Node,
}

impl Node {
    fn new(data: i32) -> Self {
        Node { data, next: std::ptr::null_mut() }
    }
}

struct LinkedList {
    head: *mut Node,
}

impl LinkedList {
    fn new() -> Self {
        LinkedList { head: std::ptr::null_mut() }
    }

    fn append(&mut self, data: i32) {
        let new_node = Box::into_raw(Box::new(Node::new(data)));
        if self.head.is_null() {
            self.head = new_node;
        } else {
            let mut current = self.head;
            unsafe {
                while !(*current).next.is_null() {
                    current = (*current).next;
                }
                (*current).next = new_node;
            }
        }
    }

    fn print(&self) {
        let mut current = self.head;
        unsafe {
            while !current.is_null() {
                println!("{}", (*current).data);
                current = (*current).next;
            }
        }
    }
}

fn do_stuff() -> i32 {
    let mut list = LinkedList::new();
    list.append(1);
    list.append(2);
    list.append(3);
    let mut current = list.head;
    unsafe {
        while !current.is_null() {
            println!("{}", (*current).data);
            current = (*current).next;
        }
        return (*current).data;
    }
}

#[cfg(kani)]
#[kani::proof]
fn verify_success() {
    let y = do_stuff();
}
