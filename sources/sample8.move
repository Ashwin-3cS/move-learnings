module test_world :: sample8 {
    use std :: string :: String;
    use std :: debug :: print;
    public struct User {
        name : String ,
        middle_name : Option<String>

    }
    public fun optionInMove (name : String , middle_name:String) : User {
        let user = User { name, middle_name : option:: some(middle_name)};
        print(&user);
        user
    }

    public fun optionInMove_wihtoutmiddleName (name : String ) : User {
        let user: User = User {name , middle_name:option::none()};
        print(&user);
        user

    } 
}