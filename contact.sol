// SPDX-License-Identifier: MIT

//specify the version of solidity
pragma solidity ^0.8.1;

contract Number {
    mapping (address => uint) favoriteNumber;

    function setMyNumber(uint _number) public {
        // update favorite Number Mapping 
        favoriteNumber[msg.sender] = _number;
    }

    function getMyNumber() public view returns (uint) {
        return favoriteNumber[msg.sender];
    }

    function getNumber(address _owner) public view returns (uint) {
        return favoriteNumber[_owner];
    }

    function confirmFavoritenumber(uint _number) public view returns (string memory) {
        require(keccak256(abi.encodePacked(_number)) == keccak256(abi.encodePacked(favoriteNumber[msg.sender])));
        return "It's the same"; 
    }
}