// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// can not add elements to a string but can to a element thats type bytes
// note that bytes and strings are reference types and NOT value types...  
// fixed size arrays use less gas than dynamic arrays so if the length of the array is known in advance use a fixed size arrary 

contract BytesAndStrings {
    
    
    bytes public b1 = 'abc'; // 0x616263 
    string public s1 = 'abc'; 

    function addElement() public{
        b1.push('x'); // b1 now = 0x61626378
    }
    
    function getElement(uint i) public view returns(bytes1){
        return b1[i]; 
    }
    
    function getLength() public view returns(uint){
        return b1.length; 
    }
}