// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

library Errors {
    // Common errors
    error NoFeedSet();
    error NoFallbackFeedSet();
    error NoPriceAvailable();
    error NotAContract();
    error PoolDisabled();
    error PoolNotDisabled();
    // Oracle specific errors
    error RoundNotComplete();

    // Oracles General errors
    error InvalidOracleProviderType();
    error InvalidFeed();

    // Riz Registry errors
    error PoolRegisteredAlready();
    error NoAddressProvider();

    // Riz LockZap errors
    error AddressZero();

    error CannotRizZap();

    error InvalidLendingPool();

    error InvalidRatio();

    error InvalidLockLength();

    error AmountZero();

    error SlippageTooHigh();

    error SpecifiedSlippageExceedLimit();

    error InvalidZapETHSource();

    error ReceivedETHOnAlternativeAssetZap();

    error InsufficientETH();

    error EthTransferFailed();

    error SwapFailed(address asset, uint256 amount);

    error WrongRoute(address fromToken, address toToken);

    // Riz Leverager errors
    error ReceiveNotAllowed();

    error FallbackNotAllowed();

    error InsufficientPermission();

    /// @notice Disallow a loop count of 0
    error InvalidLoopCount();

    /// @notice Thrown when deployer sets the margin too high
    error MarginTooHigh();

    // Bad Debt Manager errors
    error OnlyLendingPool();
    error UserAlreadyWithdrawn();
    error BadDebtIsZero();
    error UserAllowanceZero();
    error NotEmergencyAdmin();
    error InvalidAssetsLength();
}
