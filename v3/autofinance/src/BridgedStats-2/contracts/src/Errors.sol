// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

library Errors {
    error AlreadySeeded(address calculator);
    error ZeroAddress(string param);
    error InvalidParam(string param);
    error ImageIdNotSet();
    error InvalidL1Digest(bytes32 digest);
    error InvalidL2Digest(bytes32 digest);
    error InvalidNonce(uint256 actual, uint256 expected);
    error InvalidCalculator(address calculator);
    error AccessDenied();

    function verifyNotZero(address addr, string memory paramName) internal pure {
        if (addr == address(0)) {
            revert ZeroAddress(paramName);
        }
    }

    function verifyNotZero(uint256 num, string memory paramName) internal pure {
        if (num == 0) {
            revert InvalidParam(paramName);
        }
    }
}
