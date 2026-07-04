// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.26;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeERC20, IERC20} from "lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IManagedLeveragedVaultV1} from "src/interfaces/core/mlv/base/v1/IManagedLeveragedVaultV1.sol";
import {IAsset} from "src/interfaces/utils/tokens/IAsset.sol";
import {PriceLib} from "src/libraries/PriceLib.sol";
import {UtilsLib} from "src/libraries/UtilsLib.sol";
import {BaseManagedLeveragedVault, IBaseManagedLeveragedVault} from "src/core/mlv/base/BaseManagedLeveragedVault.sol";

/**
 * @title ManagedLeveragedVaultV1
 * @author Everlong team
 * @notice Managed leverage token with the set leverage/CR target.
 * @dev Exposure token is the same asset.
 * @dev Breaks ERC4626 standard.
 */
abstract contract ManagedLeveragedVaultV1 is BaseManagedLeveragedVault, IManagedLeveragedVaultV1 {
    using Math for uint256;
    using PriceLib for uint256;
    using SafeERC20 for IERC20;
    using UtilsLib for bytes;

    /// @custom:storage-location erc7201:openzeppelin.storage.ManagedLeveragedVault
    struct ManagedLeveragedVaultV1Storage {
        BaseManagedLeveragedVaultStorage base;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       CORE FUNCTIONS                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Denominated in `asset()`, tracks collVaultShares (coll and margin) and substracts PnL of the exposure token, minus den debt
     * @dev Breaks ERC4626 since it can revert on BadDebt
     */
    function totalAssets() public view override(BaseManagedLeveragedVault, IBaseManagedLeveragedVault) returns (uint256) {
        return _totalAssets(Math.Rounding.Down);
    }

    /**
     * @notice Increase exposure by borrowing debt and swapping it for collateral
     * @dev Won't work during RecoveryMode
     * @dev Keeper has to cap debtAmount to available debt, after accounting borrowingFee, since of maxSystemDebt
     */
    function increaseLeverage(
        bytes calldata leveragePayload
    ) external onlyOwnerOrKeeper virtual nonReentrant maxOperationCost(address(_getBaseManagedLeveragedVaultStorage().debtToken), leveragePayload) {
        _leverage(0, leveragePayload);

        _checkInvariantICR(_getCurrentPositionICR(), _getTargetICR(), Tolerance.ABOVE);
    }

    /**
     * @notice Decrease exposure by swapping collateral for debt
     */
    function decreaseLeverage(
        bytes calldata deleveragePayload
    ) external onlyOwnerOrKeeper virtual nonReentrant maxOperationCost(address(_getBaseManagedLeveragedVaultStorage().collateral), deleveragePayload) {
        _deleverage(0, deleveragePayload);

        _checkInvariantICR(_getCurrentPositionICR(), _getTargetICR(), Tolerance.ABOVE);
    }

    /// @notice Open a new position with targetCR and all availabe collateral, occurs in the case of a migration (closedByOwner), or liquidation/redemption
    /// @dev If it's a liquidation/redemption, if there's collSurplus it will be claimed
    function openPosition(
        bytes calldata openPositionPayload,
        address swapRouter,
        bytes memory dexPayload,
        bytes calldata leveragePayload
    ) external onlyOwnerOrKeeper {
        uint256 shares = _openPosition(openPositionPayload);

        _mintOnce(shares, swapRouter, dexPayload, leveragePayload);
    }

    function _mintOnce(
        uint256 shares,
        address swapRouter,
        bytes memory dexPayload,
        bytes calldata leveragePayload
    ) internal {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        uint256 debtBalance = IERC20($.debtToken).balanceOf(address(this));
        $.debtToken.forceApprove(swapRouter, debtBalance);
        (bool success, bytes memory retData) = swapRouter.call(dexPayload);
        if (!success) {
            retData.bubbleUpRevert();
        }

        uint256 margin = IERC20(asset()).balanceOf(address(this));

        if (margin == 0) revert ZeroAmount();

        _leverage(margin, leveragePayload);
   
        if (totalSupply() == 0) {
            _mint($.metaBeraborrowCore.owner(), shares);
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          GETTERS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function getMarginBalance() public view returns (uint256) {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        uint256 debtValue = $.getters.getDebtValue();
        uint256 debtInCollateral = debtValue.convertToAmount(
            getPrice(address($.collateral)),
            _collateralDecimals(),
            Math.Rounding.Down
        );

        return $.getters.getCollateralBalance() - debtInCollateral;
    }

    function getExposureBalance() public view returns (uint256) {
        (uint256 coll,) = _getPositionCollAndDebt();

        return coll - getMarginBalance();
    }

    function getExposureValue() public view returns (uint256) {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        return getExposureBalance().mulDiv(getPrice(address($.collateral)), WAD);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         INTERNALS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function _computeNetCollWithDebtSurplus(
        uint256 debtSurplus,
        uint256 collToReceive,
        uint256 prevTotalAssets
    ) internal view returns (uint256) {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        uint256 debtSurplusInUsd = debtSurplus.mulDiv(getPrice(address($.debtToken)), WAD);
        uint256 debtSurplusInAssets = debtSurplusInUsd.mulDiv(10 ** IAsset(asset()).decimals(), getPrice(asset()));

        return _computeNetColl(debtSurplusInAssets, collToReceive, prevTotalAssets);
    }

    function _debtAndCollateralBalance() internal view returns (uint256 debtBalance, uint256 collateralBalance) {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        debtBalance = $.debtToken.balanceOf(address(this));
        collateralBalance = $.collateral.balanceOf(address(this));
    }
}