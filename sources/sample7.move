module test_world::sample7 {


    
    // push operation 

    // operations:
    // push_back: Adds an element to the end of the vector.
    // pop_back: Removes the last element from the vector.
    // length: Returns the number of elements in the vector.
    // is_empty: Returns true if the vector is empty.
    // remove: Removes an element at a given index.

    
    public fun sample_fun_while_loop (argument : u128) : u128{

        use std:: debug ::print;

        let mut var : vector<u128> = vector[]; // or vector :: empty();
        let mut counter = argument ;


        while(counter < 10) { // if i pass 9 as counter 


           vector :: push_back(&mut var, counter);
           print(&var);
           counter = counter +1 ;
           print(&counter);
           


        };
         counter 
        
    } 


} 