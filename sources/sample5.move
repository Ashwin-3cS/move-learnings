module test_world::Sample5Code {
    use std::debug::print;
    use std::string::{String, utf8};

    public fun abort_error_handling(): String {
        let a = 4;
        if (a == 24) {
            let message = utf8(b"true");
            print(&message);
            message
        } else {
            abort 401
        }
    }
}