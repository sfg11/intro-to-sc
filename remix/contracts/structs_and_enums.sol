// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


// declaring a struct type outsite of a contract
// can be used in any contract declard in this file
struct Instructor {
    uint age;
    string name; 
    address addr; 
}

contract Academy {
    
    Instructor public academyInstructor;
    
    // enums can also be defined outside of a contract
    // user defined types with members
    
    // declaring a new enum type
    enum State {Open, Closed, Unknown}  
    
    // declaring and initializing a new state variable of type State
    State public academyState = State.Open; 
    
    // initializing the struct in the constructor
    constructor(uint _age, string memory _name){
        academyInstructor.age = _age; 
        academyInstructor.name = _name; 
        academyInstructor.addr = msg.sender; 
    }
    
     // changing a struct state variable
    function changeInstructor(uint _age, string memory _name, address _addr) public {
        
        if(academyState == State.Open){ 
            // create a new temp memory struct and initialize age, name and addr; 
            Instructor memory myInstructor = Instructor({
                age: _age, 
                name: _name,
                addr: _addr
                
            });
            // copying temp memory struct (myInstructor) to the storage struct (the state variable of the contract) academyInstructor
            academyInstructor = myInstructor; 
        }
    }
}
// the struct can be used in any contract declared in this file
contract School {
    Instructor public schoolInstructor; 
}