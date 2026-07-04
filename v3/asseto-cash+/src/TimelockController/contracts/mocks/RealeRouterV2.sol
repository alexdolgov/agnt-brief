// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "../RealeRouter.sol";

contract RealeRouterV2 is RealeRouter {
    function initializeV2() external reinitializer(2) {}

    function version() external pure returns (uint256) {
        return 2;
    }
}