// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface IAirdrop {

    event Airdropped(
        uint8 phase,
        address token,
        uint256 amount,
        address receiver
    );

    event AirdropRefunded(
        uint8 phase,
        address token,
        uint256 amount,
        address sender,
        address receiver
    );

    struct PeriodInfo {
        bytes32 merkleRoot;
        uint256 totalAmount;
        uint256 claimedAmount;
        uint256 releaseTime;
        uint256 expireTime;
    }

}
