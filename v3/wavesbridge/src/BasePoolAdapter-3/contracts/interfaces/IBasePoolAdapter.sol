// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2025 - all rights reserved
pragma solidity 0.8.17;

interface IBasePoolAdapter {

    /// @notice Returns the fee denominator constant.
    /// @dev Fee denominator constant used for percentage calculations.
    /// @return The fee denominator constant.
    function FEE_DENOMINATOR() external view returns (uint256);

    /// @notice Returns the max fee constant.
    /// @dev The maximum commission value that can be set is 100000, which corresponds to 10 %.
    /// @return The max fee constant.
    function MAX_FEE() external view returns (uint256);

    /// @notice Setting the fee value for specific pool.
    /// @dev You can only set the fee value by calling from the Whitelist contract
    /// or an account with the OPERATOR_ROLE role.
    /// @param pool_ the pool contract address.
    /// @param fee_ the fee value.
    function setFee(address pool_, uint256 fee_) external;

    /// @notice Returns the current value of the fee for specific pool.
    /// @dev If the fee is set explicitly, its value is returned.
    /// If the fee is not set explicitly, the default fee value is returned.
    /// If fee value is set to maximum - it is considered as zero fee
    /// @param pool_ the pool address.
    /// @return The the current fee value.
    function fee(address pool_) external view returns(uint256);
}
