// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../Interfaces/IMetaMorpho.sol";
import "../Interfaces/IVaultRegistry.sol";

/**
 * @title DirectDepositLib
 * @dev Library for direct ERC4626 deposit/redeem into Morpho V2 vaults (no bundler needed)
 */
library DirectDepositLib {
    using SafeERC20 for IERC20;

    error InsufficientSharesReceived();
    error InsufficientAssetsReceived();
    error VaultAssetMismatch();
    error VaultNotAvailable();
    error VaultNotRegistered();
    error ZeroShares();

    /**
     * @dev Deposit to V2 vault using direct ERC4626 deposit
     */
    function depositToVault(
        IVaultRegistry registry,
        address vault,
        uint256 amount,
        address vaultAsset
    ) external {
        if (!registry.isVaultAvailableForAsset(vaultAsset, vault)) revert VaultNotAvailable();
        if (registry.vaultToExpectedAsset(vault) != vaultAsset) revert VaultAssetMismatch();
        if (IMetaMorpho(vault).asset() != vaultAsset) revert VaultAssetMismatch();

        uint256 expectedShares = IMetaMorpho(vault).previewDeposit(amount);
        uint256 slippageTolerance = registry.sharePriceSlippageTolerance();
        uint256 minExpectedShares = (expectedShares * (10000 - slippageTolerance)) / 10000;

        IERC20(vaultAsset).forceApprove(vault, amount);

        uint256 sharesReceived = IMetaMorpho(vault).deposit(amount, address(this));

        if (sharesReceived < minExpectedShares) revert InsufficientSharesReceived();

        IERC20(vaultAsset).forceApprove(vault, 0);
    }

    /**
     * @dev Redeem from V2 vault using direct ERC4626 redeem
     */
    function redeemFromVault(
        IVaultRegistry registry,
        address vault,
        uint256 shares
    ) external returns (uint256) {
        if (shares == 0) revert ZeroShares();

        address expectedAsset = registry.vaultToExpectedAsset(vault);
        if (expectedAsset == address(0)) revert VaultNotRegistered();
        if (IMetaMorpho(vault).asset() != expectedAsset) revert VaultAssetMismatch();

        uint256 expectedAssets = IMetaMorpho(vault).previewRedeem(shares);
        uint256 slippageTolerance = registry.sharePriceSlippageTolerance();
        uint256 minAssets = (expectedAssets * (10000 - slippageTolerance)) / 10000;

        uint256 assetsReceived = IMetaMorpho(vault).redeem(shares, address(this), address(this));

        if (assetsReceived < minAssets) revert InsufficientAssetsReceived();

        return assetsReceived;
    }
}
