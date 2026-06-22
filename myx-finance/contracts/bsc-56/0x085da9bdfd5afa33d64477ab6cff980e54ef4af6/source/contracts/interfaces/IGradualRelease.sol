// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface IGradualRelease {

    event UpdateGovAddress(
        address sender,
        address oldAddress,
        address newAddress
    );

    event Withdrew(
        address token,
        uint256 amount,
        address sender,
        address receiver
    );

    event UrgentRelease(
        bytes32 indexed hash,
        address token,
        address receiver,
        uint256 eta
    );

    event CancelUrgentRelease(
        bytes32 indexed hash,
        address token,
        address receiver,
        uint256 eta
    );

    event ExecuteUrgentRelease(
        bytes32 indexed hash,
        address token,
        address receiver,
        uint256 eta
    );
}
