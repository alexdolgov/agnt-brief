// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/// @dev WARNNING: This struct cannot be extended with new state variables
/// @dev https://docs.soliditylang.org/en/latest/internals/layout_in_storage.html
struct LegacyRouter {
    address wnative;
    address feeClaimer;
    uint256 feeDenominator;
    uint256 minFee;
    address[] trustedTokens;
    address[] adapters;
}

struct AppStorage {
    /////////////////////
    /// AUTHORIZATION ///
    /////////////////////
    mapping(address => bool) authorized;
    /////////////////////////
    /// LegacyRouterFacet ///
    /////////////////////////
    LegacyRouter legacyRouter;
}