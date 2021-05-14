// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract GlobalVars{
    uint public this_moment = block.timestamp; //1620858913
    uint public block_number = block.number; // the current block number
    uint public difficulty = block.difficulty; //proof of work difficulty
    uint public gaslimit = block.gaslimit; //gaslimimt defines the max block size?
}