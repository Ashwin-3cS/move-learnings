module test_world :: sample6_test {
    #[test_only]

    use test_world::sample6;

    #[test] 

    fun cast_tester () {
        sample6::caster(47);
    }



}