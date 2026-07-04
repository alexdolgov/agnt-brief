// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.19;

import {IStrategy} from "src/interfaces/IStrategy.sol";

/// @notice Small contract that act as a proxy to be compatible with the old strategy signature.
/// @dev Temporary contract to be removed after the accumulator migration.
contract AccumulatorProxy {
    address public immutable strategy;

    constructor(address _strategy) {
        strategy = _strategy;
    }

    function claim3Crv(bool) external {
        IStrategy(strategy).claimNativeRewards();
    }
}
