module test_world :: sample6{
    use std::debug::print;
    public fun caster(num : u32) : u16 {  // num being passed as u32
        let a = num ; // a is u32
        print(&a);
        (a as u16) // casting a to u16
    }

}