module test_world :: sample6{
    use std::debug::print;
    public fun caster(num : u32) : u16 { 
        let a = num ;
        print(&a);
        (a as u16)
    }

}