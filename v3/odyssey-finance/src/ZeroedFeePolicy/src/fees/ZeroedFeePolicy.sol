// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {FeePolicy} from "./FeePolicy.sol";

/// @notice No fee policy
contract ZeroedFeePolicy is FeePolicy {
    function initialize(address positionRegistry_) external initializer {
        __FeePolicy_init(positionRegistry_);
    }
}
