module test_world::test {
    use test_world::one::get_value;
    use test_world::two::get_value_two_fun;

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
    #[test] // every function is like takes place as unit test function in the test module 
    fun test_fun_2(){
        let result = get_value_two_fun();
        let message = b"just a successful message from sample3_test_fun_2";
        print(&utf8(message));
        print(&result);
    }
    #[test]
    fun test_view(){
        let result = get_value_two_fun();
        let message = b"just a successful message from sample3_test_view";
        print(&utf8(message));
        print(&result);
    }
}