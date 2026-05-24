//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

interface IBrktETHRouter {
    error AmountOverStakingLimit();
    error ETHTransferFailed();
    error Unauthorized();

    event ETHToBrktETH(address indexed sender, uint256 value, uint256 mintBrktAmount, address lstToken, bool wrapped);

    function ethToBrktETH(uint256 mintBrktAmount) external payable returns (uint256);

    function wethToBrktETH(uint256 amount, uint256 mintBrktAmount) external returns (uint256);

    function lidoLimit() external view returns (uint256);

    function rocketPoolLimit() external view returns (uint256);
}