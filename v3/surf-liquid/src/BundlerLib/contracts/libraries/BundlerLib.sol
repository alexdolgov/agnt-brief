// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../Interfaces/IBundler.sol";
import "../Interfaces/IMetaMorpho.sol";
import "../Interfaces/IERC20Extended.sol";
import "../Interfaces/IVaultRegistry.sol";

/**
 * @title BundlerLib
 * @dev Library for bundler interactions to reduce contract size
 */
library BundlerLib {
    using SafeERC20 for IERC20;

    error InsufficientSharesReceived();
    error VaultAssetMismatch();
    error VaultNotAvailable();
    error VaultNotRegistered();
    error ZeroShares();

    /**
     * @dev Deposit to vault using bundler
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

        address adapterAddr = registry.adapterAddress();
        address bundlerAddr = registry.bundlerAddress();

        uint256 expectedShares = IMetaMorpho(vault).previewDeposit(amount);
        uint256 slippageTolerance = registry.sharePriceSlippageTolerance();
        uint256 minExpectedShares = (expectedShares * (10000 - slippageTolerance)) / 10000;

        IERC20(vaultAsset).forceApprove(adapterAddr, amount);

        uint256 shareDecimals = _getTokenDecimals(vault);
        uint256 shareUnit = 10 ** shareDecimals;
        uint256 currentSharePrice = IMetaMorpho(vault).convertToAssets(shareUnit);
        uint256 maxSharePriceE27 = (currentSharePrice * 1e27 * (10000 + slippageTolerance)) / (shareUnit * 10000);

        Call[] memory calls = new Call[](2);

        calls[0] = Call({
            to: adapterAddr,
            data: abi.encodeWithSelector(
                // Morpho Adapter: transferFrom helper (selector 0xd96ca0b9)
                bytes4(0xd96ca0b9),
                vaultAsset,
                adapterAddr,
                amount
            ),
            value: 0,
            skipRevert: false,
            callbackHash: bytes32(0)
        });

        calls[1] = Call({
            to: adapterAddr,
            data: abi.encodeWithSelector(
                // Morpho Adapter: deposit (selector 0x6ef5eeae)
                bytes4(0x6ef5eeae),
                vault,
                amount,
                maxSharePriceE27,
                address(this)
            ),
            value: 0,
            skipRevert: false,
            callbackHash: bytes32(0)
        });

        uint256 balanceBefore = IERC20(vault).balanceOf(address(this));
        IBundler3(bundlerAddr).multicall(calls);
        uint256 balanceAfter = IERC20(vault).balanceOf(address(this));
        uint256 sharesReceived = balanceAfter - balanceBefore;

        if (sharesReceived < minExpectedShares) revert InsufficientSharesReceived();

        IERC20(vaultAsset).forceApprove(adapterAddr, 0);
    }

    /**
     * @dev Redeem from vault using bundler
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

        address adapterAddr = registry.adapterAddress();
        address bundlerAddr = registry.bundlerAddress();

        uint256 balanceBefore = IERC20(expectedAsset).balanceOf(address(this));

        IERC20(vault).forceApprove(adapterAddr, shares);

        uint256 expectedAssets = IMetaMorpho(vault).previewRedeem(shares);
        uint256 slippageTolerance = registry.sharePriceSlippageTolerance();
        uint256 minAssets = (expectedAssets * (10000 - slippageTolerance)) / 10000;
        uint256 minSharePriceE27 = (minAssets * 1e27) / shares;

        Call[] memory calls = new Call[](2);

        calls[0] = Call({
            to: adapterAddr,
            data: abi.encodeWithSelector(
                // Morpho Adapter: transferFrom helper (selector 0xd96ca0b9)
                bytes4(0xd96ca0b9),
                vault,
                adapterAddr,
                shares
            ),
            value: 0,
            skipRevert: false,
            callbackHash: bytes32(0)
        });

        calls[1] = Call({
            to: adapterAddr,
            data: abi.encodeWithSelector(
                // Morpho Adapter: redeem (selector 0xa7f6e606)
                bytes4(0xa7f6e606),
                vault,
                shares,
                minSharePriceE27,
                address(this),
                adapterAddr
            ),
            value: 0,
            skipRevert: false,
            callbackHash: bytes32(0)
        });

        IBundler3(bundlerAddr).multicall(calls);
        IERC20(vault).forceApprove(adapterAddr, 0);

        uint256 balanceAfter = IERC20(expectedAsset).balanceOf(address(this));
        return balanceAfter - balanceBefore;
    }

    function _getTokenDecimals(address tokenAddress) private view returns (uint256) {
        try IERC20Extended(tokenAddress).decimals() returns (uint8 decimals) {
            if (decimals > 18) return 18;
            return uint256(decimals);
        } catch {
            return 18;
        }
    }
}
