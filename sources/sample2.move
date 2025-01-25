module test_world::PractiseFile { 
    const MY_ADDRESS:address = @test_world;


    public fun display_addr():address {
        MY_ADDRESS
    }

    public fun is_zero(num:u64):bool {
        if(num == 0){
            return true
        }else {
            return false
        }
    }
  

}