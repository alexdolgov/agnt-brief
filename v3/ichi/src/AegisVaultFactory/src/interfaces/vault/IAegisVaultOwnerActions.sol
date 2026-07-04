// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;
pragma abicoder v2;

/// @title Aegis Vault Admin Actions Interface
/// @notice Contains all actions that can only be performed by addresses with the DEFAULT_ADMIN_ROLE
interface IAegisVaultOwnerActions {
    /// @notice Pauses deposits and rebalances on the Aegis vault
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE
    function pause() external;

    /// @notice Unpauses deposits and rebalances on the Aegis vault
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE
    function unpause() external;

    /// @notice Resets the approvals for the ICHI vaults
    /// @dev This function should be called if the allowance for the ICHI vaults needs to be reset
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE
    function resetICHIVaultApprovals() external;

    /// @notice Transfers any extra ERC20 tokens held by the contract to a specified recipient
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE
    /// @dev Extra tokens are any ERC20 tokens other than depositToken, targetToken, depositVault, and targetVault
    /// @dev The function will revert if there are no extra tokens to sweep
    /// @param _token The address of the ERC20 token to be swept
    /// @param _recipient The address of the recipient to receive the swept tokens
    /// @notice Emits a SweepExtraTokens event after successful execution
    function sweepExtraTokens(address _token, address _recipient) external;

    /// @notice Sets the pending deposit threshold for the underlying vaults (Deposit and Target)
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE
    /// @dev The new threshold must be a valid percentage expressed in BSP
    /// @param _newPendingThreshold The new pending deposit threshold to be set
    /// @notice Emits a SetPendingThreshold event after successful execution
    function setPendingThreshold(uint256 _newPendingThreshold) external;

    /// @notice Sets the maximum rebalance threshold for the vault
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE
    /// @dev The new threshold must be a valid percentage expressed in BSP
    /// @param _newMaxRebalanceThreshold The new maximum rebalance threshold to be set
    /// @notice Emits a SetMaxRebalanceThreshold event after successful execution
    function setMaxRebalanceThreshold(uint256 _newMaxRebalanceThreshold) external;

    /// @notice Sets the excess target token threshold for the Deposit vault
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE
    /// @dev The new threshold must be a valid percentage expressed in BSP
    /// @param _newExcessTargetTokenThreshold The new excess target token threshold to be set
    /// @notice Emits a SetExcessTargetTokenThreshold event after successful execution
    function setExcessTargetTokenThreshold(uint256 _newExcessTargetTokenThreshold) external;

    /// @notice Sets the maximum volatility threshold for the underlying vaults (Deposit and Target)
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE
    /// @dev The new threshold must be greater than 0 and expressed as a FP U18
    /// @param _newMaxVolatility The new maximum volatility threshold to be set
    /// @notice Emits a SetMaxVolatility event after successful execution
    function setMaxVolatility(uint256 _newMaxVolatility) external;

    /// @notice Sets the hysteresis threshold for price change checks
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE
    /// @param _hysteresis The new hysteresis threshold (expressed as a FP U18, 1e16 = 0.01 = 1%)
    /// @notice Emits a SetHysteresis event after successful execution
    function setHysteresis(uint256 _hysteresis) external;

    /// @notice Sets the time-weighted average price (TWAP) period for the vault (used for volatility checks)
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE
    /// @dev The new period must be greater than 0
    /// @param _newTwapPeriod The new TWAP period to be set in seconds
    /// @notice Emits a SetTwapPeriod event after successful execution
    function setTwapPeriod(uint32 _newTwapPeriod) external;

    /// @notice Sets the fee recipient account address
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE
    /// @dev The new address must not be the zero address
    /// @param _feeRecipient The new fee recipient account address
    /// @notice Emits a SetFeeRecipient event after successful execution
    function setFeeRecipient(address _feeRecipient) external;

    /// @notice Schedules a call to set the fee percentages
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE
    /// @dev The new fee percentages must be valid percentages expressed in BSP
    /// @param _baseFee The new base fee percentage in BSP (100 = 1%, 10000 = 100%)
    /// @param _withdrawFee The new withdraw fee percentage in BSP (100 = 1%, 10000 = 100%)
    /// @notice Emits a ScheduleSetFees event after successful execution
    function scheduleSetFees(uint256 _baseFee, uint256 _withdrawFee) external;

    /// @notice Executes the scheduled fee update
    /// @dev Can be called by anyone, but only after the scheduled time has passed
    /// @notice Emits a SetFees event after successful execution
    function executeSetFees() external;

    function setCheckImpliedSlippage(bool _doCheckImpliedSlippage) external;

    /// @notice Sets the minimum number of Aegis shares that must be minted on a deposit
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE
    /// @dev If set to 0, the minimum-minted-shares check is disabled.
    function setMinDepositAegisShares(uint256 _minDepositAegisShares) external;

    /// @notice Claims rewards from a Merkle distributor
    /// @dev Can only be called by an address with the DEFAULT_ADMIN_ROLE
    /// @param merkleDistributor The address of the Merkle distributor contract
    /// @param recipient The address to receive the claimed rewards
    /// @param users The list of user addresses for which to claim
    /// @param tokens The list of token addresses to claim
    /// @param amounts The list of amounts to claim for each token
    /// @param proofs The Merkle proofs for each claim
    function claim(
        address merkleDistributor,
        address recipient,
        address[] calldata users,
        address[] calldata tokens,
        uint256[] calldata amounts,
        bytes32[][] calldata proofs
    )
        external;
}
