// Problem Statement 5: Product Ownership Registry

// Objective: Develop a contract ProductRegistry to register and transfer ownership of products.

// Use a struct named Product that includes properties for product ID and current owner address.
// Implement a mapping from product ID to Product.
// Write a function for product registration, assigning the caller as the initial owner.
// Create a function to transfer product ownership to another address, ensuring only the current owner can transfer the product.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProductRegistry {
    struct Product {
        address owner;
        bool exists;
    }

    mapping(uint256 => Product) public products;

    function registerProduct(uint256 _productID) public {
        require(!products[_productID].exists, "Product already registered");
        products[_productID] = Product(msg.sender, true);
    }

    function transferOwnership(uint256 _productID, address _newOwner) public {
        require(products[_productID].exists, "Product not registered");
        require(products[_productID].owner == msg.sender, "Only the current owner can transfer the product");
        products[_productID].owner = _newOwner;
    }
}

// Explanation:

// We define a contract named ProductRegistry.
// Inside the contract, we declare a struct named Product with two fields: owner (address of the product owner) and exists
//  (boolean indicating whether the product is registered).
// We declare a mapping named products that associates each product ID with its corresponding Product struct.
// The registerProduct function allows registering a product by a given product ID. 
// It checks if the product is not already registered, and if not, it registers the product with the caller (the initial owner) as the owner.
// The transferOwnership function allows transferring the ownership of a product to another address. 
// It checks if the product is registered, and if the caller is the current owner of the product. 
// If both conditions are met, it transfers the ownership to the new owner specified as an argument.