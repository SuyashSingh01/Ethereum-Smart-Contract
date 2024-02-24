// Problem-3
// Construct a contract with a string variable greeting initialized to "Hello". 
// Implement a function concatenateString that appends "World" to the greeting variable and returns the updated string.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GreetingContract {
    string public greeting = "Hello";

    function concatenateString() public view returns (string memory) {
        string memory concatenatedString = string(abi.encodePacked(greeting, " World"));
        return concatenatedString;
    }
}

// Code Explanation:
// In this contract:
// pragma solidity ^0.8.0;: Specifies the compiler version.
// We define a contract called GreetingContract.
// It has a state variable greeting initialized to "Hello".
// We implement a function concatenateString that appends " World" to the greeting variable using abi.encodePacked to concatenate strings in Solidity.
// This function returns the concatenated string.



