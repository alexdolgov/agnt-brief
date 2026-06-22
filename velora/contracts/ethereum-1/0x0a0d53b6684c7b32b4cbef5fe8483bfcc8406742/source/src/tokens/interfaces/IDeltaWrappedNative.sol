// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import { IDeltaYieldToken } from "./IDeltaYieldToken.sol";

/// @title IDeltaWrappedNative - Interface for Delta Wrapped Native token
/// @notice Interface for a wrapped native token optimized for PortikusV2 Delta adapter integration
/// @dev Extends IDeltaYieldToken with native ETH wrapping/unwrapping capabilities.
interface IDeltaWrappedNative is IDeltaYieldToken {
    /*//////////////////////////////////////////////////////////////
                    DEPOSIT / WITHDRAW NATIVE FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Wrap native tokens (ETH) into transferable dETH
    /// @param receiver The address to receive the wrapped tokens
    function depositNative(address receiver) external payable;

    /// @notice Deposit native tokens directly into a yield strategy
    /// @param strategy The ERC-4626 strategy to deposit into
    /// @param receiver The address that will own the strategy position
    function depositNativeToStrategy(address strategy, address receiver) external payable;

    /// @notice Unwrap dETH back to native tokens (ETH)
    /// @param amount The amount of dETH to unwrap
    /// @param owner The owner of the dETH tokens
    /// @param receiver The address to receive native tokens
    function withdrawNative(uint256 amount, address owner, address receiver) external;

    /// @notice Withdraw exact native assets from strategy
    /// @param assets The amount of native assets to withdraw
    /// @param strategy The strategy to withdraw from
    /// @param owner The owner of the shares
    /// @param receiver The recipient of native tokens
    /// @return netAssets The net amount of native assets transferred to receiver (after yield fee)
    function withdrawNativeFromStrategy(
        uint256 assets,
        address strategy,
        address owner,
        address receiver
    )
        external
        returns (uint256 netAssets);

    /// @notice Redeem shares from strategy as native tokens
    /// @param shares The number of shares to redeem
    /// @param strategy The strategy to redeem from
    /// @param owner The owner of the shares
    /// @param receiver The recipient of native tokens
    /// @return assets The net amount of native assets transferred (after yield fee)
    function redeemNativeFromStrategy(
        uint256 shares,
        address strategy,
        address owner,
        address receiver
    )
        external
        returns (uint256 assets);

    /*//////////////////////////////////////////////////////////////
                       PREVIEW NATIVE FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Preview how many shares would be minted for a native deposit to strategy
    /// @param nativeAmount The amount of native tokens to deposit
    /// @param strategy The strategy to deposit into
    /// @return shares The number of shares that would be minted
    function previewDepositNativeToStrategy(
        uint256 nativeAmount,
        address strategy
    )
        external
        view
        returns (uint256 shares);

    /// @notice Preview how many shares would be burned for a native withdrawal
    /// @param nativeAmount The amount of native tokens to withdraw
    /// @param strategy The strategy to withdraw from
    /// @return shares The number of shares that would be burned
    function previewWithdrawNativeFromStrategy(
        uint256 nativeAmount,
        address strategy
    )
        external
        view
        returns (uint256 shares);

    /// @notice Preview native redemption: gross amount, yield fee, and net amount
    /// @param shares The number of shares to redeem
    /// @param strategy The strategy to redeem from
    /// @param owner The owner of the shares
    /// @return grossNative The total native before fee
    /// @return yieldFee The yield fee that would be charged
    /// @return netNative The net native after fee
    function previewRedeemNativeFromStrategy(
        uint256 shares,
        address strategy,
        address owner
    )
        external
        view
        returns (uint256 grossNative, uint256 yieldFee, uint256 netNative);
}

