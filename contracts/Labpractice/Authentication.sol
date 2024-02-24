// Problem Statement 4: Simple Authentication System
// Objective: Create a contract SimpleAuth for a basic user authentication system.
// Define a mapping to associate Ethereum addresses with a boolean indicating whether the address is "registered" or not.
// Implement a function that allows an address to register itself (setting its associated boolean to true).
// Include a function that checks if an address is registered.
 
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SimpleAuth{
    mapping (address => bool) private registered;
    string name;
    function register(address _user )public {
        registered[_user] = true;
    
    }
    function check(address _address) public view returns (bool){
        return registered[_address];
    }
}

