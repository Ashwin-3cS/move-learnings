module test_world :: sample8_test {
    #[test_only]
    use test_world::sample8;
    use std::string;
    use test_world::sample8::User;
    use std::debug::print;
    #[test] 
     fun test_sample8 () {

        let name = string::utf8(b"ashwin");
        let middle_name = string::utf8(b"ashy");  // so first we write the ashy name as bytes then convert to string using utf8 then pass to the function
        let user_with_middle_name = sample8::optionInMove(name, middle_name);
        let userName = sample8::get_name(&user_with_middle_name);
        let middleName = sample8::middle_name(&user_with_middle_name);
        print(&userName);
        print(middleName);
        sample8::optionInMove_wihtoutmiddleName(name);

    }
}