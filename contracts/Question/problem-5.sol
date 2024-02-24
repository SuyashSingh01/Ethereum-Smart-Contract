
// Problem-6:
// Develop a contract with a function check Number that takes a uint256 parameter. 
// Within this function, use an if statement to check if the number is even or odd, and return a corresponding string message.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MathEvenOdd {
    function check(uint256 _num) public pure returns (string memory) {
        if(_num%2==0)return " Even ";
        else return "Odd";
    }
}


// In this contract:

// We define a contract named MathEvenOdd.
// It contains a function checkNumber that takes a uint256 parameter _num.
// Inside the function, we use an if statement to check if _num is divisible by 2 without remainder, 
// which indicates an even number. If so, it returns "Even"; otherwise, it returns "Odd".
// The function returns a string message indicating whether the input number is even or odd.