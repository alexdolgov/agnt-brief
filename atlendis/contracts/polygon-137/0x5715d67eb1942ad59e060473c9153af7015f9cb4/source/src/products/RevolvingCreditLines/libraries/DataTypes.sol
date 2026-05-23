// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

/**
 * @title DataTypes library
 * @dev Defines the structs and enums used by the resolving credit line
 */
library DataTypes {
    struct NewEpochsAmounts {
        uint256 borrowedLoanNewEpochs;
        uint256 toExitNewEpochs;
        uint256 toExitNewEpochsYield;
        uint256 availableToBorrowNew;
    }

    struct Tick {
        uint256 yieldFactor;
        uint256 adjustedDeposits;
        uint256 toBeAdjusted;
        uint256 borrowedLoanBaseEpoch;
        uint256 availableToBorrowBase;
        uint256 loanStartEpochId;
        uint256 currentEpochId;
        uint256 lastBorrowTimeStamp;
        uint256 amountToPayBack;
        uint256 toExitBaseAdjusted;
        NewEpochsAmounts newEpochsAmounts;
        mapping(uint256 => Epoch) epochs;
        mapping(uint256 => uint256) endOfLoanYieldFactors;
    }
    struct Epoch {
        uint256 borrowed;
        uint256 deposited;
        uint256 endOfLoanAccruedYield;
        uint256 loanId;
        bool isBaseEpoch;
        uint256 toExit;
    }

    enum OrderBookPhase {
        INACTIVE,
        OPEN,
        CLOSED,
        PARTIAL_DEFAULT,
        DEFAULT
    }

    struct Position {
        uint256 baseDeposit;
        uint256 rate;
        uint256 epochId;
        uint256 creationTimestamp;
        uint256 exitLoanId;
    }
}
