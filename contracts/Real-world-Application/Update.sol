// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 
contract ContactList{
 
    struct Contact{
       
        string name;
        uint phoneNumber;
 
    }
 
    mapping(address=>Contact) UserAddress;
 
    function AddContact(string memory _name, uint _phoneNumber) public{
 
        Contact memory NewContact = Contact(_name,_phoneNumber);
        UserAddress[msg.sender] = NewContact;
 
    }
 
    function updateName(string memory _name) public{
 
        Contact memory NewContact = UserAddress[msg.sender];
        NewContact.name = _name;
        UserAddress[msg.sender] = NewContact;
 
    }
 
   
    function updatePhoneNumber(uint _phoneNumber) public{
 
        Contact memory NewContact = UserAddress[msg.sender];
        NewContact.phoneNumber = _phoneNumber;
        UserAddress[msg.sender] = NewContact;
       
    }
 
    function GetMyContact() view public returns(string memory, uint){
 
        Contact memory NewContact = UserAddress[msg.sender];
        return (NewContact.name,NewContact.phoneNumber);
 
    }
 
    function GetContact(address _UserAddress) view public returns(string memory, uint) {
        Contact memory NewContact = UserAddress[_UserAddress];
        return (NewContact.name,NewContact.phoneNumber);
    }
}