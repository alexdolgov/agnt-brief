// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

interface IHookableLender {
    function notifyLoanClosed() external;
    function notifyLoanMatured() external;
    function notifyPrincipalRepayment(uint256 effectiveLoanAmount, uint256 principalRepaid) external;
}
