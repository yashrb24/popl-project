fn get_wrapped(i: usize, a: &[u32]) -> u32 {
    if a.len() == 0 {
        return 0;
    }
    return a[i % a.len() + 1];
}

#[cfg(kani)]
#[kani::proof]
fn bound_check() {
    let size: usize = kani::any();
    kani::assume(size < 4096);
    let index: usize = kani::any();
    let array: Vec<u32> = vec![0; size];
    get_wrapped(index, &array);
}

