// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface IEVault {
    /// @notice Debt owed by a particular account, in underlying units
    /// @param account Address to query
    /// @return The debt of the account in asset units
    function debtOf(address account) external view returns (uint256);

    /// @notice Balance of a particular account, in eTokens
    /// @param account Address to query
    /// @return The balance of the account
    function balanceOf(address account) external view returns (uint256);

    /// @notice Transfer requested amount of underlying tokens from sender to the vault pool in return for shares
    /// @param amount Amount of assets to deposit (use max uint256 for full underlying token balance)
    /// @param receiver An account to receive the shares
    /// @return Amount of shares minted
    /// @dev Deposit will round down the amount of assets that are converted to shares. To prevent losses consider using
    /// mint instead.
    function deposit(uint256 amount, address receiver) external returns (uint256);

    /// @notice Transfer requested amount of underlying tokens from the vault and decrease account's shares balance
    /// @param amount Amount of assets to withdraw
    /// @param receiver Account to receive the withdrawn assets
    /// @param owner Account holding the shares to burn
    /// @return Amount of shares burned
    function withdraw(uint256 amount, address receiver, address owner) external returns (uint256);

    /// @notice Fetch the maximum amount of assets a user is allowed to withdraw
    /// @param owner Account holding the shares
    /// @return The maximum amount of assets the owner is allowed to withdraw
    function maxWithdraw(address owner) external view returns (uint256);

    /// @notice Transfer underlying tokens from the vault to the sender, and increase sender's debt
    /// @param amount Amount of assets to borrow (use max uint256 for all available tokens)
    /// @param receiver Account receiving the borrowed tokens
    /// @return Amount of assets borrowed
    function borrow(uint256 amount, address receiver) external returns (uint256);

    /// @notice Transfer underlying tokens from the sender to the vault, and decrease receiver's debt
    /// @param amount Amount of debt to repay in assets (use max uint256 for full debt)
    /// @param receiver Account holding the debt to be repaid
    /// @return Amount of assets repaid
    function repay(uint256 amount, address receiver) external returns (uint256);

    /// @notice Calculate amount of assets corresponding to the requested shares amount
    /// @param shares Amount of shares to convert
    /// @return The amount of assets
    function convertToAssets(uint256 shares) external view returns (uint256);

    /// @notice Calculate amount of shares corresponding to the requested assets amount
    /// @param assets Amount of assets to convert
    /// @return The amount of shares
    function convertToShares(uint256 assets) external view returns (uint256);

    /// @notice Request a flash-loan. A onFlashLoan() callback in msg.sender will be invoked, which must repay the loan
    /// to the main Euler address prior to returning.
    /// @param amount In asset units
    /// @param data Passed through to the onFlashLoan() callback, so contracts don't need to store transient data in
    /// storage
    function flashLoan(uint256 amount, bytes calldata data) external;
}
