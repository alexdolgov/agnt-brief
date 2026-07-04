// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IFeePolicy} from "../interfaces/IFeePolicy.sol";

/// @title Abstract Fee Policy
abstract contract FeePolicy is IFeePolicy, Initializable {
    error AddressIsNull();

    address public positionRegistry;

    constructor() {
        _disableInitializers();
    }

    function __FeePolicy_init(address positionRegistry_) internal onlyInitializing {
        if (positionRegistry_ == address(0)) revert AddressIsNull();

        positionRegistry = positionRegistry_;
    }

    /// @notice Quote fee to pay when increasing position's allocated amount
    /// Note:
    /// - This function is called *AFTER* the allocated amount change
    ///
    /// @param amount_ The total allocated delta amount
    /// @return The fee amount
    function quoteAllocatedInFee(uint256 amount_) external view virtual returns (uint256 /*_fee*/) {}

    /// @notice Quote fee to pay when decreasing position's allocated amount
    /// Note:
    /// - This function is called *AFTER* the allocated amount change
    ///
    /// @param amount_ The total allocated delta amount
    /// @return The fee amount
    function quoteAllocatedOutFee(uint256 amount_) external view virtual returns (uint256 /*_fee*/) {}

    /// @notice Quote fee to pay based on time
    /// This function is mostly useful for APY-based policies (e.g., calculating fee to pay based on the profit APY rate since the latest snapshot)
    //
    /// @return The fee amount
    function quoteTimeBasedFee() external view virtual returns (uint256 /*_fee*/) {}
}
