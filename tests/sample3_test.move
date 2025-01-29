module test_world::two {
    use test_world::one::get_value;

    #[test_only]
    use std::debug::print;
    use std::string::utf8;

    #[test]
    fun test_fun() {
        let result = get_value();
        let message = b"just a successful message from sample3_test";
        print(&utf8(message));
        print(&result);
    }
}