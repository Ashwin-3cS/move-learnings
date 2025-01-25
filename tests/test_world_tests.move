module test_world::test_world_tests {
    use test_world::sample::test_print_id;
    use std::debug::print;
    use std::string::{Self, String, utf8};

    #[test]
    fun test_printing_id() {
        let printed_number_from_sample_module = test_print_id();
        let message = b"the printed variable";
        print(&printed_number_from_sample_module);
        print(&message);
        print(&utf8(message));
    }
}