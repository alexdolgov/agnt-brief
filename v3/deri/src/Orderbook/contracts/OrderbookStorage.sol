// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import "./utils/Admin.sol";

abstract contract OrderbookStorage is Admin {
    address public implementation;

    bool internal _mutex;

    modifier _reentryLock_() {
        require(!_mutex, "Router: reentry");
        _mutex = true;
        _;
        _mutex = false;
    }

    address public executor;
    
    struct Order {
        bool isLite;
        address account;
        uint256 pTokenId;
        bytes32 symbolId;
        address bToken;
        int256 bAmount;
        int256[] orderParams; // 0:trigerPrice, 1:isAboveTrigerPrice, 2: isIndexPrice
        int256[] tradeParams; // 0:volume, 1: priceLimit
    }

    // account -> index -> Order
	mapping (address => mapping(uint256 => Order)) public orders;
    // account -> index -> executionFee
    mapping (address => mapping(uint256 => uint256)) public executionFees;
    mapping (address => uint256) public ordersIndex;

}
