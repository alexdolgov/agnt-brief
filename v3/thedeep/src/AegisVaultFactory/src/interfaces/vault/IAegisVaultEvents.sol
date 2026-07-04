// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;
pragma abicoder v2;

import "./IAegisVaultStructs.sol";

/// @title Aegis Vault Events Interface
/// @notice Contains all events emitted by the Aegis vault
interface IAegisVaultEvents {
    /// @notice Emitted when an Aegis vault is deployed
    /// @param sender The address that deployed the vault(typically the AegisVaultFactory)
    /// @param depositToken The address of the deposit token
    /// @param targetToken The address of the target token
    /// @param depositVault The address of the deposit ICHI vault
    /// @param targetVault The address of the target ICHI vault
    /// @param owner The address of the vault owner
    /// @param vaultIndex The index of the vault in the factory
    event DeployAegisVault(
        address indexed sender,
        address depositToken,
        address targetToken,
        address depositVault,
        address targetVault,
        address owner,
        uint256 vaultIndex
    );

    /// @notice Emitted when the TWAP period is updated
    /// @param sender The address that updated the TWAP period
    /// @param newTwapPeriod The new TWAP period
    event SetTwapPeriod(address sender, uint32 newTwapPeriod);

    /// @notice Emitted when the maximum volatility threshold is updated
    /// @param sender The address that updated the threshold
    /// @param newMaxVolatility The new maximum volatility threshold
    event SetMaxVolatility(address sender, uint256 newMaxVolatility);

    /// @notice Emitted when a deposit is made to the vault
    /// @param sender The address that initiated the deposit
    /// @param to The address receiving the minted Aegis shares
    /// @param shares The number of Aegis shares minted
    /// @param depositTokenAmount The amount of deposit tokens deposited
    /// @param depositSharesAmount The amount of deposit vault shares deposited
    event Deposit(address indexed sender, address indexed to, uint256 shares, uint256 depositTokenAmount, uint256 depositSharesAmount);

    /// @notice Emitted when a withdrawal is made from the vault
    /// @param sender The address that initiated the withdrawal
    /// @param to The address receiving the withdrawn assets
    /// @param aegisShares The number of Aegis shares that were requested to be burned
    /// @param slippage The slippage data for the withdrawal
    event Withdraw(address indexed sender, address indexed to, uint256 aegisShares, IAegisVaultStructs.WithdrawSlippageData slippage);

    /// @notice Emitted when withdrawal fees are collected
    /// @param sender The address that initiated the withdrawal
    /// @param to The address receiving the fees
    /// @param depositShareFees The amount of deposit vault shares collected as fees
    /// @param targetSharefee The amount of target vault shares collected as fees
    event WithdrawFees(address indexed sender, address indexed to, uint256 depositShareFees, uint256 targetSharefee);

    /// @notice Emitted when a rebalance operation is performed
    /// @param rebalancePct The percentage of assets rebalanced
    /// @param withdrawnShares The amount of shares withdrawn from the deposit vault
    /// @param depositTokenBalance The amount of deposit tokens re-deposited to the deposit vault
    /// @param targetTokenBalance The amount of target tokens re-deposited to the target vault
    /// @param fees The amount of fees collected during the rebalance
    event Rebalance(uint256 rebalancePct, uint256 withdrawnShares, uint256 depositTokenBalance, uint256 targetTokenBalance, uint256 fees);

    /// @notice Emitted when the hysteresis threshold is updated
    /// @param sender The address that updated the threshold
    /// @param hysteresis The new hysteresis threshold
    event SetHysteresis(address indexed sender, uint256 hysteresis);

    /// @notice Emitted when the pending deposit threshold is updated
    /// @param sender The address that updated the threshold
    /// @param pendingThreshold The new pending deposit threshold
    event SetPendingThreshold(address indexed sender, uint256 pendingThreshold);

    /// @notice Emitted when the maximum rebalance threshold is updated
    /// @param sender The address that updated the threshold
    /// @param maxRebalanceThreshold The new maximum rebalance threshold
    event SetMaxRebalanceThreshold(address indexed sender, uint256 maxRebalanceThreshold);

    /// @notice Emitted when the excess target token threshold is updated
    /// @param sender The address that updated the threshold
    /// @param excessTargetTokenThreshold The new excess target token threshold
    event SetExcessTargetTokenThreshold(address indexed sender, uint256 excessTargetTokenThreshold);

    /// @notice Emitted when the fee recipient is updated
    /// @param sender The address that updated the fee recipient
    /// @param feeRecipient The new fee recipient address
    event SetFeeRecipient(address indexed sender, address feeRecipient);

    /// @notice Emitted when the fees are updated
    /// @param sender The address that updated the fees
    /// @param baseFee The new base fee
    /// @param withdrawFee The new withdraw fee
    event SetFees(address indexed sender, uint256 baseFee, uint256 withdrawFee);

    /// @notice Emitted when a fee update is scheduled
    /// @param sender The address that scheduled the fee update
    /// @param baseFee The scheduled base fee
    /// @param withdrawFee The scheduled withdraw fee
    event ScheduleSetFees(address indexed sender, uint256 baseFee, uint256 withdrawFee);

    /// @notice Emitted when doCheckImpliedSlippage is toggled
    /// @param sender The address that scheduled the fee update
    /// @param doCheckImpliedSlippage the value that doCheckImpliedSlippage is toggled to
    event CheckImpliedSlippage(address indexed sender, bool doCheckImpliedSlippage);

    /// @notice Emitted when extra tokens are swept from the contract
    /// @param sender The address initiating the sweep
    /// @param token The token being swept
    /// @param recipient The recipient of the swept tokens
    /// @param amount The amount of tokens swept
    event SweepExtraTokens(address sender, address indexed token, address indexed recipient, uint256 amount);
}
