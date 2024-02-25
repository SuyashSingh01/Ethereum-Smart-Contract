
// Problem:- BankingSystem

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Banking {

    mapping(address => uint) public balances;

    function deposit() public payable{
        require(msg.value>0,"Deposit amount should be greater than zero.");
        balances[msg.sender] += msg.value;
    } 

    function withdraw(uint amount) public{
        require(amount>0,"Withdrawal amount must be greater than zero.");
        require(amount<=balances[msg.sender],"Account balance is insufficient.");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function checkBalance() public view returns(uint) {
        return balances[msg.sender];
    }
    
}