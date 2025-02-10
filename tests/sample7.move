module test_world :: sample7_test {
    use test_world :: sample7; 
    use std :: debug :: print ;

    #[test]
    fun test_while_looper() {
        let result = sample7::sample_fun_while_loop(1);
        print(&result);
    }   
}   