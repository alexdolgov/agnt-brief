// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { SecurityBase } from "src/security/SecurityBase.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { SystemComponent } from "src/SystemComponent.sol";
import { Errors } from "src/utils/Errors.sol";
import { SecurityBase } from "src/security/SecurityBase.sol";

/// @notice Tracks IPFS hashes for rewards by cycle
contract RewardsHash is SystemComponent, SecurityBase {
    /// =====================================================
    /// Public Vars
    /// =====================================================

    /// @notice Lookup of cycle hashes by cycleIndex
    mapping(uint256 => CycleHashTuple) public cycleHashes;

    /// @notice Latest cycle index we have a record for
    uint256 public latestCycleIndex;

    /// @notice Role required to have to set cycle hashes
    bytes32 public immutable setRole;

    /// =====================================================
    /// Structs
    /// =====================================================

    struct CycleHashTuple {
        /// @notice Hash of last claimable cycle before/including this cycle
        string latestClaimable;
        /// @notice Cycle hash of this cycle
        string cycle;
    }

    /// =====================================================
    /// Events
    /// =====================================================

    event CycleHashAdded(uint256 cycleIndex, string latestClaimableHash, string cycleHash);

    /// =====================================================
    /// Functions - Constructor
    /// =====================================================

    constructor(
        ISystemRegistry _systemRegistry,
        bytes32 _setRole
    ) SystemComponent(_systemRegistry) SecurityBase(address(_systemRegistry.accessController())) {
        setRole = _setRole;
    }

    /// =====================================================
    /// Functions - External
    /// =====================================================

    function setCycleHashes(
        uint256 index,
        string calldata latestClaimableIpfsHash,
        string calldata cycleIpfsHash
    ) external hasRole(setRole) {
        Errors.verifyNotZero(bytes(latestClaimableIpfsHash).length, "latestClaimableIpfsHash");
        Errors.verifyNotZero(bytes(cycleIpfsHash).length, "cycleIpfsHash");

        cycleHashes[index] = CycleHashTuple(latestClaimableIpfsHash, cycleIpfsHash);

        if (index > latestCycleIndex) {
            latestCycleIndex = index;
        }

        emit CycleHashAdded(index, latestClaimableIpfsHash, cycleIpfsHash);
    }
}
