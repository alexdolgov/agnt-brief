// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

/// @title Errors Library
/// @author luoyhang003
/// @notice Centralized custom errors for all contracts in the protocol.
/// @dev Each error saves gas compared to revert strings. The @dev comment
///      also includes the corresponding 4-byte selector for debugging
///      and off-chain tooling.
library Errors {
    /*//////////////////////////////////////////////////////////////////////////
                                    GENERAL
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when array lengths do not match or are zero.
    /// @dev Selector: 0x9d89020a
    error InvalidArrayLength();

    /// @notice Thrown when a provided address is zero.
    /// @dev Selector: 0xd92e233d
    error ZeroAddress();

    /// @notice Thrown when a provided amount is zero.
    /// @dev Selector: 0x1f2a2005
    error ZeroAmount();

    /// @notice Thrown when an index is out of bounds.
    /// @dev Selector: 0x4e23d035
    error IndexOutOfBounds();

    /// @notice Thrown when a user is not whitelisted but tries to interact.
    /// @dev Selector: 0x2ba75b25
    error UserNotWhitelisted();

    /// @notice Thrown when a token has invalid decimals (e.g., >18).
    /// @dev Selector: 0xd25598a0
    error InvalidDecimals();

    /// @notice Thrown when an asset is not supported.
    /// @dev Selector: 0x24a01144
    error UnsupportedAsset();

    /// @notice Thrown when trying to add an already added asset.
    /// @dev Selector: 0x5ed26801
    error AssetAlreadyAdded();

    /// @notice Thrown when trying to remove an asset that was already removed.
    /// @dev Selector: 0x422afd8f
    error AssetAlreadyRemoved();

    /// @notice Thrown when a common token address conflict with the vault token address.
    /// @dev Selector: 0x8a7ea521
    error ConflictiveToken();

    /// @notice Thrown when an array is reach to the length limit.
    /// @dev Selector: 0x951becfa
    error ExceedArrayLengthLimit();

    /*//////////////////////////////////////////////////////////////////////////
                                    Token.sol
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when transfer is attempted by/for a blacklisted address.
    /// @dev Selector: 0x6554e8c5
    error TransferBlacklisted();

    /*//////////////////////////////////////////////////////////////////////////
                                    DepositVault.sol
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when deposits are paused.
    /// @dev Selector: 0x35edea30
    error DepositPaused();

    /// @notice Thrown when a deposit exceeds per-token deposit cap.
    /// @dev Selector: 0xcc60dc5b
    error ExceedTokenDepositCap();

    /// @notice Thrown when a deposit exceeds global deposit cap.
    /// @dev Selector: 0x5054f250
    error ExceedTotalDepositCap();

    /// @notice Thrown when minting results in zero shares.
    /// @dev Selector: 0x1d31001e
    error MintZeroShare();

    /// @notice Thrown when attempting to deposit zero assets.
    /// @dev Selector: 0xd69b89cc
    error DepositZeroAsset();

    /// @notice Thrown when the oracle for an asset is invalid or missing.
    /// @dev Selector: 0x9589a27d
    error InvalidOracle();

    /*//////////////////////////////////////////////////////////////////////////
                                WithdrawController.sol
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when withdrawals are paused.
    /// @dev Selector: 0xe0a39803
    error WithdrawPaused();

    /// @notice Thrown when attempting to request withdrawal of zero shares.
    /// @dev Selector: 0xef9c351b
    error RequestZeroShare();

    /// @notice Thrown when a withdrawal receipt has invalid status for the operation.
    /// @dev Selector: 0x3bb3ba88
    error InvalidReceiptStatus();

    /// @notice Thrown when a caller is not the original withdrawal requester.
    /// @dev Selector: 0xe39da59e
    error NotRequester();

    /// @notice Thrown when a caller is blacklisted.
    /// @dev Selector: 0x473250af
    error UserBlacklisted();

    /*//////////////////////////////////////////////////////////////////////////
                                  AssetsRouter.sol
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when a recipient is already added.
    /// @dev Selector: 0xce2c4eb3
    error RecipientAlreadyAdded();

    /// @notice Thrown when a recipient is already removed.
    /// @dev Selector: 0x1c7dcc84
    error RecipientAlreadyRemoved();

    /// @notice Thrown when attempting to set auto-route to its current state.
    /// @dev Selector: 0xdf2e473d
    error InvalidRouteEnabledStatus();

    /// @notice Thrown when a non-registered recipient is used.
    /// @dev Selector: 0xf29851db
    error NotRouterRecipient();

    /// @notice Thrown when attempting to remove the currently active recipient.
    /// @dev Selector: 0xa453bd1b
    error RemoveActiveRouter();

    /// @notice Thrown when attempting to manual route the asstes when auto route is enabled.
    /// @dev Selector: 0x92d56bf7
    error AutoRouteEnabled();

    /// @notice Thrown when setting the same router address.
    /// @dev Selector: 0x23b920b6
    error SameRouterAddress();

    /*//////////////////////////////////////////////////////////////////////////
                                  AccessRegistry.sol
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when trying to blacklist an already blacklisted user.
    /// @dev Selector: 0xf53de75f
    error AlreadyBlacklisted();

    /// @notice Thrown when trying to whitelist an already whitelisted user.
    /// @dev Selector: 0xb73e95e1
    error AlreadyWhitelisted();

    /// @notice Reverts when the requested state matches the current state.
    /// @dev Selector: 0x3fbc93f3
    error AlreadyInSameState();

    /*//////////////////////////////////////////////////////////////////////////
                                  OracleRegister.sol
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when an oracle is already registered for an asset.
    /// @dev Selector: 0x652a449e
    error OracleAlreadyAdded();

    /// @notice Thrown when an oracle does not exist for an asset.
    /// @dev Selector: 0x4dca4f7d
    error OracleNotExist();

    /// @notice Thrown when price deviation exceeds maximum allowed.
    /// @dev Selector: 0x8774ad87
    error ExceedMaxDeviation();

    /// @notice Thrown when price updates are attempted too frequently.
    /// @dev Selector: 0x8f46908a
    error PriceUpdateTooFrequent();

    /// @notice Thrown when a price validity period has expired.
    /// @dev Selector: 0x7c9d063a
    error PriceValidityExpired();

    /// @notice Thrown when a price is zero.
    /// @dev Selector: 0x10256287
    error InvalidZeroPrice();

    /*//////////////////////////////////////////////////////////////////////////
                                  ParamRegister.sol
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when tolerance basis points exceed maximum deviation.
    /// @dev Selector: 0xb8d855e2
    error ExceedMaxDeviationBps();

    /// @notice Thrown when price update interval is invalid.
    /// @dev Selector: 0xfff67f52
    error InvalidPriceUpdateInterval();

    /// @notice Thrown when price validity duration exceeds allowed maximum.
    /// @dev Selector: 0x6eca7e24
    error PriceMaxValidityExceeded();

    /// @notice Thrown when mint fee rate exceeds maximum allowed.
    /// @dev Selector: 0x8f59faf8
    error ExceedMaxMintFeeRate();

    /// @notice Thrown when redeem fee rate exceeds maximum allowed.
    /// @dev Selector: 0x86871089
    error ExceedMaxRedeemFeeRate();

    /*//////////////////////////////////////////////////////////////////////////
                              ChainlinkOracleFeed.sol
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when a reported price is invalid.
    /// @dev Selector: 0x00bfc921
    error InvalidPrice();

    /// @notice Thrown when a reported price is stale.
    /// @dev Selector: 0x19abf40e
    error StalePrice();

    /// @notice Thrown when a Chainlink round is incomplete.
    /// @dev Selector: 0x8ad52bdd
    error IncompleteRound();
}
