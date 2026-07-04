// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IRewarder {
    function setMerkleRoot(bytes32 _newMerkleRoot) external;

    function claim(bytes calldata claimData) external;
}
