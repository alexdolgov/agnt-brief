// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title IBridgeableVault
 * @author Hourglass
 * @notice Unified interface for all Hourglass vaults to enable bridging operations
 * @dev This interface provides a common redemption method that works across all vault types
 * @dev Extends IERC20 to ensure transferFrom and balanceOf are available
 */
interface IBridgeableVault is IERC20 {
    /**
     * @notice Redeems vault shares for underlying assets for bridge operations
     * @param shares Amount of vault shares to redeem
     * @param receiver Address to receive the redeemed assets
     * @param owner Address that owns the shares being redeemed
     * @return assets Amount of underlying assets returned
     * @dev This function provides a unified interface for both ERC4626 and KYC vaults
     * @dev For ERC4626 vaults, this delegates to the standard redeem function
     * @dev For KYC vaults, this wraps the redeemKyc function
     */
    function redeemBridge(uint256 shares, address receiver, address owner) external returns (uint256 assets);

    /**
     * @notice Preview the amount of assets that would be received for bridge redemption
     * @param shares Amount of shares to preview redemption for
     * @return assets Amount of assets that would be received
     */
    function previewRedeemBridge(uint256 shares) external view returns (uint256 assets);
}
