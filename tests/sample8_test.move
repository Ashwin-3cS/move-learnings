module test_world :: sample8_test {
    #[test_only]
    use test_world::sample8;
    use std::string;
    #[test] 
     fun test_sample8 () {

        let name = string::utf8(b"ashwin");
        let middle_name = string::utf8(b"ashy");  // so first we write the ashy name as bytes then convert to string using utf8 then pass to the function
        sample8::optionInMove(name, middle_name);
        sample8::optionInMove_wihtoutmiddleName(name);
    }
}