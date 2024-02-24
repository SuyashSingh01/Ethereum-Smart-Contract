// Problem-1:
// Create a Solidity contract that maintains state variables name (string), age (uint256), and isActive (bool) for a person. 
// Implement functions to update and retrieve these attributes.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Person{
    string name;
    uint256 age;
    bool isActive;
    constructor(string memory _name, uint256 _age, bool _isActive) {
        name = _name;
        age = _age;
        isActive = _isActive;
    }

    function updatePerson(string memory _name, uint256 _age, bool _isActive) public {
        name = _name;
        age = _age;
        isActive = _isActive;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function getAge() public view returns (uint256) {
        return age;
    }

    function getIsActive() public view returns (bool) {
        return isActive;
    }
}
// Explanation:

// We define a contract named PersonContract.
// It contains three state variables: name of type string, age of type uint256, and isActive of type bool.
// We have a constructor that allows initializing these variables when the contract is deployed.
// The updatePerson function updates the values of name, age, and isActive.
// Three getter functions getName, getAge, and getIsActive are implemented to retrieve the values of name, age, and 
// isActive respectively. These functions are declared as view since they only read data from the contract and don't modify
//  its state.