// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.17;

library ErrorLibrary {
  /// @notice Thrown when an invalid (zero) address is provided
  error InvalidAddress();

  /// @notice Thrown when attempting to create a portfolio while creation is paused
  error PortfolioCreationIsPause();

  /// @notice Thrown when trying to create a custodial portfolio without providing any owners
  error NoOwnerPassed();

  /// @notice Thrown when the provided threshold is invalid (0 or greater than number of owners)
  error InvalidThresholdLength();

  /// @notice Thrown when a function restricted to super admin is called by non-admin
  error CallerNotSuperAdmin();

  /// @notice Thrown when a function restricted to admin is called by non-admin account
  error CallerNotAdmin();

  /// @notice Thrown when a low-level call execution fails in the Gnosis Safe module
  error CallFailedForSafeModule();

  /// @notice Thrown when the Velvet Safe module fails to be enabled in the Gnosis Safe setup
  error ModuleNotInitialised();

  /// @notice Thrown when the deposit amount is less than the minimum deposit amount
  error LessThanMinDepositAmount();

  /// @notice Thrown when the fund raising period has ended
  error FundRaisingPeriodEnded();

  /// @notice Thrown when the fund raising period has not ended
  error FundRaisingPeriodNotEnded();

  /// @notice Thrown when the fund lock period has not ended
  error FundLockPeriodNotEnded();

  /// @notice Thrown when the trading has started
  error TradingStarted();

  /// @notice Thrown when the user has insufficient balance
  error InsufficientBalance();

  /// @notice Thrown when the pull from vault
  error PullFromVaultFailed();

  /// @notice Thrown when the module deployment failed
  error ModuleDeploymentFailed();

  /// @notice Thrown when the chain is not supported
  error ChainNotSupported(uint256 _chainId);

  /// @notice Thrown when the call proxy has bad role
  error CallProxyBadRole();

  /// @notice Thrown when the native sender has bad role
  error NativeSenderBadRole(bytes _nativeSender, uint256 _chainId);

  /// @notice Thrown when the caller is not the asset manager
  error OnlyAssetManager();
}
