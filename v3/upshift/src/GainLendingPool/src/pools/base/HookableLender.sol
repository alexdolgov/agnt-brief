// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

import "../../loans/interfaces/IHookableLender.sol";
import "./AbstractLender.sol";

/**
 * @title Represents an ERC-4626 lending pool capable of processing hooks on-chain.
 * @dev This contract overrides ERC4626.totalAssets() in order to reflect the risk exposure to loans.
 */
abstract contract HookableLender is IHookableLender, AbstractLender {
    struct LoanDeploymentRecord {
        uint256 effectiveLoanAmount;
        uint256 activeDelta;
        bool isWhitelisted;
    }

    // ---------------------------------------------------------------
    // Storage layout
    // ---------------------------------------------------------------
    /// @notice The current risk exposure to loans
    uint256 public globalLoansAmount;

    /// @dev The current delta of a loan
    mapping (address => LoanDeploymentRecord) internal _deployedLoans;

    // ---------------------------------------------------------------
    // Modifiers
    // ---------------------------------------------------------------
    modifier onlyKnownLoanContract() {
        if (!_deployedLoans[msg.sender].isWhitelisted) revert UnknownLoan();
        _;
    }

    // ---------------------------------------------------------------
    // Hooks implementation
    // ---------------------------------------------------------------
    function notifyLoanMatured() external override nonReentrant ifConfigured onlyKnownLoanContract {
        if (_deployedLoans[msg.sender].activeDelta > 0) globalLoansAmount -= _deployedLoans[msg.sender].activeDelta;
        _deployedLoans[msg.sender].activeDelta = 0;
    }

    function notifyLoanClosed() external override nonReentrant ifConfigured onlyKnownLoanContract {
        if (_deployedLoans[msg.sender].activeDelta > 0) globalLoansAmount -= _deployedLoans[msg.sender].activeDelta;
        _deployedLoans[msg.sender].activeDelta = 0;
    }

    function notifyPrincipalRepayment(
        uint256 effectiveLoanAmount, 
        uint256 principalRepaid
    ) external override nonReentrant ifConfigured onlyKnownLoanContract {
        uint256 newDelta = (principalRepaid < effectiveLoanAmount) ? effectiveLoanAmount - principalRepaid : 0;

        if (_deployedLoans[msg.sender].activeDelta > 0) globalLoansAmount -= _deployedLoans[msg.sender].activeDelta;
        _deployedLoans[msg.sender].activeDelta = newDelta;

        if (newDelta > 0) globalLoansAmount += newDelta;
    }

    function _ensureValidLoan(address loanAddr) internal view override {
        if (!_deployedLoans[loanAddr].isWhitelisted) revert UnknownLoan();
    }

    // ---------------------------------------------------------------
    // ERC-4626 overrides
    // ---------------------------------------------------------------
    function _getTotalAssets() internal view virtual override returns (uint256) {
        // [Liquidity] + [the delta of all ACTIVE loans managed by this pool]
        return globalLoansAmount + _underlyingAsset.balanceOf(address(this));
    }
}
