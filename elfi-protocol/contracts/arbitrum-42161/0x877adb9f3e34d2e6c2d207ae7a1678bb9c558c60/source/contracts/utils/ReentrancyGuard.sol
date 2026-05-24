// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "../storage/AppStorage.sol";

abstract contract ReentrancyGuard {
    using AppStorage for AppStorage.Props;

    bytes32 public constant REENTRANT_STATUS = keccak256(abi.encode("REENTRANT_STATUS"));
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    modifier nonReentrant() {
        AppStorage.Props storage app = AppStorage.load();
        require(app.getUintValue(REENTRANT_STATUS) != _ENTERED, "ReentrancyGuard: reentrant call");
        app.setUintValue(REENTRANT_STATUS, _ENTERED);
        _;
        app.setUintValue(REENTRANT_STATUS, _NOT_ENTERED);
    }
}
