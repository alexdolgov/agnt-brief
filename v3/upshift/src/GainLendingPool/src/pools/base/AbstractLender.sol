// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

import "../../loans/interfaces/IPeerToPeerOpenTermLoan.sol";
import "./OwnableLiquidityPool.sol";

/**
 * @title Represents an ERC-4626 compliant liquidity pool capable of lending funds on their own.
 * @dev This liquidity pool is ownable by definition.
 */
abstract contract AbstractLender is OwnableLiquidityPool {
    /// @notice The address of the Loans Operator
    address public loansOperator;

    // ---------------------------------------------------------------
    // Modifiers
    // ---------------------------------------------------------------
    modifier onlyLoansOperator() {
        if (msg.sender != loansOperator) revert OnlyLoansOperator();
        _;
    }

    // ---------------------------------------------------------------
    // Implementation functions
    // ---------------------------------------------------------------
    /**
     * @notice As a lender, this pool proposes a new APR to the borrower of the loan address specified.
     * @param loanAddr The address of the loan.
     * @param newAprWithTwoDecimals The APR proposed by this pool, expressed with 2 decimal places.
     */
    function proposeNewApr(
        address loanAddr, 
        uint256 newAprWithTwoDecimals
    ) external nonReentrant ifConfigured onlyLoansOperator {
        _ensureValidLoan(loanAddr);
        IPeerToPeerOpenTermLoan(loanAddr).proposeNewApr(newAprWithTwoDecimals);
    }

    /**
     * @notice Updates the late fees of the loan specified.
     * @param loanAddr The address of the loan.
     * @param lateInterestFeeWithTwoDecimals The late interest fee (percentage) with 2 decimal places.
     * @param latePrincipalFeeWithTwoDecimals The late principal fee (percentage) with 2 decimal places.
     */
    function changeLateFees(
        address loanAddr, 
        uint256 lateInterestFeeWithTwoDecimals, 
        uint256 latePrincipalFeeWithTwoDecimals
    ) external nonReentrant ifConfigured onlyLoansOperator {
        _ensureValidLoan(loanAddr);
        IPeerToPeerOpenTermLoan(loanAddr).changeLateFees(lateInterestFeeWithTwoDecimals, latePrincipalFeeWithTwoDecimals);
    }

    /**
     * @notice Updates the maintenance collateral ratio
     * @param loanAddr The address of the loan.
     * @param maintenanceCollateralRatioWith2Decimals The maintenance collateral ratio, if applicable.
     */
    function changeMaintenanceCollateralRatio(
        address loanAddr, 
        uint256 maintenanceCollateralRatioWith2Decimals
    ) external nonReentrant ifConfigured onlyLoansOperator {
        _ensureValidLoan(loanAddr);
        IPeerToPeerOpenTermLoan(loanAddr).changeMaintenanceCollateralRatio(maintenanceCollateralRatioWith2Decimals);
    }

    /**
     * @notice Calls the loan specified.
     * @param loanAddr The address of the loan.
     * @param callbackPeriodInHours The callback period, measured in hours.
     * @param gracePeriodInHours The grace period, measured in hours.
     */
    function callLoan(
        address loanAddr, 
        uint256 callbackPeriodInHours, 
        uint256 gracePeriodInHours
    ) external nonReentrant ifConfigured onlyLoansOperator {
        _ensureValidLoan(loanAddr);
        IPeerToPeerOpenTermLoan(loanAddr).callLoan(callbackPeriodInHours, gracePeriodInHours);
    }

    /**
     * @notice Liquidates the loan specified.
     * @param loanAddr The address of the loan.
     */
    function liquidate(address loanAddr) external nonReentrant ifConfigured onlyLoansOperator {
        _ensureValidLoan(loanAddr);
        IPeerToPeerOpenTermLoan(loanAddr).liquidate();
    }

    // ---------------------------------------------------------------
    // Virtuals
    // ---------------------------------------------------------------
    function fundLoan(address loanAddr) external virtual;
    function _ensureValidLoan(address loanAddr) internal view virtual;
}
