// Problem Statement 2: Simple Token Wallet

// Objective: Develop a contract called TokenWallet where users can track their token balances.

// Define a mapping to track the token balance of Ethereum addresses.
// Implement a function that allows users to update their token balance.
// Create a function for users to check their own token balance.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 
contract TokenWallet {
    mapping(address => uint256) public tokenBalances;
 
    function setTokenBalance(uint256 newBalance) public {
        tokenBalances[msg.sender] = newBalance;
    }
 
    function updateTokenBalance(uint256 delta) public {
        tokenBalances[msg.sender] += delta;
    }
 
    function getTokenBalance(address user) public view returns (uint256) {
        return tokenBalances[user];
    }
}
// Explaination:
// pragma solidity ^0.8.0;: This statement specifies that the contract should be compiled using a Solidity compiler 
// version greater than or equal to 0.8.0, but less than 0.9.0.

// contract TokenWallet { ... }: This defines the main contract named TokenWallet.

// mapping(address => uint256) public tokenBalances;: This line declares a state variable tokenBalances, 
// which is a mapping that associates Ethereum addresses with their token balances. Each address maps to a uint256 representing the balance.

// function setTokenBalance(uint256 newBalance) public { ... }: This function allows users to set their token balance to a specific value (newBalance). 
// It takes newBalance as an argument and sets the balance for the caller's address (msg.sender) in the tokenBalances mapping.

// function updateTokenBalance(uint256 delta) public { ... }: This function allows users to update their token balance by a specified amount (delta). 
// It takes delta as an argument and adds it to the current balance of the caller's address (msg.sender) in the tokenBalances mapping.

// function getTokenBalance(address user) public view returns (uint256) { ... }: This function allows users to retrieve the token balance of any address (user). 
// It takes the address as an argument and returns the corresponding balance from the tokenBalances mapping. 
// The function is marked as view to indicate that it only reads data from the contract and doesn't modify its state.




