// SPDX-License-Identifier: MIT

//specify the version of solidity
pragma solidity ^0.8.1;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {

    uint public cost = 1 ether;

    constructor() ERC20("Lawal", "LAW") {
        _mint(msg.sender, 10000000 * 10 ** 18);
    }

    function buyToken(address _receiver, uint amount) public payable {
        uint unitPrice = amount / 1000;
        require(msg.value == cost * unitPrice);
        _mint(_receiver, amount * 10 ** 18);
    }
}