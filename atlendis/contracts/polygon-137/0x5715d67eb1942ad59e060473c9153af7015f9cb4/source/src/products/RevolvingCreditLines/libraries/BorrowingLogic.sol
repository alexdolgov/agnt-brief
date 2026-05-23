// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import './DataTypes.sol';
import '../../../libraries/FixedPointMathLib.sol';

library BorrowingLogic {
    using FixedPointMathLib for uint256;

    function borrowFromBase(
        DataTypes.Tick storage tick,
        DataTypes.Epoch storage epoch,
        uint256 toBeBorrowed,
        uint256 currentLoanId
    ) external returns (uint256) {
        if (tick.borrowedLoanBaseEpoch == 0) {
            epoch.isBaseEpoch = true;
            tick.loanStartEpochId = tick.currentEpochId;
            epoch.loanId = currentLoanId;
            tick.currentEpochId += 1;
        }
        uint256 amountToBorrow;
        if (toBeBorrowed >= tick.availableToBorrowBase) {
            amountToBorrow = tick.availableToBorrowBase;
        } else {
            amountToBorrow = toBeBorrowed;
        }
        tick.borrowedLoanBaseEpoch += amountToBorrow;
        tick.availableToBorrowBase -= amountToBorrow;
        toBeBorrowed -= amountToBorrow;
        return toBeBorrowed;
    }

    function borrowFromNew(
        DataTypes.Tick storage tick,
        DataTypes.Epoch storage epoch,
        uint256 toBeBorrowed,
        uint256 rate,
        uint256 currentLoanId,
        uint256 tokenDenominator,
        uint256 currentMaturity
    ) external returns (uint256) {
        if (epoch.borrowed == 0) {
            epoch.loanId = currentLoanId;
            tick.currentEpochId += 1;
        }
        uint256 amountToBorrow;
        if (toBeBorrowed >= epoch.deposited - epoch.borrowed) {
            amountToBorrow = epoch.deposited - epoch.borrowed;
        } else {
            amountToBorrow = toBeBorrowed;
        }

        epoch.borrowed += amountToBorrow;
        tick.newEpochsAmounts.borrowedLoanNewEpochs += amountToBorrow;
        epoch.endOfLoanAccruedYield += amountToBorrow.mul(currentMaturity - block.timestamp, tokenDenominator).mul(
            rate,
            tokenDenominator
        );

        tick.newEpochsAmounts.availableToBorrowNew -= amountToBorrow;
        toBeBorrowed -= amountToBorrow;

        // compute yield that exits once new epoch is filled
        if (toBeBorrowed == 0) {
            tick.newEpochsAmounts.toExitNewEpochsYield += epoch.toExit.div(epoch.deposited, tokenDenominator).mul(
                epoch.endOfLoanAccruedYield,
                tokenDenominator
            );
        }
        return toBeBorrowed;
    }

    function prepareTickForNextLoan(
        DataTypes.Tick storage tick,
        uint256 tokenDenominator,
        uint256 currentLoanId
    ) external {
        tick.availableToBorrowBase +=
            tick.amountToPayBack +
            tick.borrowedLoanBaseEpoch +
            tick.newEpochsAmounts.availableToBorrowNew -
            tick.newEpochsAmounts.toExitNewEpochs -
            tick.newEpochsAmounts.toExitNewEpochsYield +
            tick.newEpochsAmounts.borrowedLoanNewEpochs -
            tick.toExitBaseAdjusted.mul(tick.yieldFactor, tokenDenominator);

        delete tick.newEpochsAmounts;
        tick.borrowedLoanBaseEpoch = 0;
        tick.amountToPayBack = 0;
        tick.adjustedDeposits =
            tick.adjustedDeposits +
            tick.toBeAdjusted.div(tick.yieldFactor, tokenDenominator) -
            tick.toExitBaseAdjusted;
        tick.toBeAdjusted = 0;
        tick.toExitBaseAdjusted = 0;
        tick.endOfLoanYieldFactors[currentLoanId] = tick.yieldFactor;
    }
}
