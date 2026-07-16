// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

import "../../loans/interfaces/IPermissionlessLoansDeployer.sol";
import "./HookableLender.sol";

/**
 * @title Represents a base lending pool.
 * @dev The pool is capable of deploying and funding loans on their own. It is also capable of receiving hooks on-chain.
 */
abstract contract BaseLendingPool is HookableLender {
    /// @notice The address of the contract that deploys loans.
    address public loansDeployerAddress;

    /// @notice The list of all loans deployed by the lending pool
    address[] public loansDeployed;

    /// @notice Triggers when the lending pool deploys a new loan.
    event NewLoanDeployedByPool(address loanAddr, uint256 aprWithTwoDecimals);

    /**
     * @notice Deploys a new loan on behalf of the Credit Pool. This contract acts as a lender.
     * @param loanParams The parameters of the loan to deploy.
     * @return address The address of the newly deployed loan.
     */
    function deployLoan(
        LoanDeploymentParams memory loanParams
    ) external nonReentrant ifConfigured onlyLoansOperator returns (address) {
        loanParams.lenderAddr = address(this);

        address loanAddr = IPermissionlessLoansDeployer(loansDeployerAddress).deployLoan(loanParams);

        // This should never happen because the loan was deployed via CREATE rather than CREATE2
        if (_deployedLoans[loanAddr].isWhitelisted) revert InvalidDeploymentAddress();

        uint256 effectiveLoanAmount = IPeerToPeerOpenTermLoan(loanAddr).effectiveLoanAmount();

        _deployedLoans[loanAddr] = LoanDeploymentRecord({
            effectiveLoanAmount: effectiveLoanAmount,
            activeDelta: 0,
            isWhitelisted: true
        });

        loansDeployed.push(loanAddr);

        emit NewLoanDeployedByPool(loanAddr, loanParams.newAprWithTwoDecimals);

        return loanAddr;
    }

    /**
     * @notice Funds the loan deployed at the address specified.
     * @dev Throws if the loan was not deployed by this pool.
     * @param loanAddr The address of the loan.
     */
    function fundLoan(address loanAddr) external override nonReentrant ifConfigured onlyLoansOperator {
        // Trusted queries
        _ensureValidLoan(loanAddr);
        uint256 effectiveLoanAmount = _deployedLoans[loanAddr].effectiveLoanAmount;

        // Trusted changes
        _deployedLoans[loanAddr].activeDelta = effectiveLoanAmount; // The principal repaid at this point in time is zero
        globalLoansAmount += effectiveLoanAmount; // which is "_deployedLoans[loanAddr].activeDelta"

        if (IPeerToPeerOpenTermLoan(loanAddr).loanState() != LOAN_FUNDING_REQUIRED) revert InvalidLoanState();

        // Untrusted changes
        SafeERC20.safeApprove(_underlyingAsset, loanAddr, effectiveLoanAmount);
        IPeerToPeerOpenTermLoan(loanAddr).fundLoan();
        SafeERC20.safeApprove(_underlyingAsset, loanAddr, uint256(0));

        // Late checks
        if (IPeerToPeerOpenTermLoan(loanAddr).loanState() != LOAN_ACTIVE) revert FundingCheckFailed();
        if (_underlyingAsset.allowance(address(this), loanAddr) > uint256(0)) revert AllowanceCheckFailed();
    }

    /**
     * @notice Collects the fees available in the pool. Fees are sent to the fee collector address.
     */
    function collectFees() external nonReentrant ifConfigured onlyOwner {        
        uint256 feesAmount = totalCollectableFees;

        totalCollectableFees = 0;
        SafeERC20.safeTransfer(_underlyingAsset, feesCollector, feesAmount);
    }

    /**
     * @notice Gets the total number of loans deployed by the pool.
     * @return uint256 The total number of loans deployed by the pool.
     */
    function getTotalLoansDeployed() external view returns (uint256) {
        return loansDeployed.length;
    }
}
