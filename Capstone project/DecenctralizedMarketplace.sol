// CAPSTONE PROJECT;
// Problem Statement: Decentralized Marketplace

// Objective: Develop a Decentralized Marketplace contract where users can list items for sale and others can purchase them using Ether.
// Sellers should list items with a name and price.
// Buyers can purchase items by sending Ether equal to the listed price.
// Ensure that the Ether sent by buyers is transferred to the seller.
// Implement functionality to mark items as sold upon purchase to prevent further sales.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DecentralizedMarketplace {
    struct Item {
        string name;
        uint256 price;
        address payable seller;
        bool isSold;
    }

    mapping(uint256 => Item) public items;
    uint256 public itemCount;
    mapping(address => uint256) public balances;

    event ItemListed(uint256 indexed itemId, string name, uint256 price, address seller);
    event ItemSold(uint256 indexed itemId, string name, uint256 price, address seller, address buyer);

    function listItem(string memory _name, uint256 _price) external {
        itemCount++;
        items[itemCount] = Item(_name, _price, payable(msg.sender), false);
        emit ItemListed(itemCount, _name, _price, msg.sender);
    }

    function purchaseItem(uint256 _itemId) external payable {
        require(_itemId > 0 && _itemId <= itemCount, "Invalid item ID");
        Item storage item = items[_itemId];
        require(!item.isSold, "Item is already sold");
        require(msg.value == item.price, "Incorrect payment amount");

        item.isSold = true;
        balances[item.seller] += msg.value;
        emit ItemSold(_itemId, item.name, item.price, item.seller, msg.sender);
    }

    function withdraw() external {
        uint256 amount = balances[msg.sender];
        require(amount > 0, "No balance to withdraw");
        balances[msg.sender] = 0;
        payable(msg.sender).transfer(amount);
    }
}


// Code Explaination:

// The contract contains a struct Item to represent each item listed on the marketplace.
// It includes fields for the name of the item, its price, the seller's address, and a flag indicating whether the item is sold or not.
// A mapping items is used to associate each item ID with its corresponding Item.
// The contract emits events ItemListed and ItemSold to notify listeners when an item is listed for sale and when an item is sold, respectively.
// The function listItem allows sellers to list items for sale by providing the name and price of the item.
//  Each listed item is assigned a unique item ID.
// The function purchaseItem allows buyers to purchase items by specifying the item ID and sending Ether equal to the listed price. 
// Upon purchase, the item is marked as sold, and the Ether is transferred from the buyer to the seller.
// Gas Optimization:
// The contract minimizes gas costs by using payable addresses for sellers and transferring 
// Ether directly to them upon purchase, avoiding unnecessary storage operations and reducing gas consumption.
