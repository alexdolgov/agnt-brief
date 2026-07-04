// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

abstract contract Errors {
    // AsyncDeposit Errors
    error DepositNotPending();
    error NotDepositorOrAllocator();
    error NotRedeemerOrAllocator();
    error DepositAmountTooLow();
    error DepositAmountTooHigh();
    error InsufficientSharesOut();
    error InvalidDepositLimits();
    error InputLengthMismatch();
    error ExchangeRateOutsideTolerance();
    // Auth Errors
    error OnlyAllocator();
    error OnlyPauser();
    error OnlyTimelockCancelerOrOwner();
    error OnlyOracleUpdater();
    // Access Control Errors
    error NotPoolManager();
    // Pausable Errors
    error FunctionalityIsPaused();
    error CannotUnpauseWhenPausing();
    error CannotPauseWhenUnpausing();
    // PerformanceFees Errors
    error InvalidEpochLength();
    error InvalidPerformanceFee();
    error InvalidManagementFee();
    error InvalidFeeRecipient();
    error OnlyFactory();
    // AsyncRedemption Errors
    error RedemptionNotPending();
    error RedemptionAmountTooLow();
    error RedemptionAmountTooHigh();
    error InvalidRedemptionLimits();
    error InsufficientAssetsOut();
    // Timelocked Errors
    error ActionAlreadyQueued();
    error ActionNotQueued();
    error ActionNotExecutable();
    error MustDecreaseDelay();
    error MustIncreaseDelay();
    // Setter Errors
    error OracleAssetMismatch();
    error PerpsCollateralAdjustmentTooLarge();
    error ZeroAddressDisallowed();
    error OnlyVestibule();
    error OnlyVault();
    error VestibuleAlreadySet();
    // TransferPolicy Errors
    error UserDepositsForbidden();
    error UserRedemptionsForbidden();
    error UserShareTransfersForbidden();
    // Restricted External Call Errors
    error CallTargetDisallowed();
    error CallSignatureDisallowed();
    error RestrictedCallFailed();
    // Swapping Errors
    error SlippageExceeded();
    error SwapReceiverNotVault();
    error SwappingToIrrelevantToken();
    error CannotTransferOutVaultShares();
    // Oracle Errors
    error OnlyOwner();
}
