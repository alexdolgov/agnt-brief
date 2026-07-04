// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity 0.8.17;

import { SystemComponent } from "src/SystemComponent.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";

/// @notice Allows backend to track users votes weights via subgraph
contract Vote is SystemComponent {
    /// =====================================================
    /// Events
    /// =====================================================

    event Voted(address indexed wallet, address[] autopools, uint256[] weights);

    /// =====================================================
    /// Constructor
    /// =====================================================

    constructor(
        ISystemRegistry _systemRegistry
    ) SystemComponent(_systemRegistry) { }

    /// =====================================================
    /// Functions - External
    /// =====================================================

    /// @notice Record vote weights for accToke rewards
    /// @dev Performs no validation, will be recorded in subgraph if correctly provided
    /// @param autopools List of Autopools to vote on
    /// @param weights List of weights to apply to the provided Autopools
    function vote(address[] calldata autopools, uint256[] calldata weights) external {
        // This function intentionally has no validation
        // If the details of the vote are not correct:
        //      - Autopools are shutdown
        //      - Autopools are invalid
        //      - Array lengths don't match
        //      - Weights are too big or don't add to 10000
        //      - The user doesn't have an accToke balance
        //      - etc...
        // then the votes will just be ignored when indexed by the subgraph.

        emit Voted(msg.sender, autopools, weights);
    }
}
