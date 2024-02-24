// SPDX-License-Identifier: MIT

// Problem Statement 1: Basic Contact List

// Objective: Create a contract named ContactList that allows users to store and retrieve phone numbers associated with names.

// •	Use a struct named Contact to hold a person's name and phone number.

// •	Implement a mapping to associate Ethereum addresses with their Contact.

// •	Write a function to allow users to add or update their contact information.

// •	Include a function to retrieve a user's contact information by their Ethereum address.

contract person {
    struct contactlist{
        string name;
        uint contactnumber;
    }
    // mapping 
    mapping (address=>contactlist) public contacts;

    function setValue(string memory _name,uint _contactnumber)public{
        contacts[msg.sender]=contactlist(_name,_contactnumber);
    }
    function getValue()public view returns (string memory , uint)
    {
        // return contacts[msg.sender].contactnumber;
        contactlist memory newobj=contacts[msg.sender];
        return (newobj.name,newobj.contactnumber);
    }

}

 
// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;
 
// contract ContactList {
 
//     struct Contact {
//         string name ;
//         string phoneNumber;
//     }
 
//     mapping (address => Contact) public  Contacts;
//         function addORUpdate(string memory _name , string memory _phoneNumber )  public {
//             Contacts[msg.sender] = Contact(_name,_phoneNumber);
//         }
//         function getContactByAddress(address _userAddress) public view returns (string memory , string memory) {
//             Contact memory userContact = Contacts[_userAddress];
//             return (userContact.name, userContact.phoneNumber);
//         }
           
//         }