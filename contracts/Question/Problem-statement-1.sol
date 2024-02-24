// Problem Statement 1: Basic Contact List

// Objective: Create a contract named ContactList that allows users to store and 
// retrieve phone numbers associated with names.

// Use a struct named Contact to hold a person's name and phone number.
// Implement a mapping to associate Ethereum addresses with their Contact.
// Write a function to allow users to add or update their contact information.
// Include a function to retrieve a user's contact information by their Ethereum address.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContactList {
    struct Contact {
        string name;
        string phoneNumber;
    }

    mapping(address => Contact) public contacts;

    function addOrUpdateContact(string memory _name, string memory _phoneNumber) public {
        contacts[msg.sender] = Contact(_name, _phoneNumber);
    }

    function getContactInfo() public view returns (string memory, string memory) {
        Contact memory userContact = contacts[msg.sender];
        return (userContact.name, userContact.phoneNumber);
    }
}

// Explanation:

// We define a contract named ContactList.
// Inside the contract, we declare a struct named Contact with two fields: name and phoneNumber.
//  This struct holds a person's name and phone number.
// We declare a mapping named contacts that associates Ethereum addresses with their corresponding Contact.
// The addOrUpdateContact function allows users to add or update their contact information. 
// It takes two parameters: _name (name of the contact) and _phoneNumber (phone number of the contact).
//  It updates the contacts mapping with the provided information, associating it with the caller's Ethereum address (msg.sender).
// The getContactInfo function retrieves the contact information of the caller (the user who calls the function).
//  It returns a tuple containing the name and phone number associated with the caller's Ethereum address (msg.sender). 
//  This function is marked as view because it only reads data from the contract and doesn't modify its state.