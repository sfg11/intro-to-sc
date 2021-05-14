// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Auction{
    mapping(address => uint) public bids; 
    // keys of type address, values of type uint (amount ) amount of wei sent to the address in teh contract
    
    // payable provides a mechanism to the contract to recieve funds in ether
    function bid() payable public {
        bids[msg.sender] = msg.value; // msg.sender is the address that calls the func in a transaction; msg.value is the value sent in wei when calling the function; both are global predefined variables in solidity 
        
    }
    
}