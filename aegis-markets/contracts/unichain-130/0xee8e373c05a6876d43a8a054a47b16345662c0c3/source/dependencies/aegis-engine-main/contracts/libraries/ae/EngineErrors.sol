// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library EngineErrors {
  /// To save bytecode size we use this error with different error codes
  error AegisEngineError(uint8 code);

  // - - - Core Engine Errors - - -

  /// @notice Thrown when a zero address is supplied where not permitted.
  uint8 internal constant ERR_ADDRESS_ZERO = 1;
  /// @notice Thrown when attempting to initialize an already initialized pool.
  uint8 internal constant ERR_MARKET_ALREADY_INITIALIZED = 2;
  /// @notice Thrown when attempting to initialize a pool before the v4 pool itself is initialized.
  uint8 internal constant ERR_POOL_NOT_INITIALIZED_IN_V4 = 3;
  /// @notice Thrown when interacting with a pool that has not yet been initialized in the Aegis Engine
  uint8 internal constant ERR_MARKET_NOT_INITIALIZED = 4;
  /// @notice Thrown when MAX_PROTOCOL_FEE_PIPS is exceeded on configuration
  uint8 internal constant ERR_PROTOCOL_FEE_TOO_HIGH = 5;
  /// @notice Thrown when a vault action references a pool other than the one recorded for the vault.
  uint8 internal constant ERR_POOL_MISMATCH = 6;
  /// @notice Thrown when aeStart exits with a pending NFT attach intent.
  uint8 internal constant ERR_PENDING_ATTACH_NOT_SATISFIED = 7;
  /// @notice Thrown when attaching would exceed the per-vault NFT cap.
  uint8 internal constant ERR_MAX_NFTS_EXCEEDED = 8;
  /// @notice Thrown when the NFT is already attached to the vault.
  uint8 internal constant ERR_NFT_ALREADY_ATTACHED = 9;
  /// @notice Thrown when attempting to detach an NFT that is not recorded in the vault.
  uint8 internal constant ERR_NFT_NOT_ATTACHED = 10;
  /// @notice Thrown when the NFT has no remaining liquidity to contribute.
  uint8 internal constant ERR_NFT_LIQUIDITY_TOO_LITTLE = 11;
  /// @notice Thrown when a second pending attach intent is attempted.
  uint8 internal constant ERR_PENDING_ATTACH_EXISTS = 12;
  /// @notice Thrown when a push-handshake transfer does not match the declared intent.
  uint8 internal constant ERR_PENDING_ATTACH_MISMATCH = 13;
  /// @notice Thrown when the safeTransfer payload cannot be decoded.
  uint8 internal constant ERR_INVALID_ATTACH_DATA = 14;
  /// @notice Thrown when trying to unlock a vault that is already unlocked in the current session.
  uint8 internal constant ERR_VAULT_ALREADY_UNLOCKED = 15;
  /// @notice Thrown when share minting/burning would yield zero shares.
  uint8 internal constant ERR_ZERO_SHARES_OR_LIQUIDITY = 16;
  /// @notice Thrown when a caller that did not unlock the vault attempts to operate on it.
  uint8 internal constant ERR_NOT_VAULT_SESSION_OPERATOR = 17;
  /// @notice Thrown when locking a vault would violate the per-market maxLtvPips guard.
  uint8 internal constant ERR_MAX_LTV_EXCEEDED = 18;
  /// @notice Thrown when a pool's utilisation exceeds the configured cap.
  uint8 internal constant ERR_UTILIZATION_CAP = 19;
  /// @notice Thrown when an action is disallowed given the vault's current lock state
  uint8 internal constant ERR_VAULT_STATE_DISALLOWS = 20;
  /// @notice Thrown when the spot price deviates from the TWAP beyond the configured band.
  uint8 internal constant ERR_TWAP_DEVIATION = 21;
  /// @notice Thrown when aeStart exits with outstanding unlocked vaults.
  uint8 internal constant ERR_VAULTS_NOT_LOCKED = 22;
  /// @notice Thrown when attempting to AE.initialize for a pool on an unauthorized hook
  uint8 internal constant ERR_UNAUTHORIZED_HOOK = 23;
  /// @notice Thrown when a vault operation would result in negative idle balances.
  uint8 internal constant ERR_NEGATIVE_IDLE_BALANCE = 24;
  /// @notice Thrown when caller is not authorized to operate on a vault.
  uint8 internal constant ERR_NOT_AUTHORIZED = 25;
  /// @notice Thrown when attempting to donate below the minimum liquidity threshold.
  uint8 internal constant ERR_DONATION_BELOW_MINIMUM = 26;
  /// @notice Thrown when attempting to interact with a non-existent vault.
  uint8 internal constant ERR_VAULT_NOT_FOUND = 27;
  /// @notice Thrown when spot tick is too close to MIN/MAX ticks for debt ops and micro-liquidations.
  uint8 internal constant ERR_EXTREME_TICK = 28;
  /// @notice Thrown when locking a vault would leave debt below the minimum threshold.
  uint8 internal constant ERR_VAULT_DEBT_BELOW_MINIMUM = 29;
  /// @notice Thrown when AegisDependencies is not initialized.
  uint8 internal constant ERR_DEPS_NOT_INITIALIZED = 30;

  // - - - Engine Library Errors - - -

  uint8 internal constant ERR_PEEL_ZERO_LIQUIDITY = 100;
  uint8 internal constant ERR_PEEL_EXCEEDS_LIQUIDITY = 101;
  uint8 internal constant ERR_PEEL_FULL_CANCEL_REQUIRED = 102;

  uint8 internal constant ERR_POOL_MISMATCH_2 = 110;
  uint8 internal constant ERR_INVALID_NFT_2 = 111;
  uint8 internal constant ERR_TICK_SPACING_MISMATCH = 112;
  /// @notice Thrown when static pool fee exceeds the maximum for micro-liquidation LTV calculation.
  uint8 internal constant ERR_FEE_TOO_HIGH_FOR_MICRO_LIQ = 113;
  /// @notice Thrown when LTV configuration is invalid (max >= hard, hard >= 100%, or ramp width too narrow).
  uint8 internal constant ERR_INVALID_LTV_CONFIG = 114;
  /// @notice Thrown when attempting to burn a vault that still has debt.
  uint8 internal constant ERR_VAULT_HAS_DEBT = 115;
  /// @notice Thrown when attempting to burn a vault that still has idle balances.
  uint8 internal constant ERR_VAULT_HAS_IDLE = 116;
  /// @notice Thrown when attempting to burn a vault that still has attached positions.
  uint8 internal constant ERR_VAULT_HAS_POSITIONS = 117;

  function revertEngine(uint8 code) internal pure {
    revert AegisEngineError(code);
  }
}
