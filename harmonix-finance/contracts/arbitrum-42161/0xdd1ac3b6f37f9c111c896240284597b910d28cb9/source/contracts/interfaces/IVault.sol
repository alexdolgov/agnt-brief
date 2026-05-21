// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

interface IVault {
    function deposit(address _asset, uint256 _amount, bytes calldata _swapCallData) external;
    function initiateWithdrawal(uint256 shares) external;
    function completeWithdrawal(uint256 shares) external;
    function acquireWithdrawalFunds(uint256 usdAmount, address[] memory wallets) external;
    function acquireManagementFee(uint256 timestamp) external;
    function getUserWithdrawlShares() external view returns (uint256);
    function totalShares() external view returns (uint256);
    function totalValueLocked() external view returns (uint256);
    function balanceOf(address owner) external view returns (uint256);
    function pricePerShare() external view returns (uint256);
}