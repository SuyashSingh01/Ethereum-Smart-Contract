// Problem-13
// Construct a contract with a function updateProductPrice that takes productId and newPrice as inputs. 
// Utilize the products mapping to update the price of a specific product.

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

    function updateProductPrice(uint256 _productId, uint256 _newPrice) public {
        require(products[_productId].price > 0, "Product does not exist");
        products[_productId].price = _newPrice;
    }
}

// Explanation:

// This contract maintains a mapping products that maps a uint256 productId to a Product struct, 
// where each Product struct contains a productName of type string and a price of type uint256.
// The addProductDetails function allows adding product details to the mapping by specifying the productId,
//  productName,and price.
// The updateProductPrice function updates the price of a specific product by taking _productId and
//  _newPrice as inputs. It first checks if the product with the given _productId exists (i.e., its price is greater than 0), 
//  and then updates the price to _newPrice. The function uses a require statement to ensure that the product exists 
//  before updating its price.



