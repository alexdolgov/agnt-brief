// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface ICompoundVault {
    function compound() external;

    function deposit(uint256 _assets, address _receiver) external returns (uint256);
    function redeem(uint256 _shares, address _receiver) external returns (uint256);
    function previewDeposit(uint256 assets) external view returns (uint256);
    function previewRedeem(uint256 shares) external view returns (uint256);
    function totalAssets() external view returns (uint256);
    function totalAssetsToDeposits(address recipient, uint256 assets) external view returns (uint256);

    event Deposit(address indexed from, address receiver, uint256 assets, uint256 shares);
    event Withdraw(address indexed from, address receiver, uint256 assets, uint256 shares);
    event DistributeIncentives(address indexed incentiveReceiver, uint256 retention);
    event Compound(uint256 netRewards, uint256 totalAssets, uint256 totalSupply);
    event EmergencyWithdrawal(address indexed caller, address indexed receiver, address[] tokens, uint256 nativeBalanc);

    error FailSendETH();
}
