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

    public fun assert_error_handling(): String {
        let value = 101;
        // Assert will abort with the given code if condition is false
        assert!(value > 0, 402); // Custom error code 402
        
        let message = utf8(b"valid value");
        print(&message);
        
        // Additional validation
        assert!(value < 100, 403); // Another custom error code // it will revert a error (more than 101)
        
        message
    }
}