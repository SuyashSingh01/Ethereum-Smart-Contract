

// Problem-10:
// Develop a contract with a function addProductDetails that allows adding product details 
// (productId, productName, price). Utilize a struct to organize and store this information in a mapping.

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
}

// Explanation:

// We define a contract named ProductContract.
// Inside the contract, we define a struct named Product, which contains two variables: 
// productName of type string and price of type uint256.This struct represents the details of a product.
// We declare a mapping named products that maps a uint256 (productId) to a Product struct.
//  This mapping is used to store the product details.
// The addProductDetails function allows adding product details to the mapping. 
// It takes three parameters: _productId, _productName, and _price. 
// It creates a new Product struct with the provided details and stores 
// it in the products mapping with the given _productId as the key.



