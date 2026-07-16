// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IDenManager} from "src/interfaces/core/IDenManager.sol";
import {IBorrowerOperations} from "src/interfaces/core/IBorrowerOperations.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";
import {IBaseManagedLeveragedVault} from "src/interfaces/core/mlv/base/IBaseManagedLeveragedVault.sol";
import {IAsset} from "src/interfaces/utils/tokens/IAsset.sol";
import {ITargetICRHook} from "src/interfaces/utils/integrations/ITargetICRHook.sol";
import {IFeeHook} from "src/interfaces/utils/integrations/IFeeHook.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";
import {PriceLib} from "src/libraries/PriceLib.sol";

library BeraborrowGettersLib {
    using Math for uint256;
    using PriceLib for uint256;

    uint256 constant BP = 1e4;

    error TotalAssetsDeviation(uint256 prevTotalAssets, uint256 newTotalAssets, uint256 maxDelta);
    error VaultSlippage(uint256 expected, uint256 actual);

    struct Context {
        address asset;
        address vault;
        IMetaBeraborrowCore metaBeraborrowCore;
        IDenManager denManager;
        IBorrowerOperations borrowerOperations;
        address debtToken;
        ITargetICRHook targetICRHook;
        IFeeHook feeHook;
        uint16 maxDeviationTotalAssetsInBP;
        uint16 maxSlippageSwapInBP;
    }

    function getCollateralBalance(Context memory $) internal view returns (uint256) {
        IDenManager _denManager = IDenManager($.denManager);

        (uint256 collVaultShares,) = _denManager.getDenCollAndDebt(address($.vault));
        collVaultShares += _denManager.surplusBalances(address($.vault));

        return collVaultShares;
    }

    function getDebtBalance(Context memory $) internal view returns (uint256) {
        (, uint256 debt) = IDenManager($.denManager).getDenCollAndDebt(address($.vault));
        return debt;
    }

    function getCurrentPositionICR(Context memory $) internal view returns (uint256) {
        IDenManager _denManager = IDenManager($.denManager);

        uint256 collPrice = _denManager.fetchPrice();

        return _denManager.getCurrentICR(address($.vault), collPrice);
    }

    function getPrice(Context memory $, address token) internal view returns (uint256 scaledPriceInUsdWad) {
        return IPriceFeed(IMetaBeraborrowCore($.metaBeraborrowCore).priceFeed()).fetchPrice(token);
    }

    function checkMaxOperationCost(Context memory $, address inputToken, uint256 amountToSwap, uint256 prevTotalAssets) internal view {
        uint256 currTotalAssets = IBaseManagedLeveragedVault($.vault).totalAssets();

        uint256 maxDelta = Math.min(prevTotalAssets, currTotalAssets).mulDiv($.maxDeviationTotalAssetsInBP, BP);
        if (currTotalAssets < prevTotalAssets - maxDelta) revert TotalAssetsDeviation(prevTotalAssets, currTotalAssets, maxDelta);

        int256 totalAssetsDelta = int256(prevTotalAssets) - int256(currTotalAssets);
        uint256 assetPrice = getPrice($, $.asset);
        uint256 debtFeeInAssets;

        if (inputToken == $.debtToken) {
            // Convert from NECT to assets
            IBorrowerOperations borrowerOps = IBorrowerOperations($.borrowerOperations);
            bool isRecoveryMode = borrowerOps.checkRecoveryMode(borrowerOps.getTCR());
            uint256 debtFee = isRecoveryMode ? 0 : IDenManager($.denManager).getBorrowingFeeWithDecay(amountToSwap);
            uint256 nectPrice = getPrice($, $.debtToken);

            debtFeeInAssets = debtFee.mulDiv(nectPrice, assetPrice);
            amountToSwap = amountToSwap.mulDiv(nectPrice, assetPrice);
        } else {
            uint256 exposurePrice = getPrice($, inputToken);
            // Convert from exposure to assets
            amountToSwap = amountToSwap.mulDiv(exposurePrice, assetPrice);
        }

        int256 totalAssetsDeltaFromSwap = totalAssetsDelta - int256(debtFeeInAssets);

        // Early return if positive swap slippage
        if (totalAssetsDeltaFromSwap <= 0) return;

        uint256 swapDelta = uint256(totalAssetsDeltaFromSwap);
        uint256 maxSwapDelta = amountToSwap.mulDiv($.maxSlippageSwapInBP, BP);
        if (swapDelta > maxSwapDelta) revert VaultSlippage(swapDelta, maxSwapDelta);
    }
}