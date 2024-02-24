// Problem Statement 4: Simple Authentication System

// Objective: Create a contract SimpleAuth for a basic user authentication system.

// Define a mapping to associate Ethereum addresses with a boolean indicating whether the address is "registered" or not.
// Implement a function that allows an address to register itself (setting its associated boolean to true).
// Include a function that checks if an address is registered.
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleAuth {
    mapping(address => bool) private registered;

    function register(address _user) public {
        registered[_user] = true;
    }

    function check(address _address) public view returns (bool) {
        return registered[_address];
    }
}

// Explanation:

// We define a contract named SimpleAuth.
// Inside the contract, we declare a private mapping named registered that associates Ethereum addresses 
// with a boolean indicating whether the address is registered or not.
// The register function allows an address to register itself by setting its associated boolean in the 
// registered mapping to true.
// The check function checks if an address is registered by returning the boolean value associated with the address 
// in the registered mapping.



