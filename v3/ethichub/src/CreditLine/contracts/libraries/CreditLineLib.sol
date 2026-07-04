// SPDX-License-Identifier: GPLv3
pragma solidity ^0.8.24;

import {CreditLib} from "./CreditLib.sol";

/**
 * @title CreditLineLib
 * @dev Library for managing credit lines and associated operations
 * @author EthicHub
 */
library CreditLineLib {
    using CreditLib for CreditLib.Credit;

    // Struct definitions
    struct CreditLine {
        address auditor;
        Fees collateralFees;
        Fees platformFees;
        Fees auditorFees;
        uint256 totalRepaid;
        uint256 totalBorrowed;
        uint256 totalPaidFees;
        CreditLib.Credit[] credits;
        address principalToken;
    }

    struct Fees {
        uint256 percentage;
        address reserve;
        uint256 unclaimed;
    }

    error BorrowingHasStarted();
    error BorrowAmountMinorFees();
    error NoCreditYet();
    error FeesAlreadyPaid(CreditLineLib.CreditLine creditLine);
    error InvalidPercentage();

    /**
     * @notice Borrow from the current credit in the credit line
     * @param creditLine The credit line to borrow from
     * @param amount The amount to borrow
     * @return The borrowed amount
     */
    function _borrow(
        CreditLine storage creditLine,
        uint256 amount
    ) internal returns (uint256) {
        if (creditLine.credits.length == 0) revert NoCreditYet();
        CreditLib.Credit storage currentCr = creditLine.credits[
            creditLine.credits.length - 1
        ];
        if (!currentCr.paidFees) {
            uint256 fees = _getCreditFees(creditLine, currentCr.principal);
            if (amount < fees) revert BorrowAmountMinorFees();
        }
        uint256 borrowed = currentCr._borrow(amount);
        creditLine.totalBorrowed += borrowed;
        return borrowed;
    }

    /**
     * @notice Repay to the current credit in the credit line
     * @param creditLine The credit line to repay to
     * @param amount The amount to repay
     * @return The repaid amount
     */
    function _repay(
        CreditLine storage creditLine,
        uint256 amount
    ) internal returns (uint256) {
        if (creditLine.credits.length == 0) revert NoCreditYet();
        CreditLib.Credit storage currentCr = creditLine.credits[
            creditLine.credits.length - 1
        ];
        uint256 repayment = currentCr._repay(amount);
        creditLine.totalRepaid += repayment;
        return repayment;
    }

    /**
     * @notice Set percentages for collateral, platform, and auditor fees
     * @param creditLine The credit line to update
     * @param collateralPercentage The collateral fee percentage (in wei)
     * @param platformPercentage The platform fee percentage (in wei)
     * @param auditorPercentage The auditor fee percentage (in wei)
     */
    function _setPercentages(
        CreditLine storage creditLine,
        uint256 collateralPercentage,
        uint256 platformPercentage,
        uint256 auditorPercentage
    ) internal {
        if (collateralPercentage > 1 ether) revert InvalidPercentage();
        if (platformPercentage > 1 ether) revert InvalidPercentage();
        if (auditorPercentage > 1 ether) revert InvalidPercentage();
        creditLine.collateralFees.percentage = collateralPercentage;
        creditLine.platformFees.percentage = platformPercentage;
        creditLine.auditorFees.percentage = auditorPercentage;
    }

    /**
     * @notice Set reserve addresses for collateral, platform, and auditor
     * @param creditLine The credit line to update
     * @param collateralReserve The collateral reserve address
     * @param platformReserve The platform reserve address
     * @param auditorReserve The auditor reserve address
     */
    function _setReserves(
        CreditLine storage creditLine,
        address collateralReserve,
        address platformReserve,
        address auditorReserve
    ) internal {
        creditLine.collateralFees.reserve = collateralReserve;
        creditLine.platformFees.reserve = platformReserve;
        creditLine.auditorFees.reserve = auditorReserve;
    }

    /**
     * @notice Set principal token address
     * @param creditLine The credit line to update
     * @param principalToken The principal token address
     */
    function _setPrincipalToken(
        CreditLine storage creditLine,
        address principalToken
    ) internal {
        creditLine.principalToken = principalToken;
    }

    /**
     * @notice Pay fees for a specific credit in the credit line
     * @param creditLine The credit line containing the credit
     * @param currentCredit The specific credit to pay fees for
     * @param prevCredit The previous credit
     */
    function _payCreditFees(
        CreditLine storage creditLine,
        CreditLib.Credit storage currentCredit,
        CreditLib.Credit memory prevCredit
    ) internal {
        if (!currentCredit.paidFees) {
            uint256 currentCollateralFees = _getCollateralFees(creditLine, currentCredit.principal);
            uint256 currentPlatformFees = _getPlatformFees(creditLine, currentCredit.principal);
            uint256 currentAuditorFees = _getAuditorFees(creditLine, currentCredit.principal);
            uint256 prevCollateralFees = _getCollateralFees(creditLine, prevCredit.principal);
            uint256 prevPlatformFees = _getPlatformFees(creditLine, prevCredit.principal);
            uint256 prevAuditorFees = _getAuditorFees(creditLine, prevCredit.principal);
            creditLine.collateralFees.unclaimed = creditLine.collateralFees.unclaimed == 0 && prevCredit.borrowed != 0
                ? currentCollateralFees - prevCollateralFees
                : currentCollateralFees;
            creditLine.platformFees.unclaimed = creditLine.platformFees.unclaimed == 0 && prevCredit.borrowed != 0
                ? currentPlatformFees - prevPlatformFees
                : currentPlatformFees;
            creditLine.auditorFees.unclaimed = creditLine.auditorFees.unclaimed == 0 && prevCredit.borrowed != 0
                ? currentAuditorFees - prevAuditorFees
                : currentAuditorFees;
            creditLine.totalPaidFees += currentCredit.fees;
            creditLine.totalRepaid += currentCredit.fees;
            currentCredit.paidFees = true;
        }
    }

    /**
     * @notice Add a new credit to the credit line
     * @param creditLine The credit line to add the credit to
     * @param credit The credit to add
     */
    function _setCredit(
        CreditLine storage creditLine,
        CreditLib.Credit memory credit
    ) internal {
        creditLine.credits.push(credit);
    }

    /**
     * @notice Remove the current (most recent) credit from the credit line
     * @param creditLine The credit line to remove the credit from
     */
    function _removeCurrentCredit(CreditLine storage creditLine) internal {
        if (creditLine.credits.length == 0) revert NoCreditYet();
        CreditLib.Credit memory currentCr = _currentCredit(creditLine);
        if (CreditLib._startedBorrowing(currentCr)) revert BorrowingHasStarted();
        creditLine.credits.pop();
    }

    /**
     * @notice Get the current (most recent) credit from the credit line
     * @param creditLine The credit line to get the current credit from
     * @return The current credit
     */
    function _currentCredit(
        CreditLine memory creditLine
    ) internal pure returns (CreditLib.Credit memory) {
        if (creditLine.credits.length == 0) {
            return CreditLib._emptyCredit();
        }
        return creditLine.credits[creditLine.credits.length - 1];
    }

    /**
     * @notice Get the total number of credits in the credit line
     * @param creditLine The credit line to count credits for
     * @return The number of credits
     */
    function _creditsConceded(
        CreditLine memory creditLine
    ) internal pure returns (uint256) {
        return creditLine.credits.length;
    }

    /**
     * @notice Get a specific credit from the credit line by index
     * @param creditLine The credit line to get the credit from
     * @param index The index of the credit to retrieve
     * @return The credit at the specified index
     */
    function _creditAtIndex(
        CreditLine memory creditLine,
        uint256 index
    ) internal pure returns (CreditLib.Credit memory) {
        if (creditLine.credits.length == 0) revert NoCreditYet();
        return creditLine.credits[index];
    }

    /**
     * @notice Calculate the total fees for a credit
     * @param creditLine The credit line containing the fee percentages
     * @param principal The principal amount to calculate fees for
     * @return The total fees
     */
    function _getCreditFees(
        CreditLine memory creditLine,
        uint256 principal
    ) internal pure returns (uint256) {
        uint256 collateralAmount = (principal *
            creditLine.collateralFees.percentage) / 1 ether;
        uint256 platformAmount = (principal *
            creditLine.platformFees.percentage) / 1 ether;
        uint256 auditorAmount = (principal *
            creditLine.auditorFees.percentage) / 1 ether;
        return (collateralAmount + platformAmount + auditorAmount);
    }

    /**
     * @notice Calculate the collateral fees for a credit
     * @param creditLine The credit line containing the fee percentages
     * @param principal The principal amount to calculate fees for
     * @return The collateral fees
     */
    function _getCollateralFees(
        CreditLine memory creditLine,
        uint256 principal
    ) internal pure returns (uint256) {
        uint256 collateralAmount = (principal *
            creditLine.collateralFees.percentage) / 1 ether;
        return collateralAmount;
    }

    /**
     * @notice Calculate the platform fees for a credit
     * @param creditLine The credit line containing the fee percentages
     * @param principal The principal amount to calculate fees for
     * @return The platform fees
     */
    function _getPlatformFees(
        CreditLine memory creditLine,
        uint256 principal
    ) internal pure returns (uint256) {
        uint256 platformAmount = (principal *
            creditLine.platformFees.percentage) / 1 ether;
        return platformAmount;
    }

    /**
     * @notice Calculate the auditor fees for a credit
     * @param creditLine The credit line containing the fee percentages
     * @param principal The principal amount to calculate fees for
     * @return The auditor fees
     */
    function _getAuditorFees(
        CreditLine memory creditLine,
        uint256 principal
    ) internal pure returns (uint256) {
        uint256 auditorAmount = (principal *
            creditLine.auditorFees.percentage) / 1 ether;
        return auditorAmount;
    }

    /**
     * @notice Get the total unclaimed fees for a credit line
     * @param creditLine The credit line to calculate unclaimed fees for
     * @return The total unclaimed fees
     */
    function _getUnclaimedCreditLineFees(
        CreditLine memory creditLine
    ) internal pure returns (uint256) {
        uint256 unclaimedCollateralFees = creditLine.collateralFees.unclaimed;
        uint256 unclaimedPlatformFees = creditLine.platformFees.unclaimed;
        uint256 unclaimedAuditorFees = creditLine.auditorFees.unclaimed;
        return
            unclaimedCollateralFees +
            unclaimedPlatformFees +
            unclaimedAuditorFees;
    }

    /**
     * @notice Create an empty credit line
     * @return An empty CreditLine struct
     */
    function _emptyCreditLine() internal pure returns (CreditLine memory) {
        return
            CreditLine({
                collateralFees: Fees(0, address(0), 0),
                platformFees: Fees(0, address(0), 0),
                auditorFees: Fees(0, address(0), 0),
                totalRepaid: 0,
                totalBorrowed: 0,
                totalPaidFees: 0,
                auditor: address(0),
                credits: new CreditLib.Credit[](0),
                principalToken: address(0)
            });
    }

    /**
     * @notice Check if a credit line is empty (has no credits)
     * @param creditLine The credit line to check
     * @return True if the credit line is empty, false otherwise
     */
    function _isEmptyCreditLine(
        CreditLine memory creditLine
    ) internal pure returns (bool) {
        return creditLine.credits.length == 0;
    }
}
