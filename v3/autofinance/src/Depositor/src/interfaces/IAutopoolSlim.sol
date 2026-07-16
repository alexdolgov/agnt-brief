// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { IERC20 } from "./IERC20.sol";

interface IAutopoolSlim is IERC20 {
    function asset() external view returns (address assetTokenAddress);

    function totalAssets() external view returns (uint256);

    function totalAssets(
        uint8 purpose // 0 - Global, 1 - Deposit, 2 - Withdraw
    )
        external
        view
        returns (uint256);

    function convertToShares(uint256 assets) external view returns (uint256 shares);

    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    function deposit(uint256 assets, address receiver) external returns (uint256 shares);

    function convertToShares(
        uint256 assets,
        uint256 totalAssetsForPurpose,
        uint256 supply,
        uint8 rounding // 0 - Down, 1 - Up, 2 - Toward Zero
    )
        external
        view
        returns (uint256 shares);

    function convertToAssets(
        uint256 shares,
        uint256 totalAssetsForPurpose,
        uint256 supply,
        uint8 rounding // 0 - Down, 1 - Up, 2 - Toward Zero
    )
        external
        view
        returns (uint256 assets);

    function oldestDebtReporting() external view returns (uint256);
}
