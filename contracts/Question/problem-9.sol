
// Problem-12:
// Create a contract with a function getProductInfo that takes a productId as input and returns the associated
//  productName and price using the products mapping.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProductContract {
    struct Product {
        string productName;
        uint256 price;
    }

    mapping(uint256 => Product) public products;

    function addProductDetails(uint256 _productId, string memory _productName, uint256 _price) public {
        products[_productId] = Product(_productName, _price);
    }

    function getProductInfo(uint256 _productId) public view returns (string memory, uint256) {
        Product memory product = products[_productId];
        return (product.productName, product.price);
    }
}

// Explanation:

// This contract maintains a mapping products that maps a uint256 productId to a Product struct, where each
//  Product struct contains a productName of type string and a price of type uint256.
// The addProductDetails function allows adding product details to the mapping by specifying the productId, 
// productName, and price.
// The getProductInfo function retrieves the productName and price associated with a given productId.
//  It takes _productId as input and returns a tuple containing the productName and price associated with 
// that productId. The function is marked as view because it only reads data from the contract and doesn't 
// modify its state.