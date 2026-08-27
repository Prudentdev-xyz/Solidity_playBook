//SPDX-License-identifier: MIT
pragma solidity ^0.8.13;

contract HelloWorld {
    string public greet = "Hello World";
    uint256 public number;

    function setgreet(string memory _greet) public {
        greet = _greet;
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
