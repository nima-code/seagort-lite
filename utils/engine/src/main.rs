use std::ffi::CStr;

mod lib;
mod utils {
    pub mod c_interface;
}

fn main() {
    let myString = "console.log(\"Hello World\");";
    let reuslt =  lib::compile_js(unsafe { utils::c_interface::ruststring_to_cstring(myString) });
    println!("{:?}", unsafe { CStr::from_ptr(reuslt)});
}
