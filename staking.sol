// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.12;

contract Storage {

    // Declaring the state variables. 

    uint totalContractBalance = 0; // keep track of the amount in our contract
    mapping (address => uint) public balance; //To uodate the balance of each user
    uint constant public threshold = 0.003 * 10 * 18;
    uint public deadline = block.timestamp + 1 minutes;

    function isActive() public view returns (bool) {
        
    }

    function getContractBalance() public view returns (uint) {

    }

    function deposit() public payable {
        
    }

    receive() external payable {deposit();}

    function withdraw() public {
        
    }

}