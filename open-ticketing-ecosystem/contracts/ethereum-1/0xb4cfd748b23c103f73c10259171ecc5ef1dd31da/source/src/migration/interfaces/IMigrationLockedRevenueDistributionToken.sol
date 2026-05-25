// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import {IERC20} from "erc20/interfaces/IERC20.sol";

interface IMigrationLockedRevenueDistributionToken is IERC20 {
    function deposit(uint256 assets_, address receiver_) external returns (uint256 shares_);

    function redeem(uint256 shares_, address receiver_, address owner_) external returns (uint256 assets_);

    function previewDeposit(uint256 assets_) external view returns (uint256 shares_);

    function previewRedeem(uint256 shares_, address owner_) external view returns (uint256 assets_);

    function totalAssets() external view returns (uint256 totalManagedAssets_);
}
