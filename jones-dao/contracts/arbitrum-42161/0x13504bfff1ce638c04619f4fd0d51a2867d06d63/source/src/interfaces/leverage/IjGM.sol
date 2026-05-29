// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC20} from "openzeppelin-contracts/interfaces/IERC20.sol";

import {ILeverageViewer} from "src/interfaces/leverage/ILeverageViewer.sol";

interface IjGM {
    function underlying() external returns (IERC20);

    function viewer() external returns (ILeverageViewer);

    function totalAssets() external view returns (uint256);
    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);
    function approve(address spender, uint256 value) external returns (bool);

    function transfer(address to, uint256 amount) external returns (bool);

    function previewRedeem(uint256 shares) external view returns (uint256);

    function previewDeposit(uint256 assets) external view returns (uint256);

    function burn(address account, uint256 shares) external;

    function mint(uint256 shares, address receiver) external returns (uint256);

    event EmergencyWithdrawal(address sender, address to, address token, uint256 balance);

    error NotRightCaller();
}
