// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

import "../../structs/Types.sol";

interface IPermissionlessLoansDeployer {
    /**
     * @notice Triggers when a new loan is deployed.
     * @param loanAddr The address of the newly deployed loan.
     * @param lenderAddr The lender.
     * @param borrowerAddr The borrower.
     */
    event PermissionlessLoanDeployed(address indexed loanAddr, address indexed lenderAddr, address indexed borrowerAddr);

    function deployLoan(LoanDeploymentParams calldata loanParams) external returns (address);
}
