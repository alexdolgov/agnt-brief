// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC20, SafeERC20} from "lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IDenManager} from "src/interfaces/core/IDenManager.sol";
import {IBorrowerOperations} from "src/interfaces/core/IBorrowerOperations.sol";
import {IInfraredCollateralVault} from "src/interfaces/core/vaults/IInfraredCollateralVault.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";
import {IBaseManagedLeveragedVaultGetters} from "src/interfaces/core/helpers/mlv/base/IBaseManagedLeveragedVaultGetters.sol";

/**
 * @title BeraborrowLib
 * @notice This contract implements a managed leveraged vault for Beraborrow protocol.
 * @dev `$.collateral` is different that `asset()`, the first is a Beraborrow CollateralVault, the former is also the asset of the CollateralVault.
 */
library BeraborrowLib {
    using SafeERC20 for IERC20;

    enum DenStatus { nonExistent, active, closedByOwner, closedByLiquidation, closedByRedemption }
    enum Tolerance { ABOVE, BOTH }

    uint8 constant MAX_BORROWING_FEE_MULTIPLIER = 5; // x5
    uint256 constant MIN_OPERATION_ICR = 0.2e18; // 20% above CCR (relative)
    uint256 constant WAD = 1e18;

    error AlreadyOpened();
    error BelowCR(uint256 currentICR);
    error SurpassedMaxFeePercentage(uint256 maxFeePercentage, uint256 constrainedMaxFeePercentage);
    error VaultSlippage(uint256 minCollVaultShares, uint256 mintedShares);

    event NewBorrowerOperations(address borrowerOperations);
    event NewDenManager(address denManager);

    struct Context {
        address asset;
        IDenManager denManager;
        IBorrowerOperations borrowerOperations;
        IERC20 collateral;
        IMetaBeraborrowCore metaBeraborrowCore;
        IBaseManagedLeveragedVaultGetters getters;
    }

    function _withdrawDebt(Context memory $, bytes memory withdrawDebtPayload, uint256 _nectAmount) internal {
        (
            uint256 _maxFeePercentage,
            address _upperHint,
            address _lowerHint
        ) = abi.decode(
            withdrawDebtPayload,
            (uint256, address, address)
        );

        _checkMaxFeePercentage($, _maxFeePercentage);

        $.borrowerOperations.withdrawDebt(
            address($.denManager),
            address(this),
            _maxFeePercentage,
            _nectAmount,
            _upperHint,
            _lowerHint
        );
    }

    function _repayDebt(
        Context memory $,
        bytes memory repayDebtPayload,
        uint256 nectAmount
    ) internal {
        (
            address _upperHint,
            address _lowerHint
        ) = abi.decode(
            repayDebtPayload,
            (address, address)
        );

        $.borrowerOperations.repayDebt(
            address($.denManager),
            address(this),
            nectAmount,
            _upperHint,
            _lowerHint
        );
    }

    function _addColl(
        Context memory $,
        bytes memory addCollateralPayload,
        uint256 coll
    ) internal {
        (
            address upperHint,
            address lowerHint
        ) = abi.decode(
            addCollateralPayload,
            (address, address)
        );

        $.collateral.forceApprove(address($.borrowerOperations), coll);
        $.borrowerOperations.addColl(
            address($.denManager),
            address(this),
            coll,
            upperHint,
            lowerHint
        );
    }

    function _modifyCollAndRepayDebt(
        Context memory $,
        bytes memory modifyPositionPayload,
        int256 missingExposure,
        uint256 debt
    ) internal {
        (
            address upperHint,
            address lowerHint
        ) = abi.decode(modifyPositionPayload, (address, address));

        bool isCollDeposit = missingExposure >= 0;

        uint256 collDeposit = isCollDeposit ? uint256(missingExposure) : 0;
        uint256 collWithdrawal = isCollDeposit ? 0 : uint256(-missingExposure);
        
        if (missingExposure != 0 || debt != 0) {
            $.collateral.forceApprove(address($.borrowerOperations), collDeposit);
            $.borrowerOperations.adjustDen({
                denManager: address($.denManager),
                account: address(this),
                _maxFeePercentage: 0,
                _collDeposit: collDeposit,
                _collWithdrawal: collWithdrawal,
                _debtChange: debt,
                _isDebtIncrease: false,
                _upperHint: upperHint,
                _lowerHint: lowerHint
            });
        }
    }

    function _repayDebtAndWithdrawCollateral(
        Context memory $,
        bytes memory modifyPositionPayload,
        uint256 collToReceive,
        uint256 receivedNect
    ) internal {
        (
            address upperHint,
            address lowerHint
        ) = abi.decode(modifyPositionPayload, (address, address));

        $.borrowerOperations.adjustDen({
            denManager: address($.denManager),
            account: address(this),
            _maxFeePercentage: 0,
            _collDeposit: 0,
            _collWithdrawal: collToReceive,
            _debtChange: receivedNect,
            _isDebtIncrease: false,
            _upperHint: upperHint,
            _lowerHint: lowerHint
        });
    }

    function _addCollAndWithdrawDebt(
        Context memory $,
        bytes memory depositPayload,
        uint256 collVaultShares,
        uint256 nectToReceive
    ) internal {
        (
            uint256 maxFeePercentage,
            address upperHint,
            address lowerHint
        ) = abi.decode(
            depositPayload,
            (uint256, address, address)
        );

        IERC20(address($.collateral)).forceApprove(address($.borrowerOperations), collVaultShares);
        $.borrowerOperations.adjustDen({
            denManager: address($.denManager),
            account: address(this),
            _maxFeePercentage: maxFeePercentage,
            _collDeposit: collVaultShares,
            _collWithdrawal: 0,
            _debtChange: nectToReceive,
            _isDebtIncrease: true,
            _upperHint: upperHint,
            _lowerHint: lowerHint
        });
    }

    function _openPosition(
        Context memory $,
        bytes memory openPositionPayload
    ) internal returns (uint256 shares) {
        (
            uint256 _maxFeePercentage,
            uint256 _minCollVaultShares,
            uint256 _debtMinted,
            address _upperHint,
            address _lowerHint
        ) = abi.decode(openPositionPayload, (uint256, uint256, uint256, address, address));

        uint256 status = $.denManager.getDenStatus(address(this));
        if (DenStatus(status) == DenStatus.active) revert AlreadyOpened();

        uint256 collVaultShares = $.collateral.balanceOf(address(this));
        collVaultShares += _claimCollateral($);

        uint256 assetsAmount = IERC20($.asset).balanceOf(address(this));

        if (assetsAmount != 0) {
            uint256 mintedShares = _preDeposit($, assetsAmount);
            if (mintedShares < _minCollVaultShares) revert VaultSlippage(_minCollVaultShares, mintedShares);
            collVaultShares += mintedShares;
        }
        /// @dev The first openDen will only donate assets
        shares = IERC4626(address(this)).previewDeposit(assetsAmount);

        $.collateral.forceApprove(address($.borrowerOperations), collVaultShares);
        $.borrowerOperations.openDen(
            address($.denManager),
            address(this),
            _maxFeePercentage,
            collVaultShares,
            _debtMinted,
            _upperHint,
            _lowerHint
        );
    }

    function _claimCollateral(Context memory $) private returns (uint256 collVaultAmount) {
        IDenManager denManager = $.denManager;

        collVaultAmount = denManager.surplusBalances(address(this));

        if (collVaultAmount != 0) {
            denManager.claimCollateral(address(this), address(this));
        }
    }

    function _preDeposit(Context memory $, uint256 assetsAmount) internal returns (uint256 coll) {
        IERC20($.asset).forceApprove(address($.collateral), assetsAmount);
        coll = IInfraredCollateralVault(address($.collateral)).deposit(assetsAmount, address(this));
    }

    function _preRedeemEffects(Context memory $) internal view {
        // Position should be above a certain threshold (MIN_OPERATION_ICR) over closest possible liquidation CR (CCR)
        uint256 CCR = $.borrowerOperations.BERABORROW_CORE().CCR();
        uint256 minICR = CCR + (MIN_OPERATION_ICR * (CCR - WAD) / WAD);
        uint256 currentICR = $.getters.getCurrentPositionICR();
        if (currentICR < minICR) revert BelowCR(currentICR);
    }

    function _afterRedeemEffects(Context memory $, uint256 coll, address receiver, bytes memory) internal returns (uint256 assets) {
        assets = IInfraredCollateralVault(address($.collateral)).redeem(coll, receiver, address(this));
    }

    function _collConversion(Context memory $, uint256 assets) internal view returns (uint256 coll) {
        coll = IInfraredCollateralVault(address($.collateral)).convertToShares(assets);
    }

    function _getPositionCollAndDebt(Context memory $) internal view returns (uint256 coll, uint256 debt) {
        (coll, debt) = $.denManager.getDenCollAndDebt(address(this));
    }

    function _pullRewards(Context memory $) internal {
        IInfraredCollateralVault(address($.collateral)).pullRewards();
    }

    function _collateralDecimals() internal pure returns (uint8) {
        return 18; // COLL_VAULT_DECIMALS
    }

    function _checkMaxFeePercentage(
        Context memory $,
        uint256 maxFeePercentage
    ) internal view {
        uint256 constrainedMaxFeePercentage = $.denManager.borrowingFeeFloor() * MAX_BORROWING_FEE_MULTIPLIER;

        if (maxFeePercentage > constrainedMaxFeePercentage) {
            revert SurpassedMaxFeePercentage(maxFeePercentage, constrainedMaxFeePercentage);
        }
    }
}