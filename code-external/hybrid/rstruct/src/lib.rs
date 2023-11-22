use std::boxed::Box;
use std::ffi::CString;
use std::os::raw::c_char;

#[repr(C)]
pub struct RStruct {
    name: *const c_char,
    value: Value,
}

#[repr(C)]
pub enum Value {
    _Int(i32),
    _Float(f64),
}

#[no_mangle]
pub extern "C" fn data_new() -> *mut RStruct {
    println!("{}", "Inside data_new().".to_string());

    Box::into_raw(Box::new(RStruct {
        name: CString::new("my_rstruct")
            .expect("Error: CString::new()")
            .into_raw(),
        value: Value::_Int(42),
    }))
}

#[no_mangle]
pub extern "C" fn data_free(ptr: *mut RStruct) {
    if ptr.is_null() {
        return;
    }
    unsafe {
        Box::from_raw(ptr);
    }
}