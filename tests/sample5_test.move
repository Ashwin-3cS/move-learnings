module test_world::sample5_test {
    #[test_only]
    use test_world::Sample5Code::abort_error_handling;
    use std :: debug::print;

    #[test]
    fun test_abort() {
        let result = abort_error_handling();
        print(&result);
    }

}