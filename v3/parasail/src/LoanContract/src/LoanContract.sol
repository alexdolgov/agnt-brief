// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract LoanContract is ReentrancyGuard {
    using SafeERC20 for IERC20;

    // Parties
    address public immutable borrower;
    address public immutable lender;
    address public admin; // externally managed multisig address

    // Assets
    IERC20 public immutable collateralToken;
    IERC20 public immutable loanToken;

    // Terms
    uint256 public collateralAmount; // total collateral required by terms
    uint256 public loanAmount; // total laon required by terms
    uint256 public maturityDate; // unix timestamp

    // Accounting
    uint256 public debt; // remaining debt
    bool public initialLoanFunded; // one-time initial funding flag

    // Events
    event CollateralDeposited(address indexed borrower, uint256 amount);
    event LoanDeposited(address indexed lender, uint256 amount);
    event Borrowed(address indexed borrower, uint256 amount);
    event Repaid(address indexed borrower, uint256 amount);
    event CollateralWithdrawn(address indexed borrower, uint256 amount);
    event CollateralClaimed(address indexed lender, uint256 amount);
    event MaturityDateChanged(uint256 oldDate, uint256 newDate);
    event LoanReclaimed(address indexed lender, uint256 amount);
    event AdminUpdated(address indexed oldAdmin, address indexed newAdmin);

    // --- Custom Errors ---
    error OnlyBorrower();
    error OnlyLender();
    error OnlyAdmin();
    error ZeroAddress();
    error ZeroToken();
    error InvalidAmounts();
    error MaturityInPast();
    error AmountZero();
    error NotMatured();
    error AlreadyFunded();
    error NotFunded();

    modifier onlyBorrower() {
        if (msg.sender != borrower) revert OnlyBorrower();
        _;
    }

    modifier onlyLender() {
        if (msg.sender != lender) revert OnlyLender();
        _;
    }

    modifier onlyAdmin() {
        if (msg.sender != admin) revert OnlyAdmin();
        _;
    }

    constructor(
        address _borrower,
        address _lender,
        address _admin,
        address _collateralToken,
        address _loanToken,
        uint256 _collateralAmount,
        uint256 _loanAmount,
        uint256 _maturityDate
    ) {
        if (_borrower == address(0) || _lender == address(0) || _admin == address(0)) {
            revert ZeroAddress();
        }
        if (_collateralToken == address(0) || _loanToken == address(0)) revert ZeroToken();
        if (!(_collateralAmount > 0 && _loanAmount > 0)) revert InvalidAmounts();
        if (!(_maturityDate > block.timestamp)) revert MaturityInPast();

        borrower = _borrower;
        lender = _lender;
        admin = _admin;
        collateralToken = IERC20(_collateralToken);
        loanToken = IERC20(_loanToken);
        collateralAmount = _collateralAmount;
        loanAmount = _loanAmount;
        maturityDate = _maturityDate;
    }

    // LENDER: deposit the exact full loan amount (single-shot). Cannot deposit again.
    function depositLoan() external onlyLender nonReentrant {
        if (debt > 0 || initialLoanFunded) revert AlreadyFunded();
        initialLoanFunded = true;
        loanToken.safeTransferFrom(msg.sender, address(this), loanAmount);
        emit LoanDeposited(msg.sender, loanAmount);
    }

    // BORROWER: atomically deposit exact collateral and withdraw full loan.
    function depositCollateralAndBorrow() external onlyBorrower nonReentrant {
        if (debt > 0) revert AlreadyFunded();
        if (!initialLoanFunded) revert NotFunded();
        // deposit exact collateral and withdraw full loan
        debt = loanAmount;
        collateralToken.safeTransferFrom(msg.sender, address(this), collateralAmount);
        loanToken.safeTransfer(msg.sender, loanAmount);
        emit CollateralDeposited(msg.sender, collateralAmount);
        emit Borrowed(msg.sender, loanAmount);
    }

    // BORROWER: repays and automatically withdraws newly unlocked proportional collateral.
    function repayAndWithdrawCollateral(uint256 repayAmount) external onlyBorrower nonReentrant {
        if (repayAmount == 0) revert AmountZero();

        uint256 toPay = repayAmount > debt ? debt : repayAmount;
        uint256 newDebt = debt - toPay;

        // Handle decimal normalization for tokens with different decimal places
        uint256 collateralToWithdraw;

        // If this is the final repayment (debt will be 0), withdraw all remaining collateral
        // to avoid rounding dust accumulation
        if (newDebt == 0) {
            collateralToWithdraw = collateralToken.balanceOf(address(this));
        } else {
            collateralToWithdraw = _calculateCollateralToWithdraw(toPay);
        }

        debt = newDebt;

        // transfer repayment and collateral withdrawal
        loanToken.safeTransferFrom(msg.sender, address(this), toPay);
        collateralToken.safeTransfer(msg.sender, collateralToWithdraw);
        emit Repaid(msg.sender, toPay);
        emit CollateralWithdrawn(msg.sender, collateralToWithdraw);
    }

    // LENDER: may reclaim the loan token repaid by borrower, or before the borrower borrows.
    function reclaimLoan() external onlyLender nonReentrant {
        uint256 amount = loanToken.balanceOf(address(this));
        loanToken.safeTransfer(msg.sender, amount);
        emit LoanReclaimed(msg.sender, amount);
    }

    // LENDER: after maturity, lender claims all remaining collateral (i.e., any collateral not already withdrawn by borrower).
    function claimCollateral() external onlyLender nonReentrant {
        if (block.timestamp < maturityDate) revert NotMatured();
        uint256 amount = collateralToken.balanceOf(address(this));
        collateralToken.safeTransfer(msg.sender, amount);
        emit CollateralClaimed(msg.sender, amount);
    }

    // Additional-loan flow removed

    // --- Internal Functions ---
    /**
     * @dev Calculate collateral to withdraw with proper decimal normalization
     * @param repayAmount The amount being repaid
     * @return The amount of collateral to withdraw
     */
    function _calculateCollateralToWithdraw(uint256 repayAmount) internal view returns (uint256) {
        uint8 collateralDecimals = IERC20Metadata(address(collateralToken)).decimals();
        uint8 loanDecimals = IERC20Metadata(address(loanToken)).decimals();

        // If decimals are the same, use simple division
        if (collateralDecimals == loanDecimals) {
            return (repayAmount * collateralAmount) / loanAmount;
        }

        // Normalize both amounts to the same decimal scale (use the higher precision)
        uint8 maxDecimals = collateralDecimals > loanDecimals ? collateralDecimals : loanDecimals;

        // Scale up the amounts to the higher precision
        uint256 normalizedRepayAmount = repayAmount;
        uint256 normalizedLoanAmount = loanAmount;
        uint256 normalizedCollateralAmount = collateralAmount;

        if (loanDecimals < maxDecimals) {
            uint256 loanScaleFactor = 10 ** (maxDecimals - loanDecimals);
            normalizedRepayAmount = repayAmount * loanScaleFactor;
            normalizedLoanAmount = loanAmount * loanScaleFactor;
        }

        if (collateralDecimals < maxDecimals) {
            uint256 collateralScaleFactor = 10 ** (maxDecimals - collateralDecimals);
            normalizedCollateralAmount = collateralAmount * collateralScaleFactor;
        }

        // Now calculate with normalized amounts
        uint256 result = (normalizedRepayAmount * normalizedCollateralAmount) / normalizedLoanAmount;

        // Convert result back to collateral token's decimal scale
        if (collateralDecimals < maxDecimals) {
            uint256 collateralScaleFactor = 10 ** (maxDecimals - collateralDecimals);
            return result / collateralScaleFactor;
        }

        return result;
    }

    // --- Admin Functions ---
    function setMaturityDate(uint256 newDate) external onlyAdmin {
        if (newDate < maturityDate) revert MaturityInPast();
        uint256 old = maturityDate;
        maturityDate = newDate;
        emit MaturityDateChanged(old, newDate);
    }

    function updateAdmin(address newAdmin) external onlyAdmin {
        if (newAdmin == address(0)) revert ZeroAddress();
        address oldAdmin = admin;
        admin = newAdmin;
        emit AdminUpdated(oldAdmin, newAdmin);
    }
}
