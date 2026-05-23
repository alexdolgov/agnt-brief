// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import 'lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol';

import '../../../libraries/FixedPointMathLib.sol';
import './../libraries/PoolDataTypes.sol';
import './../libraries/PositionDataTypes.sol';
import './../libraries/SingleBondIssuanceLogic.sol';
import './interfaces/ISBIBorrowers.sol';
import './SBIPool.sol';

/**
 * @title SBIBorrowers
 * @author Atlendis Labs
 * @notice Implementation of the ISBIBorrowers
 */
abstract contract SBIBorrowers is ISBIBorrowers, SBIPool {
    /*//////////////////////////////////////////////////////////////
                                LIBRARIES
    //////////////////////////////////////////////////////////////*/

    using FixedPointMathLib for uint256;

    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/
    uint256 public borrowTimestamp;
    uint256 public atlendisRevenue;
    uint256 public theoreticalPoolNotional;

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

    function borrow(address to) external onlyBorrower onlyInPhase(PoolDataTypes.PoolPhase.ISSUANCE) {
        if (block.timestamp > ISSUANCE_PHASE_START_TIMESTAMP + ISSUANCE_PERIOD_DURATION) {
            revert SingleBondIssuanceErrors.SBI_ISSUANCE_PHASE_EXPIRED();
        }
        uint256 borrowedAmount = deposits < TARGET_ISSUANCE_AMOUNT ? deposits : TARGET_ISSUANCE_AMOUNT;
        if (borrowedAmount == 0) {
            revert SingleBondIssuanceErrors.SBI_ZERO_BORROW_AMOUNT_NOT_ALLOWED();
        }
        poolPhase = PoolDataTypes.PoolPhase.ISSUED;
        uint256 issuanceFee = ISSUANCE_FEE_PC.mul(borrowedAmount, TOKEN_DENOMINATOR);
        atlendisRevenue += issuanceFee;
        bool borrowComplete = false;
        uint256 currentInterestRate = MIN_RATE;
        uint256 deltaTheoreticalPoolNotional;
        uint256 remainingAmount = borrowedAmount;
        while (remainingAmount > 0 && currentInterestRate <= MAX_RATE && !borrowComplete) {
            if (ticks[currentInterestRate].depositedAmount > 0) {
                (borrowComplete, remainingAmount, deltaTheoreticalPoolNotional) = SingleBondIssuanceLogic
                    .borrowFromTick(
                        remainingAmount,
                        ticks[currentInterestRate],
                        currentInterestRate,
                        LOAN_DURATION,
                        TOKEN_DENOMINATOR
                    );
                theoreticalPoolNotional += deltaTheoreticalPoolNotional;
            }
            currentInterestRate += RATE_SPACING;
        }
        if (remainingAmount > 0) {
            revert SingleBondIssuanceErrors.SBI_NOT_ENOUGH_FUNDS_AVAILABLE();
        }

        borrowTimestamp = block.timestamp;
        SingleBondIssuanceLogic.transferERC20(
            to,
            UNDERLYING_TOKEN,
            borrowedAmount - issuanceFee + cancellationFeeEscrow
        );

        emit Borrowed(msg.sender, address(this), borrowedAmount, issuanceFee, cancellationFeeEscrow);
    }

    function repay() external onlyBorrower onlyInPhase(PoolDataTypes.PoolPhase.ISSUED) {
        if (block.timestamp < borrowTimestamp + LOAN_DURATION) {
            revert SingleBondIssuanceErrors.SBI_EARLY_REPAY_NOT_ALLOWED();
        }
        uint256 lateRepaymentThreshold = borrowTimestamp + LOAN_DURATION + REPAYMENT_PERIOD_DURATION;
        uint256 timeDeltaIntoLateRepay = (block.timestamp > lateRepaymentThreshold)
            ? block.timestamp - lateRepaymentThreshold
            : 0;
        uint256 currentInterestRate = MIN_RATE;
        uint256 repaidAmount;
        uint256 interestToRepay;
        while (currentInterestRate <= MAX_RATE) {
            PoolDataTypes.Tick storage tick = ticks[currentInterestRate];
            if (tick.borrowedAmount > 0) {
                (uint256 amountToRepayForTick, uint256 interestRepayedForTick) = SingleBondIssuanceLogic.repayForTick(
                    tick,
                    currentInterestRate,
                    borrowTimestamp,
                    timeDeltaIntoLateRepay,
                    LOAN_DURATION + REPAYMENT_PERIOD_DURATION,
                    LATE_REPAYMENT_FEE_RATE,
                    TOKEN_DENOMINATOR
                );
                interestToRepay += interestRepayedForTick;
                repaidAmount += amountToRepayForTick;
            }
            currentInterestRate += RATE_SPACING;
        }
        uint256 atlendisFee = interestToRepay.mul(REPAYMENT_FEE_PC, TOKEN_DENOMINATOR);
        atlendisRevenue += atlendisFee;
        poolPhase = PoolDataTypes.PoolPhase.REPAID;
        SingleBondIssuanceLogic.transferERC20From(
            msg.sender,
            address(this),
            UNDERLYING_TOKEN,
            repaidAmount + atlendisFee
        );
        emit Repaid(msg.sender, address(this), repaidAmount, atlendisFee);
    }

    function partialRepay(uint256 amount) external onlyBorrower onlyInPhase(PoolDataTypes.PoolPhase.ISSUED) {
        if (block.timestamp < borrowTimestamp + LOAN_DURATION) {
            revert SingleBondIssuanceErrors.SBI_EARLY_PARTIAL_REPAY_NOT_ALLOWED();
        }
        uint256 currentInterestRate = MIN_RATE;
        while (currentInterestRate <= MAX_RATE) {
            PoolDataTypes.Tick storage tick = ticks[currentInterestRate];
            if (tick.borrowedAmount > 0) {
                SingleBondIssuanceLogic.partialRepayForTick(
                    tick,
                    currentInterestRate,
                    borrowTimestamp,
                    amount,
                    theoreticalPoolNotional,
                    TOKEN_DENOMINATOR
                );
            }
            currentInterestRate += RATE_SPACING;
        }
        poolPhase = PoolDataTypes.PoolPhase.PARTIAL_DEFAULT;
        SingleBondIssuanceLogic.transferERC20From(msg.sender, address(this), UNDERLYING_TOKEN, amount);

        emit PartiallyRepaid(msg.sender, address(this), amount);
    }

    function enableBookBuildingPhase() external onlyBorrower onlyInPhase(PoolDataTypes.PoolPhase.INACTIVE) {
        cancellationFeeEscrow = CANCELLATION_FEE_PC.mul(TARGET_ISSUANCE_AMOUNT, TOKEN_DENOMINATOR);
        SingleBondIssuanceLogic.transferERC20From(msg.sender, address(this), UNDERLYING_TOKEN, cancellationFeeEscrow);
        poolPhase = PoolDataTypes.PoolPhase.BOOK_BUILDING;
        emit BookBuildingPhaseEnabled(address(this), cancellationFeeEscrow);
    }

    function withdrawRemainingEscrow(address to) external onlyBorrower onlyInPhase(PoolDataTypes.PoolPhase.CANCELLED) {
        SingleBondIssuanceLogic.transferERC20(to, UNDERLYING_TOKEN, cancellationFeeEscrow);
        emit EscrowWithdrawn(address(this), cancellationFeeEscrow);
    }
}
