// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;
pragma abicoder v2;

import "./IAegisVaultStructs.sol";

/// @title Aegis Vault Actions Interface
/// @notice Contains the main actions that can be performed on the Aegis vault
interface IAegisVaultActions {
    /// @notice Enum representing different types of withdrawals
    /// @dev The integer value of each enum member is important and should not be changed
    enum WithdrawType {
        /// Withdraw as ICHI vault shares
        /// Value: 0
        /// User receives shares from both the deposit and target ICHI vaults
        ICHIVaultShares,
        /// Withdraw as a mix of deposit and target tokens
        /// Value: 1
        /// User receives a proportional mix of deposit and target tokens
        AssetMix,
        /// Withdraw only target tokens
        /// Value: 2
        /// User receives only target tokens, deposit tokens are re-deposited into the deposit vault
        TargetOnly
    }

    /// @notice Deposits assets into the Aegis vault
    /// @dev This function can only be called by addresses with the DEPOSITOR_ROLE
    /// @param amount If doDepositIchiShares is true, this is the amount of depositVault shares to transfer
    ///               If false, this is the amount of depositToken to transfer
    /// @param minimumShares The minimum number of Aegis shares to receive, used for slippage protection
    /// @param to The address that will receive the minted Aegis shares
    /// @param doDepositIchiShares If true, deposit ICHI vault shares; if false, deposit tokens
    /// @return shares The number of Aegis shares minted as a result of the deposit
    /// @notice Emits a Deposit event after successful execution
    function deposit(uint256 amount, uint256 minimumShares, address to, bool doDepositIchiShares) external returns (uint256 shares);

    /// @notice Withdraws assets from the Aegis vault
    /// @dev The withdrawal method depends on the specified WithdrawType
    /// @param aegisShares The number of Aegis shares to redeem
    /// @param to The address that will receive the withdrawn assets
    /// @param minSlippage The minimum acceptable amounts for withdrawal, used for slippage protection
    /// @param withdrawType The type of withdrawal to perform (ICHIVaultShares, AssetMix, or TargetOnly)
    /// @return actualSlippage The actual amounts withdrawn, returned as WithdrawSlippageData
    /// @notice Emits a Withdraw event after successful execution
    function withdraw(
        uint256 aegisShares,
        address to,
        IAegisVaultStructs.WithdrawSlippageData memory minSlippage,
        WithdrawType withdrawType
    )
        external
        returns (IAegisVaultStructs.WithdrawSlippageData memory actualSlippage);
}
