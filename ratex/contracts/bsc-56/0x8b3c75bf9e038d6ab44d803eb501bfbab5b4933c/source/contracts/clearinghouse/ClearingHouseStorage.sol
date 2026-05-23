// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./IClearingHouseStorage.sol";

abstract contract ClearingHouseStorage is Ownable, IClearingHouseStorage {
    
    event NewImplementation(address newImplementation);
    bool internal _mutex;

    modifier _reentryLock_() {
        require(!_mutex, 'RE');
        _mutex = true;
        _;
        _mutex = false;
    }

    enum MarginRequirementType {
        Initial,
        Maintenance,
        Basic
    }

    struct TraderAccount {
        uint256 balance;
        bool isIsolated;
    }


    struct InsuranceFundInfo {
        address market;
        int256 collateralRatio;  // asset/liability ratio * 1e18
        int256 requiredMargin;   // margin needed to reach maintenance ratio, 1e18 decimal
        uint256 marginTransferred; // 
    }

    address public implementation;
    // State public state;
    // Array of market addresses for iteration
    address[] public indexedMarkets;
    
    // subAccountId => array of active market addresses for this account
    mapping(bytes32 => address[]) public activeMarkets;
    // market address => oracle address
    mapping(address => address) public marketInfo;

    mapping(bytes32 => TraderAccount) public traders;

    mapping(address => bool) public keepers;
    
    mapping(address => bool) public approvedMarket;           // Using validMarket since it matches existing code

}
