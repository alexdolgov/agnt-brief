// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IDenManager} from "src/interfaces/core/IDenManager.sol";
import {IInfraredCollateralVault} from "src/interfaces/core/vaults/IInfraredCollateralVault.sol";
import {ILeverageRouter} from "src/interfaces/periphery/ILeverageRouter.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";
import {IDebtToken} from "src/interfaces/core/IDebtToken.sol";
import {IBorrowerOperations} from "src/interfaces/core/IBorrowerOperations.sol";
import {IBeraborrowCore} from "src/interfaces/core/IBeraborrowCore.sol";
import {BeraborrowMath} from "src/dependencies/BeraborrowMath.sol";

contract LeverageHelper {
    uint16 constant BP = 1e4;
    uint256 constant WAD = 1e18;

    IDebtToken public immutable nect;
    IPriceFeed public immutable priceFeed;
    IBorrowerOperations public immutable borrowerOperations;
    IBeraborrowCore public immutable beraborrowCore;

    constructor(
        address _nect,
        address _priceFeed,
        address _borrowerOperations,
        address _beraborrowCore
    ) {
        nect = IDebtToken(_nect);
        priceFeed = IPriceFeed(_priceFeed);
        borrowerOperations = IBorrowerOperations(_borrowerOperations);
        beraborrowCore = IBeraborrowCore(_beraborrowCore);
    }

    error LeverageExceeded(uint256 leverage, uint256 maxLeverage);
    error ZeroCollateral();
    error DebtTooLow(uint256 totalNetDebt, uint256 minNetDebt);
    error PositionBelowMinimumCR(uint256 resultingICR, uint256 minimumCR);
    error PositionNotImprovedUnderRM(uint256 resultingICR, uint256 prevICR);
    error CollateralRatioBelowMCR();
    error CollateralRatioBelowCCR();
    error RecoveryMode(uint256 newTCR, uint256 CCR);

    function calculateDebtAmount(
        IDenManager denManager,
        address position,
        uint256 marginInAssets,
        uint256 extraDebt,
        uint256 leverage,
        uint256 minimumCR,
        bool isRecoveryMode
    ) external view returns (uint256 debtAmount) {
        if (leverage <= BP) revert("Leverage must be greater than 1");

        ILeverageRouter.LeverageMemory memory m;

        address collVault = denManager.collateralToken();
        (m.currentColl, m.currentDebt) = denManager.getDenCollAndDebt(position);
        m.currentDebt += extraDebt;
        m.collVaultPrice = priceFeed.fetchPrice(collVault);
        m.prevICR = (m.currentColl != 0) ? BeraborrowMath._computeCR(m.currentColl, m.currentDebt, m.collVaultPrice) : 0;
        m.marginInCollVault = marginInAssets != 0 ? IInfraredCollateralVault(collVault).previewDeposit(marginInAssets) : 0;

        {
            uint256 maxLeverage = calculateMaxLeverage(
                m.currentColl,
                m.currentDebt,
                m.marginInCollVault,
                m.collVaultPrice,
                minimumCR
            );
            if (leverage > maxLeverage) revert LeverageExceeded(leverage, maxLeverage);
        }

        m.additionalCollateral = (m.currentColl + m.marginInCollVault) * (leverage - BP) / BP;

        if (m.additionalCollateral == 0) revert ZeroCollateral();

        /// @dev Divided by NECT price to increase precision of NECT needed for the NECT->collateral swap
        debtAmount = m.additionalCollateral * m.collVaultPrice / priceFeed.fetchPrice(address(nect));

        _check(denManager, m, debtAmount, minimumCR, isRecoveryMode);
    }

    function calculateMaxLeverage(
        uint256 currentColl,
        uint256 currentDebt,
        uint256 margin,
        uint256 price,
        uint256 minimumCR
    ) public pure returns (uint256 maxLeverageInBp) {
        uint256 baseCollValue = (currentColl + margin) * price / WAD;

        if (baseCollValue <= (minimumCR * currentDebt) / WAD) return 0;

        uint256 numerator = (baseCollValue - currentDebt) * minimumCR / WAD;
        uint256 denominator = (minimumCR - WAD) * baseCollValue / WAD;
        maxLeverageInBp = numerator * BP / denominator;
    }

    function _check(
        IDenManager denManager,
        ILeverageRouter.LeverageMemory memory m,
        uint256 debtAmount,
        uint256 minimumCR,
        bool isRecoveryMode
    ) private view {
        uint256 gasCompensation = borrowerOperations.DEBT_GAS_COMPENSATION();
        uint256 debtGasCompensation = m.currentColl == 0 ? gasCompensation : 0;
        uint256 borrowingRate = isRecoveryMode ? 0 : denManager.getBorrowingRateWithDecay();

        uint256 additionalCompositeDebt = (debtAmount * (borrowingRate + WAD) / WAD);
        uint256 totalNetDebt = m.currentDebt + additionalCompositeDebt;
        uint256 totalCompositeDebt = totalNetDebt + debtGasCompensation;
        uint256 totalCollateral = m.currentColl + m.marginInCollVault + m.additionalCollateral;
        uint256 resultingICR = totalCollateral * m.collVaultPrice / totalCompositeDebt;

        _checkValidCR(denManager, minimumCR, isRecoveryMode, m, additionalCompositeDebt + debtGasCompensation, resultingICR);

        uint256 minNetDebt = borrowerOperations.minNetDebt();
        if (totalNetDebt - gasCompensation < minNetDebt) revert DebtTooLow(totalNetDebt, minNetDebt);
    }

    /// @dev Validates the minimumCR.
    /// @dev This is  used in the `calculateDebtAmount` function to check if the minimumCR value is valid.
    function _checkValidCR(
        IDenManager denManager,
        uint256 minimumCR,
        bool isRecoveryMode,
        ILeverageRouter.LeverageMemory memory m,
        uint256 additionalDebt,
        uint256 resultingICR
    ) private view {
        if (resultingICR < minimumCR) revert PositionBelowMinimumCR(resultingICR, minimumCR);

        if (isRecoveryMode) {
            if (resultingICR < beraborrowCore.CCR()) revert CollateralRatioBelowCCR();
            if (resultingICR < m.prevICR) revert PositionNotImprovedUnderRM(resultingICR, m.prevICR);
        } else {
            if (resultingICR < denManager.MCR()) revert CollateralRatioBelowMCR();

            (uint256 entireSystemPricedColl, uint256 entireSystemDebt) = borrowerOperations.getGlobalSystemBalances();
            entireSystemPricedColl += (m.additionalCollateral + m.marginInCollVault) * m.collVaultPrice;
            entireSystemDebt += additionalDebt;

            uint256 newTCR = BeraborrowMath._computeCR(entireSystemPricedColl, entireSystemDebt);
            uint256 CCR = borrowerOperations.BERABORROW_CORE().CCR();
            if (newTCR < CCR) revert RecoveryMode(newTCR, CCR);
        }
    }
}