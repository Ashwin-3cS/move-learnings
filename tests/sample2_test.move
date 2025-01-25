module test_world::sample2_test{
    use test_world::PractiseFile::display_addr;
    use test_world::PractiseFile::is_zero;

    #[test_only] //Makes sure that only the test functions use this library globally
    use std::debug::print;
    #[test]
    fun test_display_address(){
        let result = display_addr();
        print(&result);
        print(&@std); // printing the address of the standard library
        //Refer notes for detailed docs
    }
    #[test]
    fun test_is_zero(){
        let result = is_zero(0);
        print(&result);
    }

}