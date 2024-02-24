
// Problem-6:
// Construct a contract with a function is Prime that takes a uint256 parameter. 
// Use loops and conditions to verify if the provided number is a prime number and return a boolean value.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mathprime {
    function Prime(uint256 _num) public pure returns (bool) {
        bool res=true;
        if(_num<=1)res=false;
        
        for(uint256 i=2;i*i<=_num;i++){
            if(_num%i==0){
                res=false;
                break;
            }
        }
        return res;
    }
}
// Explanation:

// We define a contract named Mathprime.
// It contains a function Prime that takes a uint256 parameter _num and returns a bool.
// We initialize a boolean variable res to true, assuming initially that _num is prime.
// We have a conditional statement to check if _num is less than or equal to 1. 
// If so, we set res to false because numbers less than or equal to 1 are not prime.
// We then use a for loop to iterate from 2 to the square root of _num. 
// This loop checks if _num is divisible by any number other than 1 and itself. 
// If it is, then _num is not prime, and we set res to false and break out of the loop.
// Finally, we return the value of res, which indicates whether _num is prime (true) or not (false).



