module test_world::sampleTest4 {
    #[test_only]
    use std::debug::print;
    use std::string::utf8;
    use test_world::Sample4Code::while_loop;
    #[test]
    fun test_while_loop() {
        let result = while_loop(9);
        let result_message:vector<u8> =b"this is the result from the test_while_loop fun in sample4_test.move";
        print(&utf8(result_message)); 
        print(&result);
    } 
}