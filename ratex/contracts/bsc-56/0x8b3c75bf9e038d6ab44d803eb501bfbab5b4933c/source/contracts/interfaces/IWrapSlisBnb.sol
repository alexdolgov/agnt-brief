// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IWrapSlisBnb {
    /**
     * @notice Deposits tokens and returns wrapped amount
     * @param amount Amount to deposit
     * @return Wrapped amount
     */
    function deposit(uint256 amount) external returns (uint256);
    
    /**
     * @notice Withdraws tokens
     * @param amount Amount to withdraw
     * @return Actual amount withdrawn
     */
    function withdraw(uint256 amount) external returns (uint256);

    /**
     * @notice Converts wrap amount to token amount
     * @param wrapAmount Amount in wrap units
     * @return Token amount
     */
    function wrapAmoutToAmount(uint256 wrapAmount) external view returns (uint256);

    /**
     * @notice Withdraws all tokens
     * @return Actual amount withdrawn
     */
    function withdrawAll() external returns (uint256);
} 