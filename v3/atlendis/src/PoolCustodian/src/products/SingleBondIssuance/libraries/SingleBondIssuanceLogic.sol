// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import 'lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol';
import 'lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol';
import '../../../libraries/FixedPointMathLib.sol';

import '../../../libraries/TimeValue.sol';
import './PoolDataTypes.sol';
import './SingleBondIssuanceErrors.sol';

/**
 * @title SingleBondIssuanceLogic library
 * @dev Collection of methods used in the SingleBondIssuance contract
 */
library SingleBondIssuanceLogic {
    using SafeERC20 for ERC20;
    using FixedPointMathLib for uint256;

    /**
     * @dev Wrapper over ERC20 safeTransfer
     * @param from Address for which the balance will decrease
     * @param to Address to which the balance will increase
     * @param underlyingToken Address of the ERC20 contract
     * @param amount Amount to be transferred
     */
    function transferERC20From(
        address from,
        address to,
        address underlyingToken,
        uint256 amount
    ) internal {
        ERC20(underlyingToken).safeTransferFrom(from, to, amount);
    }

    /**
     * @dev Wrapper over ERC20 safeTransfer, `from` is forced as the caller
     * @param to Address to which the balance will increase
     * @param underlyingToken Address of the ERC20 contract
     * @param amount Amount to be transferred
     */
    function transferERC20(
        address to,
        address underlyingToken,
        uint256 amount
    ) internal {
        ERC20(underlyingToken).safeTransfer(to, amount);
    }

    /**
     * @dev Deposit amount of ERC20 token to tick
     * @param tick The tick
     * @param amount The amount
     * @param underlyingToken The address of the ERC20 token
     */
    function depositToTick(
        PoolDataTypes.Tick storage tick,
        uint256 amount,
        address underlyingToken
    ) external {
        tick.depositedAmount += amount;
        transferERC20From(msg.sender, address(this), underlyingToken, amount);
    }

    /**
     * @dev Transfer an amount from one tick to another
     * @param currentTick Tick for which the deposited amount will decrease
     * @param newTick Tick for which the deposited amount will increase
     * @param amount The transferred amount
     */
    function updateTicksDeposit(
        PoolDataTypes.Tick storage currentTick,
        PoolDataTypes.Tick storage newTick,
        uint256 amount
    ) external {
        currentTick.depositedAmount -= amount;
        newTick.depositedAmount += amount;
    }

    /**
     * @dev Derive the allowed amount to be withdrawn
     *      The sequence of conditional branches is relevant for correct logic
     *      Decrease tick deposited amount if the contract is in the Book Building phase
     * @param tick The tick
     * @param issuancePhase The current issuance phase
     * @param depositedAmount The original deposited amount in the position
     * @param didPartiallyWithdraw True if the position has already been partially withdrawn
     * @param denominator The denominator value
     * @return amountToWithdraw The allowed amount to be withdrawn
     * @return partialWithdrawPartialFilledTick True if it is a partial withdraw
     */
    function withdrawFromTick(
        PoolDataTypes.Tick storage tick,
        PoolDataTypes.PoolPhase issuancePhase,
        uint256 depositedAmount,
        bool didPartiallyWithdraw,
        uint256 denominator
    ) external returns (uint256 amountToWithdraw, bool partialWithdrawPartialFilledTick) {
        /// @dev The order of conditional statements in this function is relevant to the correctness of the logic
        if (issuancePhase == PoolDataTypes.PoolPhase.BOOK_BUILDING) {
            amountToWithdraw = depositedAmount;
            tick.depositedAmount -= amountToWithdraw;
            return (amountToWithdraw, false);
        }

        // partial withdraw during borrow before repay
        if (
            !didPartiallyWithdraw &&
            tick.borrowedAmount > 0 &&
            tick.borrowedAmount < tick.depositedAmount &&
            (issuancePhase == PoolDataTypes.PoolPhase.ISSUED || issuancePhase == PoolDataTypes.PoolPhase.DEFAULT)
        ) {
            amountToWithdraw = depositedAmount.mul(tick.depositedAmount - tick.borrowedAmount, denominator).div(
                tick.depositedAmount,
                denominator
            );
            return (amountToWithdraw, true);
        }

        // if tick was not matched
        if (tick.borrowedAmount == 0 && issuancePhase != PoolDataTypes.PoolPhase.CANCELLED) {
            return (depositedAmount, false);
        }

        // If bond has been paid in full, partially or issuance was cancelled
        if (
            (tick.depositedAmount == tick.borrowedAmount && tick.repaidAmount > 0) ||
            issuancePhase == PoolDataTypes.PoolPhase.CANCELLED
        ) {
            amountToWithdraw = depositedAmount.mul(tick.repaidAmount, denominator).div(
                tick.depositedAmount,
                denominator
            );
            return (amountToWithdraw, false);
        }

        // If bond has been paid back partially or fully and the tick was partially filled
        if (tick.depositedAmount > tick.borrowedAmount && tick.repaidAmount != 0) {
            uint256 noneBorrowedAmountToWithdraw = didPartiallyWithdraw
                ? 0
                : depositedAmount.mul(tick.depositedAmount - tick.borrowedAmount, denominator).div(
                    tick.depositedAmount,
                    denominator
                );
            amountToWithdraw =
                depositedAmount.mul(tick.repaidAmount, denominator).div(tick.depositedAmount, denominator) +
                noneBorrowedAmountToWithdraw;
            return (amountToWithdraw, false);
        }

        revert SingleBondIssuanceErrors.SBI_WITHDRAWAL_NOT_ALLOWED(issuancePhase);
    }

    /**
     * @dev Register borrowed amount in tick and compute the value of emitted bonds at maturity
     * @param amountToBorrow The amount to borrow
     * @param tick The tick
     * @param rate The rate of the tick
     * @param maturity The maturity of the loan
     * @param denominator The denominator value
     * @return borrowComplete True if the deposited amount of the tick is larger than the amount to borrow
     * @return remainingAmount Remaining amount to borrow
     * @return deltaTheoreticalPoolNotional The value of emitted bonds at maturity
     */
    function borrowFromTick(
        uint256 amountToBorrow,
        PoolDataTypes.Tick storage tick,
        uint256 rate,
        uint256 maturity,
        uint256 denominator
    )
        external
        returns (
            bool borrowComplete,
            uint256 remainingAmount,
            uint256 deltaTheoreticalPoolNotional
        )
    {
        if (tick.depositedAmount == 0) return (false, amountToBorrow, 0);

        if (tick.depositedAmount < amountToBorrow) {
            amountToBorrow -= tick.depositedAmount;
            tick.borrowedAmount += tick.depositedAmount;
            deltaTheoreticalPoolNotional = tick.depositedAmount.div(
                TimeValue.getDiscountFactor(rate, maturity, denominator),
                denominator
            );
            return (false, amountToBorrow, deltaTheoreticalPoolNotional);
        }

        if (tick.depositedAmount >= amountToBorrow) {
            tick.borrowedAmount += amountToBorrow;
            deltaTheoreticalPoolNotional = amountToBorrow.div(
                TimeValue.getDiscountFactor(rate, maturity, denominator),
                denominator
            );
            return (true, 0, deltaTheoreticalPoolNotional);
        }
    }

    /**
     * @dev Register repaid amount in tick
     * @param tick The tick
     * @param rate The rate of the tick
     * @param borrowTimeStamp The borrow timestamp
     * @param timeDeltaIntoLateRepay Time since late repay threshold
     * @param timeDeltaStandardAccruals Time during which standard accrual is applied
     * @param lateRepaymentRate Late repayment rate
     * @param denominator The denominator value
     * @return amountToRepayForTick Amount to be repaid
     * @return yieldPayed Payed yield
     */
    function repayForTick(
        PoolDataTypes.Tick storage tick,
        uint256 rate,
        uint256 borrowTimeStamp,
        uint256 timeDeltaIntoLateRepay,
        uint256 timeDeltaStandardAccruals,
        uint256 lateRepaymentRate,
        uint256 denominator
    ) external returns (uint256 amountToRepayForTick, uint256 yieldPayed) {
        if (timeDeltaIntoLateRepay > 0) {
            amountToRepayForTick = tick
                .borrowedAmount
                .div(TimeValue.getDiscountFactor(rate, timeDeltaStandardAccruals, denominator), denominator)
                .div(TimeValue.getDiscountFactor(lateRepaymentRate, timeDeltaIntoLateRepay, denominator), denominator);
        } else {
            amountToRepayForTick = tick.borrowedAmount.div(
                TimeValue.getDiscountFactor(rate, block.timestamp - borrowTimeStamp, denominator),
                denominator
            );
        }

        yieldPayed = amountToRepayForTick - tick.borrowedAmount;
        tick.repaidAmount = amountToRepayForTick;
    }

    /**
     * @dev Register repaid amount in tick in the case of a partial repay
     * @param tick The tick
     * @param rate The rate of the tick
     * @param borrowTimeStamp The borrow timestamp
     * @param totalRepaidAmount Amount to be repaid
     * @param poolNotional The value of emitted bonds at maturity
     * @param denominator The denominator value
     */
    function partialRepayForTick(
        PoolDataTypes.Tick storage tick,
        uint256 rate,
        uint256 borrowTimeStamp,
        uint256 totalRepaidAmount,
        uint256 poolNotional,
        uint256 denominator
    ) external {
        uint256 amountToRepayForTick = tick.borrowedAmount.div(
            TimeValue.getDiscountFactor(rate, block.timestamp - borrowTimeStamp, denominator),
            denominator
        );
        tick.repaidAmount = amountToRepayForTick.div(poolNotional, denominator).mul(totalRepaidAmount, denominator);
    }

    /**
     * @dev Distributes escrowed cancellation fee to tick
     * @param tick The tick
     * @param cancellationFeeRate The cancelation fee rate
     * @param remainingEscrow The remaining amount in escrow
     * @param denominator The denominator value
     */
    function repayCancelFeeForTick(
        PoolDataTypes.Tick storage tick,
        uint256 cancellationFeeRate,
        uint256 remainingEscrow,
        uint256 denominator
    ) external returns (uint256 cancelFeeForTick) {
        if (cancellationFeeRate.mul(tick.depositedAmount, denominator) > remainingEscrow) {
            cancelFeeForTick = remainingEscrow;
        } else {
            cancelFeeForTick = cancellationFeeRate.mul(tick.depositedAmount, denominator);
        }
        tick.repaidAmount = tick.depositedAmount + cancelFeeForTick;
    }
}
