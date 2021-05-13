// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract DynamicArrays {
    
    // dynamic array of type uint
    uint[] public numbers;
    
    
    // returning length
    function getLength() public view returns(uint) {
        return numbers.length; 
    }
   
    // appending a new element
    function addElement(uint item) public {
        numbers.push(item);
    }
   
    // returning an element at an index
    function getElement(uint i) public view returns(uint){
        if (i < numbers.length) {
            
            return numbers[i]; 
        }
        
        return 0; 
    }
    
    // note that increasing the size of an array by calling push() has constant gas costs because its zero initialized 
    // decreasing the length by calling pop() has varying gas costs; it depends on the size of the element being removed 
    // to prevent storage collisions: can't resize storage arrays and getting the length is read-only

    
    // removing the last element of the array
    function popElement() public {
        numbers.pop(); 
    }
    
    // memory arrays 
    // the key word 'new' creates a dynamic array 
    // cant resize memory arrays so push() and  pop() functions arnt available
    // either have to calculate required size before hand or create a new memory array and copy every element 
    // declaring a memory dynamic array

    function f() public {
        uint[] memory y = new uint[](3);
        y[0] = 10; 
        y[1] = 20; 
        y[2] = 30; 
        numbers = y; 
        
        
        
    }
}








