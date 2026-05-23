// SPDX-License-Identifier: GPLv3
pragma solidity ^0.8.24;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

/**
 * @title CreditLib
 * @dev Library for managing credit-related operations
 * @custom:security-contact tech@ethichub.com
 */
library CreditLib {
    uint256 public constant REPAY_ALL = type(uint256).max;
    uint256 public constant RESOLUTION = 1 ether;
    uint256 public constant MAX_INTEREST_PS = 31709791983; // 100% (1 in ether) / 365 in seconds
    uint256 public constant ONE_YEAR_SECONDS = 365 days;

    /**
     * @dev Struct representing a credit
     */
    struct Credit {
        uint256 principal;
        uint256 available;
        uint256 borrowed;
        uint256 debt;
        uint256 repaid;
        uint256 accruedInterest;
        uint256 interestPs;
        uint256 endTimestamp;
        uint256 checkPoint;
        uint256 fees;
        bool paidFees;
    }

    error NonAvailable();
    error MaturityReached();
    error BorrowingHasStarted();
    error AmountToRepayTooSmall();

    /**
     * @dev Borrow from the credit
     * @param cr The Credit struct
     * @param amount The amount to borrow
     * @return loan The borrowed amount
     */
    function _borrow(
        Credit storage cr,
        uint256 amount
    ) internal returns (uint256 loan) {
        if (_maturityReached(cr)) revert MaturityReached();
        if (cr.available == 0) revert NonAvailable();
        _incrementAccruedInterest(cr);
        if (amount > cr.available - _nonAccruedInterest(cr))
            amount = cr.available - _nonAccruedInterest(cr);
        cr.available = cr.available - amount - _nonAccruedInterest(cr);
        cr.debt = cr.debt + _nonAccruedInterest(cr) + amount;
        cr.borrowed += amount;
        _setCheckpoint(cr);
        return amount;
    }

    /**
     * @dev Repay the credit
     * @param cr The Credit struct
     * @param amount The amount to repay
     * @return repayment The repaid amount
     */
    function _repay(
        Credit storage cr,
        uint256 amount
    ) internal returns (uint256 repayment) {
        _incrementAccruedInterest(cr);
        if (amount == REPAY_ALL || amount > cr.debt + _nonAccruedInterest(cr)) {
            amount = cr.debt + _nonAccruedInterest(cr);
        }
        if (_nonAccruedInterest(cr) > cr.available + amount)
            revert AmountToRepayTooSmall();
        cr.available = cr.available + amount - _nonAccruedInterest(cr);
        cr.debt = cr.debt + _nonAccruedInterest(cr) - amount;
        cr.repaid += amount;
        _setCheckpoint(cr);
        return amount;
    }

    /**
     * @dev Increment accrued interest
     * @param cr The Credit struct
     * @return The updated accrued interest
     */
    function _incrementAccruedInterest(Credit storage cr) internal returns (uint256) {
        cr.accruedInterest += _nonAccruedInterest(cr);
        return cr.accruedInterest;
    }

    /**
     * @dev Set checkpoint
     * @param cr The Credit struct
     * @return The updated checkpoint
     */
    function _setCheckpoint(Credit storage cr) internal returns (uint256) {
        cr.checkPoint = block.timestamp;
        return cr.checkPoint;
    }

    /**
     * @dev Open a new credit
     * @param principal The principal amount
     * @param interestPs The interest per second
     * @param duration The duration of the credit
     * @param fees The fees associated with the credit
     * @return A new Credit struct
     */
    function _openCredit(
        uint256 principal,
        uint256 interestPs,
        uint256 duration,
        uint256 fees
    ) internal view returns (Credit memory) {
        return
            Credit({
                principal: principal,
                available: principal,
                borrowed: 0,
                debt: 0,
                interestPs: interestPs,
                repaid: 0,
                endTimestamp: block.timestamp + duration,
                checkPoint: block.timestamp,
                accruedInterest: 0,
                fees: fees,
                paidFees: fees == 0 ? true : false
            });
    }

    function _maturityReached(Credit memory cr) internal view returns (bool) {
        return block.timestamp > cr.endTimestamp;
    }

    function _nonAccruedInterest(
        Credit memory cr
    ) internal view returns (uint256) {
        uint256 deltaTime = block.timestamp - cr.checkPoint;
        uint256 feeRate = Math.mulDiv(cr.interestPs, deltaTime, 1);
        return Math.mulDiv(cr.debt, feeRate, RESOLUTION);
    }

    function _currentDebt(Credit memory cr) internal view returns (uint256) {
        return cr.debt + _nonAccruedInterest(cr);
    }

    function _updateCredit(
        uint256 principal,
        uint256 interestPs,
        uint256 duration,
        uint256 fees,
        Credit memory prev
    ) internal view returns (Credit memory) {
        Credit memory current = CreditLib._openCredit(
            principal,
            interestPs,
            duration,
            fees
        );
        // Update params from prev credit
        current.debt = prev.debt;
        current.available = current.principal - prev.debt;
        fees = (prev.fees > fees) ? prev.fees : fees;
        current.fees = prev.paidFees ? fees - prev.fees : fees;
        current.paidFees = (current.fees == 0) ? true : false;
        if (!_isRepaid(prev) && prev.principal < current.principal)
            current.accruedInterest = _nonAccruedInterest(prev);
        else
            current.accruedInterest = 0;
        return current;
    }

    function _isRepaid(Credit memory cr) internal pure returns (bool) {
        return cr.repaid != 0 && cr.debt == 0;
    }

    function _startedBorrowing(Credit memory cr) internal pure returns (bool) {
        return cr.borrowed != 0;
    }

    function _equals(
        Credit memory first,
        Credit memory second
    ) internal pure returns (bool) {
        return (keccak256(
            abi.encodePacked(
                first.principal,
                first.available,
                first.borrowed,
                first.debt,
                first.repaid,
                first.accruedInterest,
                first.interestPs,
                first.endTimestamp,
                first.checkPoint,
                first.fees,
                first.paidFees
            )
        ) ==
            keccak256(
                abi.encodePacked(
                    second.principal,
                    second.available,
                    second.borrowed,
                    second.debt,
                    second.repaid,
                    second.accruedInterest,
                    second.interestPs,
                    second.endTimestamp,
                    second.checkPoint,
                    second.fees,
                    second.paidFees
                )
            ));
    }

    function _emptyCredit() internal pure returns (Credit memory) {
        return
            Credit({
                principal: 0,
                available: 0,
                borrowed: 0,
                debt: 0,
                interestPs: 0,
                repaid: 0,
                endTimestamp: 0,
                checkPoint: 0,
                accruedInterest: 0,
                fees: 0,
                paidFees: false
            });
    }

    function _isEmptyCredit(Credit memory cr) internal pure returns (bool) {
        return cr.endTimestamp == 0 && cr.checkPoint == 0;
    }
}
