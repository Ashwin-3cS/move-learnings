module test_world :: sample6_test {
    #[test_only]

    use test_world::sample6;
    use std :: debug ::print;

    #[test] 

    fun cast_tester () {
        let result = sample6::caster(47);
        let message = b"its a u16";
        if (result == 47u16){ //using 47u16 means    //let b = 47u16;  // u16 (0 to 65,535) // its just 47u16 (inline type annotation)
            print(&message);
        }

    }



}