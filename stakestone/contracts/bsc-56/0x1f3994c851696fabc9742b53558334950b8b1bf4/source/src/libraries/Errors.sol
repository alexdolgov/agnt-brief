// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

/// @title Errors Library
/// @author luoyhang003
/// @notice Centralized custom error definitions used across the Genesis Expedition contracts.
/// @dev Custom errors significantly reduce gas costs compared to revert strings.
///      These errors are grouped by contract/module for clarity and maintainability.
///      For off-chain tools, debuggers, and log parsers, selectors can be derived from:
/// @dev `bytes4(keccak256("ErrorName()"))`.
library Errors {
    /*//////////////////////////////////////////////////////////////////////////
                                    GENERAL
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when a required address argument is zero.
    /// @dev Selector: 0xd92e233d
    error ZeroAddress();

    /// @notice Thrown when accessing an array index out of bounds.
    /// @dev Selector: 0x4e23d035
    error IndexOutOfBounds();

    /// @notice Thrown when input arrays have mismatched or invalid lengths.
    /// @dev Selector: 0x9d89020a
    error InvalidArrayLength();

    /*//////////////////////////////////////////////////////////////////////////
                                    GenesisExpedition.sol
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when caller is not an authorized staking contract.
    /// @dev Selector: 0x135420fb
    error NotStakingContract();

    /// @notice Thrown when EIP-712 signature validation fails.
    /// @dev Selector: 0x8baa579f
    error InvalidSignature();

    /// @notice Thrown when a signature is past its deadline.
    /// @dev Selector: 0x0819bdcd
    error SignatureExpired();

    /// @notice Thrown when a signature nonce is invalid or already used.
    /// @dev Selector: 0x756688fe
    error InvalidNonce();

    /// @notice Thrown when user does not have enough Raw Stones.
    /// @dev Selector: 0xfdc0d989
    error RawStoneNotEnough();

    /// @notice Thrown when user does not have enough Golden Stones.
    /// @dev Selector: 0xd867d602
    error GoldenStoneNotEnough();

    /// @notice Thrown when attempting to interact with an inactive Golden Stone.
    /// @dev Selector: 0x0fdef728
    error GoldenStoneNotActivated();

    /// @notice Thrown when Golden Stone has expired and cannot be used.
    /// @dev Selector: 0x15089372
    error GoldenStoneExpired();

    /// @notice Thrown when Golden Stone is expected to be expired but is not.
    /// @dev Selector: 0x1265e724
    error GoldenStoneNotExpired();

    /// @notice Thrown when caller is not the owner of a Golden Stone.
    /// @dev Selector: 0xb9e8af49
    error NotGoldenStoneOwner();

    /// @notice Thrown when user attempts to consume Raw Stones they do not own.
    /// @dev Selector: 0xf08bbab8
    error NotRawStoneOwner();

    /// @notice Thrown when a user attempts to tap a Golden Stone more than once.
    /// @dev Selector: 0xf1fa8e2f
    error AlreadyTapped();

    /// @notice Thrown when attempting to forge a Golden Stone that is already forged.
    /// @dev Selector: 0x03d15bb0
    error GoldenStoneAlreadyForged();

    /// @notice Thrown when Golden Stone forging does not meet minimum participants.
    /// @dev Selector: 0x99f46cd5
    error NotEnoughParticipants();

    /// @notice Thrown when Golden Stone forging exceeds maximum allowed participants.
    /// @dev Selector: 0xfc8b1cb6
    error ExceedMaxParticipants();

    /// @notice Thrown when user lacks the required hammers for forging actions.
    /// @dev Selector: 0xc1bb1476
    error HammerNotEnough();

    /// @notice Thrown when configuration for Golden Stones is invalid.
    /// @dev Selector: 0x42431218
    error InvalidGoldenStoneConfig();

    /// @notice Thrown when signature validates, but signer is not the authorized master signer.
    /// @dev Selector: 0x4d053391
    error NotMasterSigner();

    /*//////////////////////////////////////////////////////////////////////////
                                    STOStaking.sol / STONEUSDStaking.sol
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when an action requires the event to be active but it is not.
    /// @dev Selector: 0x0f0c1bc8
    error EventNotActive();

    /// @notice Thrown when an action requires the event to have ended but it has not.
    /// @dev Selector: 0xfb141a0d
    error EventNotEnded();

    /// @notice Thrown when the staking start time is invalid or misaligned.
    /// @dev Selector: 0xb290253c
    error InvalidStartTime();

    /// @notice Thrown when an admin sets an invalid price or configuration value.
    /// @dev Selector: 0x00bfc921
    error InvalidPrice();

    /// @notice Thrown when a user attempts to lock more than the maximum allowed.
    /// @dev Selector: 0xba4beea8
    error ExceedMaxLockCap();

    /// @notice Thrown when a user attempts to lock more than the maximum allowed for raw stones.
    /// @dev Selector: 0x7849ba98
    error ExceedMaxRawStoneMintAmount();

    /// @notice Thrown when user locks less than the required minimum amount.
    /// @dev Selector: 0xdcb6ca48
    error BelowMinimumLockAmount();

    /// @notice Thrown when user attempts to unlock tokens before maturity.
    /// @dev Selector: 0x2a916d02
    error UnlockNotMatured();

    /// @notice Thrown when a user attempts to unlock but has no unlockable balance.
    /// @dev Selector: 0x764c157f
    error NothingToUnlock();

    /*//////////////////////////////////////////////////////////////////////////
                                    ReferralRegistry.sol
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when caller is not the authorized keeper contract.
    /// @dev Selector: 0x90023044
    error NotKeeperContract();
}
