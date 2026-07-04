// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {FeePolicy} from "./FeePolicy.sol";

/// @title Flat deposit fee policy
contract FlatDepositFeePolicy is FeePolicy {
    /// @notice Deposit fee percent (e.g. 0.05 == 5%)
    uint256 public depositFee;

    function initialize(address positionRegistry_) external initializer {
        __FeePolicy_init(positionRegistry_);

        depositFee = 0.01e18;
    }

    /// @inheritdoc FeePolicy
    function quoteAllocatedInFee(uint256 amount_) external view override returns (uint256 _fee) {
        if (amount_ > 0) {
            _fee = (amount_ * depositFee) / 1e18;
        }
    }
}
