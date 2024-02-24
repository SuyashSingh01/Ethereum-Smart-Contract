// Problem-4:
// Develop a Solidity contract that includes a function findFactorial taking an integer input num and calculates its factorial.
//  Use a loop to perform the computation and return the factorial value.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Math {
    function findFactorial (uint256 _num) public pure returns (uint256) {
        uint256 res=1;
        for(uint256 i=_num;i>=1;i--){
            res*=i;
        }
        return res;
    }
}
// Explaination:

// In this contract:
// We define a contract named FactorialContract.
// It contains a function findFactorial that takes an unsigned integer _num as input and returns its factorial.
// Inside the function, we initialize a variable res to 1, then use a for loop to calculate the factorial of _num.
// The loop iterates from _num down to 1, multiplying res by the current value of i in each iteration.
// Finally, the computed factorial value res is returned.



