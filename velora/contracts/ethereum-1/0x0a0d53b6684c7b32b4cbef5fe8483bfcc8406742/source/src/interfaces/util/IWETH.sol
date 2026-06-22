// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

/// @title WETH Interface
/// @notice Interface for Wrapped Ether (WETH) contract
/// @dev Standard WETH interface with deposit and withdraw functions
interface IWETH {
    /// @notice Deposit ETH to receive WETH
    function deposit() external payable;

    /// @notice Withdraw WETH to receive ETH
    /// @param amount The amount of WETH to withdraw
    function withdraw(uint256 amount) external;

    /// @notice Approve spender to transfer WETH tokens
    /// @param spender The address to approve
    /// @param amount The amount to approve
    /// @return success True if approval was successful
    function approve(address spender, uint256 amount) external returns (bool);

    /// @notice Transfer WETH tokens
    /// @param to The recipient address
    /// @param amount The amount to transfer
    /// @return success True if transfer was successful
    function transfer(address to, uint256 amount) external returns (bool);

    /// @notice Get WETH balance of an account
    /// @param account The account to check
    /// @return balance The WETH balance
    function balanceOf(address account) external view returns (uint256 balance);
}
