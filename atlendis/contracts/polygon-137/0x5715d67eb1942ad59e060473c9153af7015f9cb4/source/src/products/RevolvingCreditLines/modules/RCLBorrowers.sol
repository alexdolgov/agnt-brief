// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import '../../../libraries/TimeValue.sol';
import '../libraries/BorrowingLogic.sol';
import './interfaces/IRCLBorrowers.sol';
import './RCLOrderBook.sol';
import 'lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol';
import '../../../libraries/FixedPointMathLib.sol';

/**
 * @title Borrowers
 * @author Atlendis Labs
 * @notice Implementation of IBorrowers
 */
abstract contract RCLBorrowers is IRCLBorrowers, RCLOrderBook {
    /*//////////////////////////////////////////////////////////////
                                LIBRARIES
    //////////////////////////////////////////////////////////////*/

    using SafeERC20 for ERC20;
    using FixedPointMathLib for uint256;

    /*//////////////////////////////////////////////////////////////
                                MODIFIERS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Restrict the sender of the message to the borrowe, i.e. default admin
     */
    modifier onlyBorrower() {
        require(permissionedBorrowers[msg.sender], 'Only permissioned borrower allowed');
        _;
    }

    /*//////////////////////////////////////////////////////////////
                        EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function borrow(address to, uint256 amount) external onlyBorrower onlyInPhase(DataTypes.OrderBookPhase.OPEN) {
        if (amount + totalBorrowed > MAX_BORROWABLE_AMOUNT) {
            revert RevolvingCreditLineErrors.RCL_AMOUNT_EXCEEDS_MAX();
        }
        if (amount == 0) {
            revert RevolvingCreditLineErrors.RCL_ZERO_AMOUNT_NOT_ALLOWED();
        }

        uint256 issuanceFee = amendGlobalsOnBorrow(amount);

        uint256 currentInterestRate = MIN_RATE;
        uint256 remainingAmount = amount;
        while (remainingAmount > 0 && currentInterestRate <= MAX_RATE) {
            DataTypes.Tick storage tick = ticks[currentInterestRate];
            DataTypes.Epoch storage currentEpoch = tick.epochs[tick.currentEpochId];

            if (tick.availableToBorrowBase + tick.newEpochsAmounts.availableToBorrowNew > 0) {
                if (tick.borrowedLoanBaseEpoch > 0) {
                    accrueYieldFactor(tick, currentInterestRate);
                    incrementPaybackWithInterestDue(tick, currentInterestRate);
                    adjustForNewEpochsYield(tick, currentInterestRate);
                }

                bool firstLoanBorrow;
                if (tick.availableToBorrowBase > 0) {
                    DataTypes.Epoch storage epoch;
                    if (tick.borrowedLoanBaseEpoch > 0) {
                        epoch = tick.epochs[tick.currentEpochId - 1];
                    } else {
                        epoch = tick.epochs[tick.currentEpochId];
                        firstLoanBorrow = true;
                    }
                    remainingAmount = BorrowingLogic.borrowFromBase({
                        tick: tick,
                        epoch: epoch,
                        toBeBorrowed: remainingAmount,
                        currentLoanId: currentLoanId
                    });
                } else {
                    DataTypes.Epoch storage lastEpoch = tick.epochs[tick.currentEpochId - 1];
                    if (
                        !lastEpoch.isBaseEpoch && lastEpoch.deposited - lastEpoch.borrowed > 0 && lastEpoch.borrowed > 0
                    ) {
                        remainingAmount = BorrowingLogic.borrowFromNew({
                            tick: tick,
                            epoch: lastEpoch,
                            toBeBorrowed: remainingAmount,
                            rate: currentInterestRate,
                            currentLoanId: currentLoanId,
                            tokenDenominator: TOKEN_DENOMINATOR,
                            currentMaturity: currentMaturity
                        });
                    }
                }

                if (remainingAmount > 0 && !firstLoanBorrow) {
                    remainingAmount = BorrowingLogic.borrowFromNew({
                        tick: tick,
                        epoch: currentEpoch,
                        toBeBorrowed: remainingAmount,
                        rate: currentInterestRate,
                        currentLoanId: currentLoanId,
                        tokenDenominator: TOKEN_DENOMINATOR,
                        currentMaturity: currentMaturity
                    });
                }
                tick.lastBorrowTimeStamp = block.timestamp;
            }
            currentInterestRate += RATE_SPACING;
        }
        if (remainingAmount > 0) {
            revert RevolvingCreditLineErrors.RCL_NO_LIQUIDITY();
        }
        ERC20(UNDERLYING_TOKEN).safeTransfer(to, amount - issuanceFee);
    }

    function repay() external onlyBorrower onlyInPhase(DataTypes.OrderBookPhase.OPEN) {
        if (currentMaturity == 0) {
            revert RevolvingCreditLineErrors.RCL_NO_LOAN_RUNNING();
        }
        if (block.timestamp < currentMaturity) {
            revert RevolvingCreditLineErrors.RCL_LOAN_RUNNING();
        }

        uint256 amountToPayBack;
        uint256 currentInterestRate = MIN_RATE;
        while (currentInterestRate <= MAX_RATE) {
            DataTypes.Tick storage tick = ticks[currentInterestRate];
            if (tick.borrowedLoanBaseEpoch > 0) {
                DataTypes.Epoch storage lastBorrowedEpoch = tick.epochs[tick.currentEpochId - 1];

                if (lastBorrowedEpoch.deposited > lastBorrowedEpoch.borrowed) {
                    tick.newEpochsAmounts.toExitNewEpochsYield += lastBorrowedEpoch
                        .toExit
                        .div(lastBorrowedEpoch.deposited, TOKEN_DENOMINATOR)
                        .mul(lastBorrowedEpoch.endOfLoanAccruedYield, TOKEN_DENOMINATOR);
                }
                incrementPaybackWithInterestDue(tick, currentInterestRate);
                accrueYieldFactor(tick, currentInterestRate);
                adjustForNewEpochsYield(tick, currentInterestRate);
                adjustForExits(tick, currentInterestRate);
                amountToPayBack += tick.amountToPayBack;
                BorrowingLogic.prepareTickForNextLoan(tick, TOKEN_DENOMINATOR, currentLoanId);
            }
            currentInterestRate += RATE_SPACING;
        }
        amendGlobalsOnRepay();
        ERC20(UNDERLYING_TOKEN).safeTransferFrom(msg.sender, address(this), amountToPayBack);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function accrueYieldFactor(DataTypes.Tick storage tick, uint256 rate) internal {
        tick.yieldFactor += tick
            .borrowedLoanBaseEpoch
            .mul(block.timestamp - tick.lastBorrowTimeStamp, TOKEN_DENOMINATOR)
            .mul(rate, TOKEN_DENOMINATOR)
            .div(tick.adjustedDeposits, TOKEN_DENOMINATOR);
    }

    function incrementPaybackWithInterestDue(DataTypes.Tick storage tick, uint256 rate) internal {
        tick.amountToPayBack += (tick.borrowedLoanBaseEpoch + tick.newEpochsAmounts.borrowedLoanNewEpochs)
            .mul(block.timestamp - tick.lastBorrowTimeStamp, TOKEN_DENOMINATOR)
            .mul(rate, TOKEN_DENOMINATOR);
    }

    function amendGlobalsOnRepay() internal {
        loanRepayTimeDeltas[currentLoanId] = block.timestamp - currentMaturity;
        currentMaturity = 0;
        totalBorrowed = 0;
    }

    function adjustForNewEpochsYield(DataTypes.Tick storage tick, uint256 rate) internal {
        tick.toBeAdjusted =
            tick.toBeAdjusted +
            tick
                .newEpochsAmounts
                .borrowedLoanNewEpochs
                .mul(block.timestamp - tick.lastBorrowTimeStamp, TOKEN_DENOMINATOR)
                .mul(rate, TOKEN_DENOMINATOR);
    }

    function adjustForExits(DataTypes.Tick storage tick, uint256 rate) internal {
        uint256 toExitAdjustment;

        uint256 deltaToMaturityAdjustment = tick
            .epochs[tick.currentEpochId - 1]
            .borrowed
            .mul(block.timestamp - currentMaturity, TOKEN_DENOMINATOR)
            .mul(rate, TOKEN_DENOMINATOR);

        toExitAdjustment =
            tick.newEpochsAmounts.toExitNewEpochsYield +
            deltaToMaturityAdjustment +
            tick.newEpochsAmounts.toExitNewEpochs;

        tick.toBeAdjusted -= toExitAdjustment;
    }

    function amendGlobalsOnBorrow(uint256 amount) internal returns (uint256 issuanceFee) {
        if (currentMaturity == 0) {
            currentMaturity = block.timestamp + LOAN_DURATION;
            currentLoanId += 1;
        }
        totalBorrowed += amount;
        issuanceFee = ISSUANCE_FEE_RATE.mul(amount, TOKEN_DENOMINATOR);
        atlendisRevenue += issuanceFee;
    }
}
