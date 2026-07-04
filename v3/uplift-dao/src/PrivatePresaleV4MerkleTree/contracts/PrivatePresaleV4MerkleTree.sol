// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.8;

import { PrivatePresaleV3MerkleTree } from  "./PrivatePresaleV3MerkleTree.sol";

/// @title Private Presale contract v4 contract with Merkle tree integration
contract PrivatePresaleV4MerkleTree is PrivatePresaleV3MerkleTree
{
    event SetDistributedAmount(uint amount);
    event SetMinStakingPower(uint power);
    event SetMinAllocationInBuyToken(uint allocation);
    event SetMaxAllocationInBuyToken(uint allocation);

    function setDistributedAmount(uint amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(amount >= totalBought, "PrivatePresaleV4MerkleTree: INVALID_AMOUNT");

        distributedAmount = amount;
        emit SetDistributedAmount(amount);
    }

    function setMinStakingPower(uint power) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(power > 0, "PrivatePresaleV4MerkleTree: ZERO");
        minStakingPower = power;
        emit SetMinStakingPower(power);
    }

    function setMinAllocationInBuyToken(uint allocation) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(allocation > 0, "PrivatePresaleV4MerkleTree: ZERO");
        require(allocation < maxAllocationInBuyToken, "PrivatePresaleV4MerkleTree: INVALID_ALLOC");
        minAllocationInBuyToken = allocation;
        emit SetMinAllocationInBuyToken(allocation);
    }

    function setMaxAllocationInBuyToken(uint allocation) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(allocation >= minAllocationInBuyToken, "PrivatePresaleV4MerkleTree: INVALID_ALLOC");
        maxAllocationInBuyToken = allocation;
        emit SetMaxAllocationInBuyToken(allocation);
    }
}
