// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract FixedSizeArrays{
    
    uint[3] public numbers = [2,3,4];
    // declaring fixed-size arrays of type bytes
    // solidity data types.. up to bytes32
    // default 
    bytes1 public b1; //default value is 0x00
    bytes2 public b2; // 0x0000
    bytes3 public b3;  //0x000000
    
    // changing an element of the array at a specific index
    function setElement(uint index, uint value) public{
        numbers[index] = value; 
    }
      // returning the number of elements in the array  
    function getLength() public view returns (uint){
            return numbers.length;
    }
    // setting bytes arrays
    function setBytesArray() public{
        b1 = 'a';   // 0x61 
        b2 = 'ab';  // 0x6162
        b3 = 'abc'; // 0x616263
        // b3[0] = 'a'; // ERROR => can not change individual bytes
        // in older code byte is an alias for bytes1 
    }
}