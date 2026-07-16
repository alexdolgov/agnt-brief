// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

struct Incentive {
    address token;
    bytes32 merkleRoot;
    uint256 activeAt;
}

struct IncentiveClaim {
    address token;
    address account;
    uint256 tokenId;
    uint256 amount;
    bytes32[] merkleProof;
}
