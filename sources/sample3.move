module test_world::one {
    // friend test_world::two; //deprecated
    public(package) fun get_value(): u64 {
        10
    }
}

module test_world::two {
    use test_world::one;
    public fun get_value_two_fun(): u64 {
        let result = one::get_value();
        result
    }

    #[view]
    public fun get_value_two_view(): u64 {
        let result = one::get_value();
        result
    }
}
