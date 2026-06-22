// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {RebalanceAssetsPerShare, StoredRebalanceAssetsPerShare} from "../types/RebalanceTypes.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {MathRayLib} from "bundler3/src/libraries/MathRayLib.sol";

/**
 * @title MorphoVault
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @notice A library for interacting with ERC-4626 vaults, specifically for depositing and withdrawing assets.
 * @dev This library provides internal functions to handle deposits and withdrawals from ERC-4626 compliant vaults,
 * including slippage protection based on share price.
 */
library MorphoVaultLib {
    using MathRayLib for uint256;

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /// @notice Thrown when the leverage is less than or equal to 1x.
    error InvalidLeverage();

    /// @notice Thrown when the slippage is exceeded.
    error SlippageExceeded();

    /*//////////////////////////////////////////////////////////////
                                FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Given a leverage and an amount, returns borrow amount needed to satisfy the LTV.
    /// @dev LTV is defined as 1 - (1 / leverage)
    /// @param leverage The leverage to use - 1e18 = 1x leverage
    /// @param amount The amount to borrow.
    /// @return The amount to borrow.
    function _borrowAmount(uint256 leverage, uint256 amount) internal pure returns (uint256) {
        require(leverage > 1e18, InvalidLeverage());
        // Calculate LTV: 1 - (1 / leverage) = (leverage - 1e18) / leverage
        // Borrow amount = total_position * LTV
        return (amount * (leverage - 1e18)) / leverage;
    }

    /// @notice Given a leverage and a total position, returns the user amount needed to complete the flashloan.
    /// @dev This is the opposite of _borrowAmount. User amount = totalPosition / leverage
    /// @param leverage The leverage to use - 1e18 = 1x leverage
    /// @param totalPosition The total position size after leverage.
    /// @return The amount the user needs to provide.
    function _userAmount(uint256 leverage, uint256 totalPosition) internal pure returns (uint256) {
        require(leverage > 1e18, InvalidLeverage());
        return (totalPosition * 1e18) / leverage;
    }

    /**
     * @notice Unpacks the stored rebalance assets per share from the extra data
     * @param extraData The extra data containing the stored rebalance assets per share
     * @return rebalanceAssetsPerShare The rebalance assets per share
     * @return remainingExtraData The remaining extra data
     */
    function _unpackPriceData(bytes memory extraData)
        internal
        pure
        returns (RebalanceAssetsPerShare memory rebalanceAssetsPerShare, bytes memory remainingExtraData)
    {
        (StoredRebalanceAssetsPerShare memory storedRebalanceAssetsPerShare, bytes memory _remainingExtraData) =
            abi.decode(extraData, (StoredRebalanceAssetsPerShare, bytes));

        rebalanceAssetsPerShare = RebalanceAssetsPerShare({
            vaultDepositAssetsPerShare: storedRebalanceAssetsPerShare.vaultDepositAssetsPerShare,
            vaultWithdrawAssetsPerShare: storedRebalanceAssetsPerShare.vaultWithdrawAssetsPerShare,
            morphoBorrowAssetsPerShare: storedRebalanceAssetsPerShare.morphoBorrowAssetsPerShare,
            morphoRepayAssetsPerShare: storedRebalanceAssetsPerShare.morphoRepayAssetsPerShare,
            wrappedCollateralAssetsPerShare: storedRebalanceAssetsPerShare.wrappedCollateralAssetsPerShare
        });
        remainingExtraData = _remainingExtraData;
    }

    /**
     * @notice Unpacks the true withdraw collateral token from the extra data
     * @param extraData The extra data to unpack
     * @return trueWithdrawCollateralToken The true withdraw collateral token
     * @return remainingData The remaining data
     */
    function _unpackSeedingDecreaseData(bytes memory extraData)
        internal
        pure
        returns (IERC20 trueWithdrawCollateralToken, bytes memory remainingData)
    {
        (trueWithdrawCollateralToken, remainingData) = abi.decode(extraData, (IERC20, bytes));
    }

    /**
     * @notice Redeems shares from a vault
     * @param vault The vault to redeem shares from
     * @param shares The number of shares to redeem
     * @param assetPerShare The asset per share of the vault
     * @dev If shares is 0, the function does nothing
     * @custom:link https://github.com/morpho-org/bundler3/blob/e6fdcbcd2a59fe5fe9cbd9e0cf7d45f5d2aa3f49/src/adapters/GeneralAdapter1.sol#L126-L139
     */
    function _redeemShares(IERC4626 vault, uint256 shares, uint256 assetPerShare) internal {
        shares = shares == type(uint256).max ? vault.balanceOf(address(this)) : shares;
        if (shares == 0) return;
        uint256 assets = vault.redeem(shares, address(this), address(this));
        require(assets.rDivDown(shares) >= assetPerShare, SlippageExceeded());
    }

    /**
     * @notice Deposits assets into a vault
     * @param vault The vault to deposit assets into
     * @param assets The number of assets to deposit
     * @param assetPerShare The asset per share of the vault
     * @dev If assets is 0, the function does nothing
     * @custom:link https://github.com/morpho-org/bundler3/blob/e6fdcbcd2a59fe5fe9cbd9e0cf7d45f5d2aa3f49/src/adapters/GeneralAdapter1.sol#L76-L94
     */
    function _depositAssets(IERC4626 vault, uint256 assets, uint256 assetPerShare) internal {
        IERC20 underlying = IERC20(vault.asset());
        assets = assets == type(uint256).max ? underlying.balanceOf(address(this)) : assets;
        if (assets == 0) return;
        SafeERC20.forceApprove(underlying, address(vault), type(uint256).max);
        uint256 shares = vault.deposit(assets, address(this));
        SafeERC20.forceApprove(underlying, address(vault), 0);
        require(assets.rDivUp(shares) <= assetPerShare, SlippageExceeded());
    }

    /**
     * @notice Withdraws assets from a vault
     * @param vault The vault to withdraw assets from
     * @param assets The number of assets to withdraw
     * @param assetPerShare The asset per share of the vault
     * @dev If assets is 0, the function does nothing and if assets is type(uint256).max, the function
     *      redeems the entire balance of the vault (through _redeemShares)
     * @custom:link https://github.com/morpho-org/bundler3/blob/e6fdcbcd2a59fe5fe9cbd9e0cf7d45f5d2aa3f49/src/adapters/GeneralAdapter1.sol#L105-L115
     */
    function _withdrawAssets(IERC4626 vault, uint256 assets, uint256 assetPerShare) internal {
        if (assets == type(uint256).max) {
            _redeemShares(vault, type(uint256).max, assetPerShare);
        } else if (assets > 0) {
            uint256 shares = vault.withdraw(assets, address(this), address(this));
            require(assets.rDivDown(shares) >= assetPerShare, SlippageExceeded());
        }
    }
}
