// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

interface IVault {
    function pricePerShare() external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function totalAssets() external view returns (uint256);
}

/**
 * @title ShareHelper
 * @notice Utility contract for calculating share conversions for ERC4626-like vaults
 */
contract ShareHelper {
    /**
     * @notice Converts an amount of underlying tokens to vault shares
     * @param vault The address of the vault
     * @param amount The amount of underlying tokens
     * @param roundUp Whether to round up or down
     * @return shares The equivalent amount of shares
     */
    function amountToShares(address vault, uint256 amount, bool roundUp) external view returns (uint256 shares) {
        IVault vaultContract = IVault(vault);
        uint256 supply = vaultContract.totalSupply();
        
        if (supply == 0) {
            return amount; // 1:1 when vault is empty
        }
        
        uint256 assets = vaultContract.totalAssets();
        if (assets == 0) {
            return 0;
        }
        
        if (roundUp) {
            // Manual ceiling division
            shares = (amount * supply + assets - 1) / assets;
        } else {
            shares = (amount * supply) / assets;
        }
        
        return shares;
    }

    /**
     * @notice Converts an amount of vault shares to underlying tokens
     * @param vault The address of the vault
     * @param shares The amount of vault shares
     * @param roundUp Whether to round up or down
     * @return amount The equivalent amount of underlying tokens
     */
    function sharesToAmount(address vault, uint256 shares, bool roundUp) external view returns (uint256 amount) {
        IVault vaultContract = IVault(vault);
        uint256 supply = vaultContract.totalSupply();
        
        if (supply == 0) {
            return shares; // 1:1 when vault is empty
        }
        
        uint256 assets = vaultContract.totalAssets();
        
        if (roundUp) {
            // Manual ceiling division
            amount = (shares * assets + supply - 1) / supply;
        } else {
            amount = (shares * assets) / supply;
        }
        
        return amount;
    }
}