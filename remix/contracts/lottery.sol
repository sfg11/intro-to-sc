// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract Lottery {
    
    // declare state variables   
    address payable[] public players;  // dynamic array of payable addresses;
    address public manager;

    constructor() {
    // initializing the owner to the address that deploys the contract
        manager = msg.sender; 
    }

    // a contract can have only one recieve() function declared with this syntax;
    // each time eth is sent in a transaction to the contracts address, 
    // this function will be automatically called;
    receive() external payable {
        require(msg.value == 0.1 ether); // require each player send exactly 0.1 eth
        players.push(payable(msg.sender)); 
    }

    
    // return the contract's balance in wei (only the manager is allowed to call it)
    function getBalance() public view returns (uint256) {
        require(msg.sender == manager);
        return address(this).balance;
    }


    // helper function to return a random int
    // note: this is not a truely random #; a malicious miner could alter these 
    // values in such a way that he wins the lottery
    function random() public view returns (uint256) {
        return
            uint256(
                keccak256(
                    abi.encodePacked(
                        block.difficulty,
                        block.timestamp,
                        players.length
                    )
                )
            );
    }

    // TODO: read more on this: chain link vrf https://docs.chain.link/docs/get-a-random-number/
    // only manager can pick winner & there must be at least 3 players
    function pickWinner() public {
        require(msg.sender == manager);
        require(players.length >= 3);

        uint256 r = random();
        address payable winner;

        uint256 index = r % players.length;
        winner = players[index];
        uint managerFee = (getBalance() * 10 ) / 100; // manager fee is 10%
        uint winnerPrize = (getBalance() * 90 ) / 100;     // winner prize is 90%
        
        // transferring 90% of contract's balance to the winner
        winner.transfer(winnerPrize);
        
        // transferring 10% of contract's balance to the manager
        payable(manager).transfer(managerFee);

        players = new address payable[](0); // reset the lottery
    }
}
