module test_world :: sample8 {
    use std :: string :: String;
    use std :: debug :: print;
    public struct User has drop  {
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

    public fun get_name (user: &User) : String {
        user.name
    }
    // Reference & =>  this is called borrowing only read and no modification 
    // Mutable Reference =>  &mut user  They can look AND modify it, but must return it

    // use the below method while writing (creates a copy of option and so we can edit it out)
    //  public fun middle_name (user: &User) : Option<String> {
    //     *&user.middle_name
    // }
    // 1. &user - reference to User struct
    // 2. &user.middle_name - gets reference to the Option inside User
    // 3. *&user.middle_name - dereferences (*) the reference (&) to create a copy

    public fun middle_name (user: &User) : &Option<String> {
        &user.middle_name
    } // just for reading ; user -> refers to the address of the User struct right and returns the value Option just referring to the Option though

}