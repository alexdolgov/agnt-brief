// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {HubSpokeStructs} from "../../../src/contracts/HubSpokeStructs.sol";
import {InterestLogic} from "./InterestLogic.sol";
import {IAssetRegistry} from "../../interfaces/IAssetRegistry.sol";
import {ILiquidationCalculator} from "../../interfaces/ILiquidationCalculator.sol";
import {TokenBridgeUtilities} from "../../../src/contracts/wormhole/TokenBridgeUtilities.sol";

library ValidationLogic {
    using InterestLogic for HubSpokeStructs.HubState;

    error ArrayLengthsDoNotMatch();
    error DepositLimitExceeded();
    error DuplicateAddresses();
    error GlobalInsufficientAssets();
    error OnlyMaxLiquidationBonus();
    error OnlyMaxLiquidationPortion();
    error OverLiquidated();
    error UnregisteredAsset();
    error VaultCantBeZero();
    error VaultInsufficientAssets();
    error VaultInsufficientBorrows();
    error VaultNotUnderwater();
    error VaultUndercollateralized();

    struct LiquidationParametersInternalTracker {
        uint256 trueNotionalRepaid;
        uint256 colatNotionalRepaid;
        uint256 colatNotionalReceived;
        uint256[] notionalReceivedArray;
        uint256[] maxLiquidationBonusArray;
    }


    function checkVaultHasAssets(HubSpokeStructs.HubState storage _state, address _vaultOwner, address _asset, uint256 _amount)
        public
        view
    {
        HubSpokeStructs.DenormalizedVaultAmount memory amountsWithInterest = _state.getVaultAmounts(_vaultOwner, _asset);
        if (amountsWithInterest.deposited < _amount) {
            revert VaultInsufficientAssets();
        }
    }

    /**
     * @dev Checks if the protocol globally has an amount of asset greater than or equal to withdrawn or borrowed amount
     * This check protects protocol reserves, because it requires:
     * 1. denormalizedDeposited >= denormalizedBorrowed + amount
     * 2. baseDeposited + depositInterest >= baseBorrowed + borrowInterest + amount
     * 3. baseDeposited + depositInterest - baseBorrowed - borrowInterest >= amount
     * 4. baseDeposited - baseBorrowed + depositInterest - borrowInterest >= amount
     * 5. baseDeposited - baseBorrowed + depositInterest - borrowInterest >= amount
     * 6. baseDeposited - baseBorrowed - (borrowInterest - depositInterest) >= amount
     * 7. baseDeposited - baseBorrowed - reserve >= amount
     *
     * @param _asset - the address of the relevant asset
     * @param _amount - the denormalized amount of asset that is to be withdrawn or borrowed
     * @param _borrowLimit - The borrow limit of the asset. Pass type(uint256).max for no limit
     */
    function checkProtocolGloballyHasAssets(
        HubSpokeStructs.HubState storage _state,
        address _asset,
        uint256 _amount,
        uint256 _borrowLimit
    ) public view {
        HubSpokeStructs.DenormalizedVaultAmount memory globalAmounts = _state.getGlobalAmounts(_asset);        bool globalHasAssets = globalAmounts.deposited >= globalAmounts.borrowed + _amount;
        if (_borrowLimit < type(uint256).max) {
            globalHasAssets = _borrowLimit >= globalAmounts.borrowed + _amount;
        }

        if (!globalHasAssets) {
            revert GlobalInsufficientAssets();
        }
    }

    /**
     * @dev Check if a deposit of a certain amount of a certain asset is allowed
     *
     * @param _assetAddress - The address of the relevant asset
     * @param _assetAmount - The amount of the relevant asset
     * Only returns if this deposit does not exceed the deposit limit for the asset
     */
    function checkAllowedToDeposit(
        HubSpokeStructs.HubState storage _state,
        address _assetAddress,
        uint256 _assetAmount
    )
        public
        view
    {
        IAssetRegistry.AssetInfo memory assetInfo = _state.assetRegistry.getAssetInfo(_assetAddress);
        if (assetInfo.supplyLimit < type(uint256).max) {
            HubSpokeStructs.DenormalizedVaultAmount memory globalAmounts = _state.getGlobalAmounts(_assetAddress);

            if (globalAmounts.deposited + _assetAmount > assetInfo.supplyLimit) {
                revert DepositLimitExceeded();
            }
        }
    }

    /**
     * @dev Check if vaultOwner is allowed to withdraw assetAmount of assetAddress from their vault
     *
     * @param _vaultOwner - The address of the owner of the vault
     * @param _assetAddress - The address of the relevant asset
     * @param _assetAmount - The amount of the relevant asset
     * Only returns if this withdrawal keeps the vault at a nonnegative notional value (worth >= $0 according to Pyth prices)
     * (where the deposit values are divided by the deposit collateralization ratio and the borrow values are multiplied by the borrow collateralization ratio)
     * and also if there is enough asset in the vault to complete the withdrawal
     * and also if there is enough asset in the total reserve of the protocol to complete the withdrawal
     */
    function checkAllowedToWithdraw(
        HubSpokeStructs.HubState storage _state,
        address _vaultOwner,
        address _assetAddress,
        uint256 _assetAmount
    )
        public
        view
    {
        checkVaultHasAssets(_state, _vaultOwner, _assetAddress, _assetAmount);
        // TODO: refactor type(uint256).max code smell
        // the root of the issue is that this function is doing too much
        // it should be split into two functions
        // - one that checks if there are assets that can be withdrawn
        // - one that checks if the borrow amount would not cross the borrow limit
        checkProtocolGloballyHasAssets(_state, _assetAddress, _assetAmount, type(uint256).max);

        HubSpokeStructs.NotionalVaultAmount memory effectiveValue = _state.priceUtilities.calculateEffectiveNotionals(
            _assetAddress,
            HubSpokeStructs.DenormalizedVaultAmount(_assetAmount, 0)
        );
        HubSpokeStructs.NotionalVaultAmount memory notionals = _state.priceUtilities.getVaultEffectiveNotionals(_vaultOwner, true);

        bool overCollat = notionals.deposited >= notionals.borrowed + effectiveValue.deposited;

        if (!overCollat) {
            revert VaultUndercollateralized();
        }
    }

    /**
     * @dev Check if vaultOwner is allowed to borrow assetAmount of assetAddress from their vault
     *
     * @param _vaultOwner - The address of the owner of the vault
     * @param _assetAddress - The address of the relevant asset
     * @param _assetAmount - The amount of the relevant asset
     * Only returns (otherwise reverts) if this borrow keeps the vault at a nonnegative notional value (worth >= $0 according to Pyth prices)
     * (where the deposit values are divided by the deposit collateralization ratio and the borrow values are multiplied by the borrow collateralization ratio)
     * and also if there is enough asset in the total reserve of the protocol to complete the borrow
     */
    function checkAllowedToBorrow(
        HubSpokeStructs.HubState storage _state,
        address _vaultOwner,
        address _assetAddress,
        uint256 _assetAmount
    )
        public
        view
    {
        IAssetRegistry.AssetInfo memory assetInfo = _state.assetRegistry.getAssetInfo(_assetAddress);

        HubSpokeStructs.NotionalVaultAmount memory notionals = _state.priceUtilities.getVaultEffectiveNotionals(_vaultOwner, true);

        checkProtocolGloballyHasAssets(_state, _assetAddress, _assetAmount, assetInfo.borrowLimit);


        HubSpokeStructs.NotionalVaultAmount memory effectiveValue = _state.priceUtilities.calculateEffectiveNotionals(
            _assetAddress,
            HubSpokeStructs.DenormalizedVaultAmount(0, _assetAmount)
        );
        bool overCollat = notionals.deposited >= notionals.borrowed + effectiveValue.borrowed;

        if (!overCollat) {
            revert VaultUndercollateralized();
        }
    }

    /**
     * @dev Check if vaultOwner is allowed to repay assetAmount of assetAddress to their vault;
     * they must have outstanding borrows of at least assetAmount for assetAddress to enable repayment
     * @param _vaultOwner - The address of the owner of the vault
     * @param _assetAddress - The address of the relevant asset
     * @param _assetAmount - The amount of the relevant asset
     */
    function checkAllowedToRepay(
        HubSpokeStructs.HubState storage _state,
        address _vaultOwner,
        address _assetAddress,
        uint256 _assetAmount
    )
        public
        view
    {
        HubSpokeStructs.DenormalizedVaultAmount memory vaultAmount = _state.getVaultAmounts(_vaultOwner, _assetAddress);
        IAssetRegistry.AssetInfo memory assetInfo = _state.assetRegistry.getAssetInfo(_assetAddress);

        uint256 allowedRepay = TokenBridgeUtilities.trimDust(vaultAmount.borrowed, assetInfo.decimals);
        if (assetInfo.decimals > TokenBridgeUtilities.MAX_DECIMALS) {
            // if the asset has more than 8 decimals, we allow for slight overpayment to clear all debt
            allowedRepay += 10 ** (assetInfo.decimals - TokenBridgeUtilities.MAX_DECIMALS);
        }

        if (allowedRepay < _assetAmount) {
            revert VaultInsufficientBorrows();
        }
    }

    /**
     * @notice Checks if the inputs for a liquidation are valid.
     * Specifically, checks if each address is a registered asset and both address arrays do not contain duplicate
     * addresses. All the checks in this function should throw an error.
     *
     * @param _input - The liquidation input, which includes the vault and the assets involved in the liquidation.
     */
    function checkLiquidationInputsValid(
        HubSpokeStructs.HubState storage _state,
        ILiquidationCalculator.LiquidationInput calldata _input
    ) public view {
        if (_input.vault == address(0)) {
            revert VaultCantBeZero();
        }

        for (uint256 i = 0; i < _input.assets.length;) {
            address addr = _input.assets[i].assetAddress;
            if (!_state.assetRegistry.getAssetInfo(addr).exists) {
                revert UnregisteredAsset();
            }

            for (uint256 j = 0; j < i;) {
                if (addr == _input.assets[j].assetAddress) {
                    revert DuplicateAddresses();
                }

                unchecked {
                    ++j;
                }
            }

            unchecked {
                i++;
            }
        }
    }

    function checkRepaidAsset(
        HubSpokeStructs.HubState storage _state,
        address _vault,
        ILiquidationCalculator.DenormalizedLiquidationAsset memory _asset
    ) public view returns (uint256 trueValue, uint256 notionalValue) {
        checkAllowedToRepay(_state, _vault, _asset.assetAddress, _asset.repaidAmount);
        trueValue = _state.priceUtilities.calculateNotionals(_asset.assetAddress, HubSpokeStructs.DenormalizedVaultAmount(0, _asset.repaidAmount)).borrowed;
        notionalValue = _state.priceUtilities.applyCollateralizationRatios(_asset.assetAddress, HubSpokeStructs.NotionalVaultAmount(0, trueValue)).borrowed;
    }

    function checkMaxLiquidationPortion(
        uint256 _trueValue,
        uint256 _maxLiquidationPortion,
        uint256 _maxLiquidationPortionPrecision,
        uint256 _borrowedTrueValue
    ) public pure {
        if (_trueValue > (_maxLiquidationPortion * _borrowedTrueValue) / _maxLiquidationPortionPrecision) {
            revert OnlyMaxLiquidationPortion();
        }
    }

    function checkReceivedAsset(
        HubSpokeStructs.HubState storage _state,
        address _vault,
        ILiquidationCalculator.DenormalizedLiquidationAsset memory _asset
    ) public view returns (uint256 trueValue, uint256 notionalValue) {
        checkVaultHasAssets(_state, _vault, _asset.assetAddress, _asset.receivedAmount);
        if (!_asset.depositTakeover) {
            // checking if the amount of asset in the protocol post repayment is greater than the value the liquidator wants to receive
            // the formula is (deposits - borrows) + repayment >= received
            // it's rearranged to avoid underflows
            // this is a variation of HubChecks::checkProtocolGloballyHasAssets that takes into account the amount being repaid
            HubSpokeStructs.DenormalizedVaultAmount memory globalAmounts = _state.getGlobalAmounts(_asset.assetAddress);
            if (globalAmounts.deposited + _asset.repaidAmount < _asset.receivedAmount + globalAmounts.borrowed) {
                revert GlobalInsufficientAssets();
            }
        }

        trueValue = _state.priceUtilities.calculateNotionals(_asset.assetAddress, HubSpokeStructs.DenormalizedVaultAmount(_asset.receivedAmount, 0)).deposited;
        notionalValue = _state.priceUtilities.applyCollateralizationRatios(_asset.assetAddress, HubSpokeStructs.NotionalVaultAmount(trueValue, 0)).deposited;
    }

    /**
     * @notice Checks if a liquidation is allowed.
     *
     * This function checks if the vault is underwater (borrowed value > deposited value). If it is not, the function reverts.
     * It then calculates the notional repaid and received amounts for each asset in the liquidation input.
     * Finally, it checks if the liquidation portion is valid.
     *
     * @param _state - The state of the hub
     * @param _input - The liquidation input, which includes the vault and the assets involved in the liquidation. Input amounts should be normalized
     */
    function checkAllowedToLiquidate(
        HubSpokeStructs.HubState storage _state,
        ILiquidationCalculator.LiquidationInput calldata _input
    ) public view {
        HubSpokeStructs.NotionalVaultAmount memory notionals = _state.priceUtilities.getVaultEffectiveNotionals(_input.vault, true);
        HubSpokeStructs.NotionalVaultAmount memory notionalsWithoutRatios = _state.priceUtilities.getVaultEffectiveNotionals(_input.vault, false);

        if (notionals.deposited >= notionals.borrowed) revert VaultNotUnderwater();

        LiquidationParametersInternalTracker memory params;
        params.notionalReceivedArray = new uint256[](_input.assets.length);
        params.maxLiquidationBonusArray = new uint256[](_input.assets.length);
        uint256 maxLiquidationPortionPrecision = _state.assetRegistry.getMaxLiquidationPortionPrecision();
        for (uint256 i = 0; i < _input.assets.length;) {
            IAssetRegistry.AssetInfo memory info = _state.assetRegistry.getAssetInfo(_input.assets[i].assetAddress);
            if (_input.assets[i].repaidAmount > 0) {
                (uint256 _trueNotionalRepaid, uint256 _colatNotionalRepaid) = checkRepaidAsset(
                    _state,
                    _input.vault,
                    _input.assets[i]
                );
                checkMaxLiquidationPortion(_trueNotionalRepaid, info.maxLiquidationPortion, maxLiquidationPortionPrecision, notionalsWithoutRatios.borrowed);
                params.trueNotionalRepaid += _trueNotionalRepaid;
                params.colatNotionalRepaid += _colatNotionalRepaid;
            }

            if (_input.assets[i].receivedAmount > 0) {
                (uint256 _trueNotionalReceived, uint256 _colatNotionalReceived) = checkReceivedAsset(_state, _input.vault, _input.assets[i]);
                params.notionalReceivedArray[i] = _trueNotionalReceived;
                params.colatNotionalReceived += _colatNotionalReceived;
                params.maxLiquidationBonusArray[i] = info.maxLiquidationBonus;
            }

            unchecked {
                i++;
            }
        }

        checkLiquidationBonusValidity(_state, params.notionalReceivedArray, params.maxLiquidationBonusArray, params.trueNotionalRepaid);
        (uint256 maxHealthFactor, uint256 maxHealthFactorPrecision) = _state.liquidationCalculator.getMaxHealthFactor();
        if (
            ((notionals.deposited - params.colatNotionalReceived) * maxHealthFactorPrecision)
                / (notionals.borrowed - params.colatNotionalRepaid) > maxHealthFactor
        ) {
            revert OverLiquidated();
        }
    }

    /**
     * @dev Checks the validity of the liquidation bonus params. It then calculates the total limit used for all assets involved in the liquidation.
     * If the notional received for an asset is greater than the limit for that asset, or if the total limit used is greater than 1, it reverts.
     * @param _notionalReceived - An array of the notional amounts received for each asset involved in the liquidation.
     * @param _maxLiquidationBonus - An array of the maximum liquidation bonuses for each asset involved in the liquidation.
     * @param _notionalRepaid - The total notional amount repaid in the liquidation.
     */
    function checkLiquidationBonusValidity(
        HubSpokeStructs.HubState storage _state,
        uint256[] memory _notionalReceived,
        uint256[] memory _maxLiquidationBonus,
        uint256 _notionalRepaid
    ) public view {
        if (_notionalReceived.length != _maxLiquidationBonus.length) revert ArrayLengthsDoNotMatch();

        uint256 totalLimitUsed = 0;
        uint256 precision = _state.assetRegistry.getCollateralizationRatioPrecision();
        for (uint256 i = 0; i < _notionalReceived.length; i++) {
            if (_notionalReceived[i] == 0) {
                continue;
            }
            uint256 limitForThisAsset = _notionalRepaid * _maxLiquidationBonus[i] / precision;
            if (_notionalReceived[i] > limitForThisAsset) revert OnlyMaxLiquidationBonus();

            uint256 limitUsedForThisAsset = precision * _notionalReceived[i] / limitForThisAsset;
            totalLimitUsed += limitUsedForThisAsset;

            if (totalLimitUsed > precision) revert OnlyMaxLiquidationBonus();
        }
    }
}