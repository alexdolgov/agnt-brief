// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title Currency
/// @notice A type representing a currency, which can be native ETH (address(0)) or an ERC20 token
type Currency is address;

/// @title CurrencyLibrary
/// @notice Library for Currency type operations
library CurrencyLibrary {
    Currency public constant NATIVE = Currency.wrap(address(0));

    function isNative(Currency currency) internal pure returns (bool) {
        return Currency.unwrap(currency) == address(0);
    }

    function toAddress(Currency currency) internal pure returns (address) {
        return Currency.unwrap(currency);
    }

    function fromAddress(address addr) internal pure returns (Currency) {
        return Currency.wrap(addr);
    }
}
