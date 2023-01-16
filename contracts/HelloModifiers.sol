// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract HelloWorld {
    string public greet = "Hello World!";
    address admin;

    constructor(){
        admin = msg.sender;
    }

    modifier onlyAdmin {
        require( admin == msg.sender, "Just the admin address required" );
        _;
    }

    function sayHello() public view onlyAdmin returns (string memory) {
        return greet;
    }

    function runTheWorld() public view onlyAdmin returns (bool) {
        return true;
    }
}
