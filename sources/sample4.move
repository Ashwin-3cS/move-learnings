module test_world::Sample4Code {
    public fun while_loop(argu: u64): u64 {
        let mut var = 0;
        let mut counter = argu;
        while (counter <= 10) {
            var = var + 1;
            counter = counter + 1;
        };
        var
    }
}