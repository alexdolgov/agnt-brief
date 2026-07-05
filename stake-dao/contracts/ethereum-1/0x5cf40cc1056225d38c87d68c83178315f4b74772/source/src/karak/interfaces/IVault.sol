// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IVaultSupervisor} from "./IVaultSupervisor.sol";

interface IVault is IERC4626 {
    enum AssetType {
        NONE,
        ETH,
        STABLE,
        BTC,
        OTHER
    }

    function deposit(uint256 assets, address depositor) external returns (uint256);

    function redeem(uint256 shares, address to, address owner) external returns (uint256 assets);

    function assetLimit() external view returns (uint256);

    function owner() external view returns (address);

    function totalAssets() external view returns (uint256);

    function decimals() external view returns (uint8);

    function assetType() external view returns (AssetType);
}
