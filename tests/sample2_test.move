module test_world::sample2_test{
    use test_world::PractiseFile::display_addr;
    

    #[test_only]
    use std::debug::print;
    #[test]
    fun test_display_address(){
        let result = display_addr();
        print(&result);
        print(&@std); // printing the address of the standard library
        //Refer notes for detailed docs
        
    }


}