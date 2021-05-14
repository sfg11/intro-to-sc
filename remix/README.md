## Smart Contracts 
* `bytes_strings.sol` 
  * DESCRIPTION: Coming soon
* `contract_address_balance.sol`
  * DESCRIPTION: Coming soon
* `dynamic-sized-arrays.sol`
  * DESCRIPTION: Coming soon
* `fixed-sixed-arrays.sol`
  * DESCRIPTION: Coming soon
* `global_vars1.sol`
  * DESCRIPTION: Coming soon
* `global_vars2.sol`
  * DESCRIPTION: Coming soon
* `mappings.sol`
  * DESCRIPTION: Coming soon
* `structs_and_emums.sol`
  * DESCRIPTION: Coming soon
* `lottery.sol`
  * DESCRIPTION: **Decentralized lottery smart contract** 
  * Lottery algorithm: 
    * The lottery starts by accepting ETH transactions. Anyone having an Ethereum wallet can send a fixed amount of 0.1 ETH to the contract address. 
    * The players send ETH directly to the contract address and their Ethereum address is registered. A user can send more transactions having more chances to win. 0
    * There is a manager, the account that deploys and controls the contract
    * At some point, if there are at least 3 players, he can pick a random winner from the players list. Only the manager is allowed to see the contract balance and to randomly select the winner
    * The contract will transfer the entire balance to the winners address and the lottery is reset and ready for the next round 

