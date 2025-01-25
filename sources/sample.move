module test_world::sample {
    use std::debug::print;


    const ID:u32 = 12;
    public fun test_print_id():u32 {
        print(&ID);
        ID
    }


}