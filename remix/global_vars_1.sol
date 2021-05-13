// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
// how to send ether with a contract and how to return balance
contract GlobalVariables{
    address public owner;
    uint public sentValue; 
    
    constructor(){
        owner = msg.sender; // msg.sender is the address that interacts with the contract (deploys it in this case)
    }
    
    // msg.sender is the address that interacts with the contract (calls the function in this case)
    function changeOwner() public {
        owner = msg.sender; 
    }
    
    // a function that recieves eth MUST have payable key word
    function sendEther() public payable {
        sentValue = msg.value; // msg.value is the value of wei sent in this transaction (when calling the function
    }
    
    // return the balance of the contract
    function getBalance()public view returns(uint){
        return address(this).balance; 
    }
    
    function howMuchGas() public view returns (uint) {
        uint start = gasleft();
        uint j = 1; 
        
        for(uint i = 1; i <20; i++){
            j*=i; 
        }
        uint end = gasleft(); 
        return start - end; // this doesnt take into account the constant cost of a transactionm which is usually ~ 21,000
    }
    
}