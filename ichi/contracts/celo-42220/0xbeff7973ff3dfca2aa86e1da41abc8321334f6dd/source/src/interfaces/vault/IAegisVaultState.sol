// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;
pragma abicoder v2;

/// @title Aegis Vault State Interface
/// @notice Defines read-only functions to access the current state of the Aegis vault
/// @dev U18 FP refers to unsigned fixed-point integers with 18 decimals of precision
interface IAegisVaultState {
    /// @notice The time-weighted average price (TWAP) period(in seconds) used for price calculations
    function twapPeriod() external view returns (uint32);

    /// @notice The maximum allowed volatility for price changes expressed as a FP U18
    function maxVolatility() external view returns (uint256);

    /// @notice The hysteresis threshold for price change checks expressed as a FP U18
    function hysteresis() external view returns (uint256);

    /// @notice The threshold for pending deposits in the underlying vaults expressed in BSP
    function pendingThreshold() external view returns (uint256);

    /// @notice The maximum threshold for rebalancing operations expressed in BSP
    function maxRebalanceThreshold() external view returns (uint256);

    /// @notice The threshold for excess target tokens in the deposit vault expressed in BSP
    function excessTargetTokenThreshold() external view returns (uint256);

    /// @notice The address that receives fees from the vault
    function feeRecipient() external view returns (address);

    /// @notice The base fee percentage(expressed in BSP) charged on rebalancing operations
    function baseFee() external view returns (uint256);

    /// @notice The fee percentage(expressed in BSP) charged on withdrawals
    function withdrawFee() external view returns (uint256);

    /// @notice The pending fee update information
    /// @return _timestamp The timestamp when the pending fees can be executed
    /// _baseFee The pending base fee as a percentage in basis points (100 = 1%, 10000 = 100%)
    /// _withdrawFee The pending withdraw fee as a percentage in basis points (100 = 1%, 10000 = 100%)
    /// NB: we don't add return tag to _baseFee and _withdrawFee due to compiler bug
    function pendingFees() external view returns (uint256 _timestamp, uint256 _baseFee, uint256 _withdrawFee);

    /// @notice whether or not the implied swap slippage check and deposit devaluation is done
    function doCheckImpliedSlippage() external view returns (bool);

    /// @notice The minimum number of Aegis shares that must be minted on a deposit
    /// @dev If set to 0, this check is disabled.
    function minDepositAegisShares() external view returns (uint256);
}
