// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.26;

import {IERC20, SafeERC20} from "lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ManagedLeveragedVaultV1} from "src/core/mlv/base/v1/ManagedLeveragedVault.sol";
import {IBeraborrowManagedLeveragedVault} from "src/interfaces/core/mlv/protocol/v1/IBeraborrowManagedLeveragedVault.sol";
import {IBorrowerOperations} from "src/interfaces/core/IBorrowerOperations.sol";
import {IInfraredCollateralVault} from "src/interfaces/core/vaults/IInfraredCollateralVault.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";
import {IDenManager} from "src/interfaces/core/IDenManager.sol";
import {IDebtToken} from "src/interfaces/core/IDebtToken.sol";
import {ILeverageRouter} from "src/interfaces/periphery/ILeverageRouter.sol";
import {IDeleverageRouter} from "src/interfaces/periphery/IDeleverageRouter.sol";
import {BeraborrowMath} from "src/dependencies/BeraborrowMath.sol";
import {IAsset} from "src/interfaces/utils/tokens/IAsset.sol";
import {BaseManagedLeveragedVault, IBaseManagedLeveragedVault} from "src/core/mlv/base/BaseManagedLeveragedVault.sol";
import {BeraborrowLib} from "src/core/mlv/base/lib/BeraborrowLib.sol";

/**
 * @title BeraborrowManagedLeveragedVault
 * @author Everlong team
 * @notice This contract implements a managed leveraged vault for Beraborrow protocol.
 * @dev `$.collateral` is different that `asset()`, the first is a Beraborrow CollateralVault, the former is also the asset of the CollateralVault.
 */
contract BeraborrowManagedLeveragedVault is ManagedLeveragedVaultV1, IBeraborrowManagedLeveragedVault {
    using BeraborrowLib for BeraborrowLib.Context;
    using SafeERC20 for IERC20;
    using Math for uint256;

    /// @custom:storage-location erc7201:openzeppelin.storage.ManagedLeveragedVault
    struct BeraborrowManagedLeveragedVaultStorage {
        ManagedLeveragedVaultV1Storage v1;
        IBorrowerOperations borrowerOperations;
        IDenManager denManager;
        ILeverageRouter leverageRouter;
        IDeleverageRouter deleverageRouter;
    }

    function _getBeraborrowManagedLeveragedVaultStorage()
        internal
        pure
        returns (BeraborrowManagedLeveragedVaultStorage storage store)
    {
        assembly {
            store.slot := ManagedLeveragedVaultStorageLocation
        }
    }

    function initialize(BaseInitParams calldata baseParams, ProtocolInitParams calldata protocolParams) external initializer {
        _baseInitialize(baseParams);
        _protocolInitialize(protocolParams);
    }

    function _protocolInitialize(ProtocolInitParams memory params) internal {
        BeraborrowManagedLeveragedVaultStorage storage $ = _getBeraborrowManagedLeveragedVaultStorage();

        if (
            params.borrowerOperations == address(0)
            || params.denManager == address(0)
            || params.leverageRouter == address(0)
            || params.deleverageRouter == address(0)
        ) revert ZeroAddress();

        $.borrowerOperations = IBorrowerOperations(params.borrowerOperations);
        $.denManager = IDenManager(params.denManager);
    
        $.leverageRouter = ILeverageRouter(params.leverageRouter);
        $.deleverageRouter = IDeleverageRouter(params.deleverageRouter);

        /// @dev Both routers are permissioned for the MLV
        _setDelegateApproval(params.leverageRouter, true);
        _setDelegateApproval(params.deleverageRouter, true);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       CORE FUNCTIONS                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function _totalAssets(Math.Rounding rounding) internal view override returns (uint256) {
        BeraborrowManagedLeveragedVaultStorage storage $ = _getBeraborrowManagedLeveragedVaultStorage();
        
        IDenManager denManager = IDenManager($.denManager);
        (uint256 collateral, uint256 debt) = _getPositionCollAndDebt();
        collateral += denManager.surplusBalances(address(this));
        uint256 collateralValue = $.v1.base.getters.getCollateralValue(collateral);
        uint256 debtValue = $.v1.base.getters.getDebtValue(debt);
        
        if (debtValue > collateralValue) {
            revert BadDebt(debtValue - collateralValue);
        }

        uint256 netValue = collateralValue - debtValue;
        address _asset = asset();
        uint256 assetPrice = getPrice(_asset);
        uint8 assetDecimals = IAsset(_asset).decimals();
        
        uint256 assets = netValue.mulDiv(10 ** assetDecimals, assetPrice, rounding);
        
        return assets;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           SETTERS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function setLeverageRouter(address _leverageRouter) external onlyOwner {
        BeraborrowManagedLeveragedVaultStorage storage $ = _getBeraborrowManagedLeveragedVaultStorage();

        if (_leverageRouter == address(0)) revert ZeroAddress();

        $.leverageRouter = ILeverageRouter(_leverageRouter);

        emit NewLeverageRouter(_leverageRouter);
    }

    function setDeleverageRouter(address _deleverageRouter) external onlyOwner {
        BeraborrowManagedLeveragedVaultStorage storage $ = _getBeraborrowManagedLeveragedVaultStorage();

        if (_deleverageRouter == address(0)) revert ZeroAddress();

        $.deleverageRouter = IDeleverageRouter(_deleverageRouter);

        emit NewDeleverageRouter(_deleverageRouter);
    }

    function setDelegateApproval(address user, bool isDelegated) external onlyOwner {
        _setDelegateApproval(user, isDelegated);
    }

    function _setDelegateApproval(address user, bool isDelegated) internal {
        BeraborrowManagedLeveragedVaultStorage storage $ = _getBeraborrowManagedLeveragedVaultStorage();

        $.borrowerOperations.setDelegateApproval(user, isDelegated);

        emit NewDelegation(user, isDelegated);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         INTERNALS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function _leverage(uint256 margin, bytes calldata levPayload) internal override {
        BeraborrowManagedLeveragedVaultStorage storage $ = _getBeraborrowManagedLeveragedVaultStorage();

        VaultState memory vs;
        IDenManager denManager = IDenManager($.denManager);
        ILeverageRouter.DenLoopingParams memory levP = abi.decode(levPayload, (ILeverageRouter.DenLoopingParams));

        if (margin == 0) {
            _getBeraborrowContext()._checkMaxFeePercentage(levP.denParams.maxFeePercentage);
        }

        levP.marginCollAmount = margin;

        (vs.prevColl, vs.prevDebt) = _getPositionCollAndDebt();

        // Perform the leverage using the rebalancer contract
        IERC20(asset()).forceApprove(address($.leverageRouter), levP.marginCollAmount);
        $.leverageRouter.automaticLoopingAddCollateral(
            denManager,
            levP
        );

        (vs.newColl, vs.newDebt) = _getPositionCollAndDebt();

        // should be at least higher with margin addition
        if (vs.newColl <= vs.prevColl + IInfraredCollateralVault(address($.v1.base.collateral)).convertToShares(levP.marginCollAmount)) revert CollateralNotIncreased(vs.newColl, vs.prevColl);
        if (vs.newDebt <= vs.prevDebt) revert DebtNotIncreased(vs.newDebt, vs.prevDebt);
        if (levP.marginCollAmount != 0) {
            uint256 collDeposit = vs.newColl - vs.prevColl;
            uint256 debtMinted = vs.newDebt - vs.prevDebt;

            uint256 targetCR = _getTargetICR();
            uint256 collPrice = denManager.fetchPrice();

            // assert CR within deviation range
            uint256 operationCR = BeraborrowMath._computeCR(collDeposit, debtMinted, collPrice);
            _checkInvariantICR(operationCR, targetCR, Tolerance.BOTH);
        }
    }

    function _deleverage(uint256 collToReceive, bytes calldata delevPayload) internal override returns (uint256 collVaultToRedeem) {
        BeraborrowManagedLeveragedVaultStorage storage $ = _getBeraborrowManagedLeveragedVaultStorage();

        VaultState memory vs;
        IDenManager denManager = IDenManager($.denManager);
        IDeleverageRouter.DenLoopingParams memory delevP = abi.decode(delevPayload, (IDeleverageRouter.DenLoopingParams));

        (vs.prevColl, vs.prevDebt) = _getPositionCollAndDebt();

        (vs.prevDebtBalance, vs.prevCollateralBalance) = _debtAndCollateralBalance();

        if (delevP.collVaultParams.collAmountToSwap == 0) revert ZeroAmount();
        delevP.denParams.collVaultAmount = collToReceive + delevP.collVaultParams.collAmountToSwap;
        delevP.nectProvidedByUser = 0;

        uint256 prevTotalAssets = collToReceive != 0 ? _totalAssets(Math.Rounding.Up) : 0;

        $.deleverageRouter.automaticLoopingRepayDebt(
            denManager,
            delevP
        );

        (vs.debtBalance, vs.collateralBalance) = _debtAndCollateralBalance();

        /// @dev If NECT received in collateral swap ends up being more than flash loaned, it's sent to this contract
        uint256 nectSurplus = vs.debtBalance - vs.prevDebtBalance;
        if (collToReceive != 0) {
            collVaultToRedeem = _computeNetCollWithDebtSurplus(
                nectSurplus,
                collToReceive,
                prevTotalAssets
            );
        }

        /// @dev Hints may be slightly off after deleveraging
        /// @dev If more exposure was used, it is substracted to his withdrawable assets, and redeposited
        /// @dev If less exposure was needed, it is added to his withdrawable assets
        /// @dev Nect refunded due to surpassing flash loan repayment is den-repayed
        _modifyCollAndRepayDebt(
            abi.encode(
                delevP.denParams.upperHint,
                delevP.denParams.lowerHint
            ),
            int256(vs.collateralBalance) - int256(vs.prevCollateralBalance) - int256(collVaultToRedeem),
            nectSurplus
        );

        (vs.newColl, vs.newDebt) = _getPositionCollAndDebt();

        if (collToReceive != 0) {
            uint256 operationCR = BeraborrowMath._computeCR(vs.prevColl - vs.newColl, vs.prevDebt - vs.newDebt, denManager.fetchPrice());
            _checkInvariantICR(operationCR, _getTargetICR(), Tolerance.BOTH);
        }

        // should be at least lower with margin substraction
        if (vs.newColl >= vs.prevColl) revert CollateralNotDecreased(vs.newColl, vs.prevColl);
        if (vs.newDebt > vs.prevDebt) revert DebtNotDecreased(vs.newDebt, vs.prevDebt);
    }

    function _modifyCollAndRepayDebt(
        bytes memory modifyPositionPayload,
        int256 missingExposure,
        uint256 debt
    ) internal override {
        _getBeraborrowContext()._modifyCollAndRepayDebt(
            modifyPositionPayload,
            missingExposure,
            debt
        );
    }

    function _openPosition(
        bytes calldata openPositionPayload
    ) internal override returns (uint256 shares) {
        shares = _getBeraborrowContext()._openPosition(openPositionPayload);

        _checkInvariantICR(_getCurrentPositionICR(), _getTargetICR(), Tolerance.ABOVE);
    }

    function _preDeposit(uint256 assetsAmount) internal override returns (uint256 coll) {
        coll = _getBeraborrowContext()._preDeposit(assetsAmount);
    }

    function _preRedeemEffects() internal view override {
        _getBeraborrowContext()._preRedeemEffects();
    }

    function _afterRedeemEffects(uint256 coll, address receiver, bytes memory deleveragePayload) internal override virtual returns (uint256 assets) {
        assets = _getBeraborrowContext()._afterRedeemEffects(coll, receiver, deleveragePayload);
    }

    function _collConversion(uint256 assets) internal view override returns (uint256 coll) {
        coll = _getBeraborrowContext()._collConversion(assets);
    }

    function _decodeSwapAmount(address inputToken, bytes memory payload) internal view override returns (uint256 amountToSwap) {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        if (inputToken == address($.collateral)) {
            amountToSwap = abi.decode(payload, (IDeleverageRouter.DenLoopingParams)).collVaultParams.collAmountToSwap;
        } else {
            amountToSwap = abi.decode(payload, (ILeverageRouter.DenLoopingParams)).flashloanNectAmount;
        }
    }

    function _collateralDecimals() internal pure override returns (uint8) {
        return BeraborrowLib._collateralDecimals();
    }

    function _getPositionCollAndDebt() internal view override returns (uint256 coll, uint256 debt) {
        return _getBeraborrowContext()._getPositionCollAndDebt();
    }

    function _pullRewards() internal override {
        _getBeraborrowContext()._pullRewards();
    }

    function _getBeraborrowContext() private view returns (BeraborrowLib.Context memory) {
        BeraborrowManagedLeveragedVaultStorage storage $ = _getBeraborrowManagedLeveragedVaultStorage();

        return BeraborrowLib.Context({
            asset: asset(),
            denManager: $.denManager,
            borrowerOperations: $.borrowerOperations,
            collateral: $.v1.base.collateral,
            metaBeraborrowCore: $.v1.base.metaBeraborrowCore,
            getters: $.v1.base.getters
        });
    }
}
