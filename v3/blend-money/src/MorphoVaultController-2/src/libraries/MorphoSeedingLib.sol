// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {RebalanceData, RebalanceAssetsPerShare} from "../types/RebalanceTypes.sol";
import {MarketConfig} from "../types/StrategyTypes.sol";
import {IMarketAdapterController} from "../interfaces/controllers/IMarketAdapterController.sol";
import {MorphoVaultLib} from "./MorphoVaultLib.sol";

/**
 * @title MorphoSeedingLib
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @notice Library for seeding Morpho vaults
 * @dev This library is used to seed Morpho vaults with collateral
 */
library MorphoSeedingLib {
    using SafeERC20 for IERC20;

    /// @notice Thrown when invalid amount is provided for decrease operation
    error InvalidAmount();

    /**
     * @notice Increases allocation in a market by withdrawing from vault, swapping to collateral, and supplying
     * @param vault The vault to operate on
     * @param marketConfig The market configuration to operate in
     * @param rebalanceData The rebalance data for the operation
     * @return amountRebalanced The amount rebalanced in the vault token
     * @dev Simpler than the main controller - no flash loans, no borrowing, just supply collateral
     */
    function _increaseSeedingAllocation(
        address vault,
        MarketConfig memory marketConfig,
        RebalanceData memory rebalanceData
    ) internal returns (uint256 amountRebalanced) {
        (RebalanceAssetsPerShare memory assetsPerShare, bytes memory extraData) =
            MorphoVaultLib._unpackPriceData(rebalanceData.extraData);

        address safeAddress = address(this);
        uint256 amount = rebalanceData.amount;
        IERC20 vaultToken = IERC20(IERC4626(vault).asset());

        // In this context collateral token is the marketId. Because it's a bytes32, we need to
        // convert it to an address
        IERC4626 collateralToken = IERC4626(address(uint160(uint256(marketConfig.marketId))));

        // If the amount is greater than the balance of the safe, withdraw from the vault and deposit into
        // the safe. NOTE: amount is delineated in the vault token, not the collateral token.
        uint256 amountInSafe = vaultToken.balanceOf(safeAddress);
        if (amountInSafe < amount) {
            MorphoVaultLib._withdrawAssets(
                IERC4626(vault), amount - amountInSafe, assetsPerShare.vaultWithdrawAssetsPerShare
            );
            amountInSafe = amount;
        }

        // Send all the vault tokens to the underlying market adapter
        vaultToken.safeTransfer(address(marketConfig.adapter), amount);

        // Perform the swap and bring the funds back to the safe. Because the collateral token is an ERC4626,
        // we need to reference the underlying asset when completing the swap because we will wind
        // up depositing the collateral tokens into the collateral vault anyway.
        IMarketAdapterController(address(marketConfig.adapter)).swapToCollateral(
            vaultToken, IERC20(collateralToken.asset()), address(this), marketConfig.data, extraData
        );

        // The collateral token is an ERC4626, so we need to now deposit all collateral
        // tokens into the collateral vault
        MorphoVaultLib._depositAssets(
            collateralToken, type(uint256).max, assetsPerShare.wrappedCollateralAssetsPerShare
        );

        // Return the amount rebalanced in the vault token
        amountRebalanced = amountInSafe;
    }

    /**
     * @notice Decreases allocation in a market by withdrawing collateral, swapping back to vault token, and depositing
     * @param vault The vault to operate on
     * @param marketConfig The market configuration to operate in
     * @param rebalanceData The rebalance data for the operation
     * @return amountRebalanced The amount rebalanced in the collateral token
     * @dev Simpler than the main controller - no flash loans, no debt repayment, just withdraw and deposit
     */
    function _decreaseSeedingAllocation(
        address vault,
        MarketConfig memory marketConfig,
        RebalanceData memory rebalanceData
    ) internal returns (uint256 amountRebalanced) {
        (RebalanceAssetsPerShare memory assetsPerShare, bytes memory extraData) =
            MorphoVaultLib._unpackPriceData(rebalanceData.extraData);
        (IERC20 trueWithdrawCollateralToken, bytes memory remainingExtraData) =
            MorphoVaultLib._unpackSeedingDecreaseData(extraData);

        address safeAddress = address(this);
        uint256 amount = rebalanceData.amount;
        IERC20 vaultToken = IERC20(IERC4626(vault).asset());

        uint256 collateralTokenBalance;
        IERC20 collateralTokenToSwap;
        if (address(trueWithdrawCollateralToken) == address(0)) {
            // In this context collateral token is the marketId. Because it's a bytes32, we need to
            // convert it to an address
            IERC4626 collateralToken = IERC4626(address(uint160(uint256(marketConfig.marketId))));
            collateralTokenBalance = collateralToken.balanceOf(safeAddress);

            // Redeem the collateral tokens from the collateral vault
            MorphoVaultLib._redeemShares(collateralToken, amount, assetsPerShare.wrappedCollateralAssetsPerShare);

            // Get the underlying assets and send them to the adapter
            IERC20 collateralTokenUnderlying = IERC20(collateralToken.asset());
            uint256 collateralUnderlyingBalance = collateralTokenUnderlying.balanceOf(safeAddress);

            // Send all underlying collateral tokens to the underlying market adapter
            collateralTokenUnderlying.safeTransfer(address(marketConfig.adapter), collateralUnderlyingBalance);

            collateralTokenBalance = collateralUnderlyingBalance;
            collateralTokenToSwap = collateralTokenUnderlying;
        }
        /**
         * @notice Handle the case where we have a true collateral token that requires special handling
         * @dev This branch is specifically for tokens with cooldown mechanisms (like staked tokens) that
         * cannot be atomically unstaked. In this case, a prior vault action would have already:
         * 1. Withdrawn from the idle vault
         * 2. Unstaked the tokens out-of-band due to cooldown requirements
         * We bypass the normal vault redeem process since we already have the raw tokens, and instead
         * just transfer the entire balance to the adapter. This is why amount must be uint256.max -
         * we're not doing a true withdraw calculation, we're just taking whatever balance exists after
         * the previous out-of-band unstaking operation.
         */
        else {
            require(amount == type(uint256).max, InvalidAmount());

            collateralTokenBalance = trueWithdrawCollateralToken.balanceOf(safeAddress);
            // Bypass vault redeem: a prior vault action withdrew and unstaked out-of-band
            // (e.g., due to a cooldown). Treat the entire true collateral token balance as
            // the withdraw amount (amount must be uint256.max) and transfer it to the adapter.
            trueWithdrawCollateralToken.safeTransfer(address(marketConfig.adapter), collateralTokenBalance);
            collateralTokenToSwap = trueWithdrawCollateralToken;
        }

        // Perform the swap and bring the funds back to the safe. Because the collateral token is an ERC4626,
        // we need to reference the underlying asset when completing the swap because we will wind
        // up depositing the collateral tokens into the collateral vault anyway.
        IMarketAdapterController(address(marketConfig.adapter)).swapToLoanToken(
            vaultToken, collateralTokenToSwap, safeAddress, marketConfig.data, remainingExtraData
        );

        // Deposit received vault tokens back into the vault
        MorphoVaultLib._depositAssets(IERC4626(vault), type(uint256).max, assetsPerShare.vaultDepositAssetsPerShare);

        // Return the amount rebalanced in the collateral token (if amount was uint256.max return collateralTokenBalance)
        amountRebalanced = amount == type(uint256).max ? collateralTokenBalance : amount;
    }
}
