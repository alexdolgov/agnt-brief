// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title Minimal IERC4626 Interface
 * @dev Subset of OpenZeppelin's IERC4626 that is sufficient for Distribution contract.
 */
interface IERC4626 is IERC20 {
    function deposit(uint256 assets, address receiver, uint16 referral) external returns (uint256 shares);

    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256 shares);

    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);

    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    function previewRedeem(uint256 shares) external view returns (uint256 assets);

    function previewWithdraw(uint256 assets) external view returns (uint256 shares);
}
