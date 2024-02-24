// Probelm-2:
// Develop a contract with two uint256 variables numA and numB.
//  Create a function addNumbers that takes these variables as parameters, performs addition, and returns the result.

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
contract Addition{

    function addNumbers(uint256 _numA,uint256 _numB ) public pure returns(uint256){
        uint256 res=_numA+_numB;
        return res;
    }
  
}
// Explanation:

// We define a contract named AdditionContract.
// We implement a function named addNumbers which takes two uint256 parameters _numA and _numB.
// Inside the function, we simply add _numA and _numB together and return the result.
// The function is declared as pure because it doesn't modify the contract's state; 
// it only performs computation based on inputs and returns a value.