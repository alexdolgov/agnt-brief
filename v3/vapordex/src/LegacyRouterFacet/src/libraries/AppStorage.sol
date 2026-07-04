// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { LibDiamond } from "../libraries/LibDiamond.sol";
import { LibAuthorizable } from "./LibAuthorizable.sol";

struct AppStorage {
    /////////////////////
    /// AUTHORIZATION ///
    /////////////////////
    mapping(address => bool) authorized;
    /////////////////////////
    /// LegacyRouterFacet ///
    /////////////////////////
    address WNATIVE;
    address feeClaimer;
    uint256 feeDenominator;
    uint256 minFee;
    address[] trustedTokens;
    address[] adapters;
    ////////////////////////
    /// Referral Program ///
    ////////////////////////
    address referralProgram;
}

library LibAppStorage {
    function diamondStorage() internal pure returns (AppStorage storage ds) {
        assembly {
            ds.slot := 0
        }
    }
}

contract Modifiers {
    AppStorage internal s;

    modifier onlyAuthorized() {
        require(s.authorized[msg.sender], "Not authorized");
        _;
    }

    modifier onlyOwner() {
        LibDiamond.enforceIsOwner();
        _;
    }

    modifier onlyValidAddress(address _address) {
        require(_address != address(0), "Invalid address");
        _;
    }
}
