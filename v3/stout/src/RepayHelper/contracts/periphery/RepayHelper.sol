// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "../abstract/Ownable.sol";
import {ReentrancyGuard} from "../abstract/ReentrancyGuard.sol";
import {Rebase, AuxRebase} from "../library/AuxRebase.sol";
import {IBaseContracts} from "../interface/IBaseContracts.sol";
import {IERC20Custom} from "../interface/IERC20Custom.sol";
import {IERC20Token} from "../interface/IERC20Token.sol";
import {ILender} from "../interface/ILender.sol";
import {IMiscHelper} from "../interface/IMiscHelper.sol";
import {IVault} from "../interface/IVault.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20 as IERC20Safe} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title RepayHelper
 * @dev Facilitates loan repayment operations with comprehensive safety checks
 * @notice Provides:
 * · Standardized repayment functions
 * · Single and batch repayment options
 * · Partial and full repayment support
 */
contract RepayHelper is Ownable, ReentrancyGuard {
    using AuxRebase for Rebase;
    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/
    /// @notice Precision constants
    uint256 public constant TENK_PRECISION = 10_000;
    /// @notice DUSX token contract used for repayments
    IERC20Token public immutable dusx;
    /// @notice Helper contract for miscellaneous operations
    IMiscHelper public helper;
    /// @notice Base contracts registry
    IBaseContracts public immutable baseContracts;
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when a partial repayment is made
    /// @param lender Lending contract address
    /// @param amount Amount repaid
    event PartialRepayment(ILender indexed lender, uint256 amount);
    /// @notice Emitted when a total repayment is made
    /// @param lender Lending contract address
    /// @param amount Amount repaid
    event TotalRepayment(ILender indexed lender, uint256 amount);
    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Thrown when repayment amount is invalid (≤ 1e4)
    error InvalidAmount();
    /// @notice Thrown when a zero address is provided
    error ZeroAddress();

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Initializes the RepayHelper contract
     * @param baseContracts_ Base contracts registry address
     */
    constructor(IBaseContracts baseContracts_) {
        _ensureNonzeroAddress(address(baseContracts_));
        baseContracts = baseContracts_;
        dusx = baseContracts_.dusx();
        helper = baseContracts_.helper();
        _ensureNonzeroAddress(address(dusx));
        _ensureNonzeroAddress(address(helper));
    }

    /*//////////////////////////////////////////////////////////////
                        EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Processes a partial loan repayment
     * @param lender Lending contract
     * @param to Recipient of the repayment
     * @param amount Amount to repay
     * @return part Repayment part calculated
     * @dev Includes safety checks and precise calculations
     *
     * Requirements:
     * · Amount must be > 1e4
     * · Token transfer must succeed
     * · Caller must have sufficient balance
     *
     * Effects:
     * · Updates loan state
     * · Transfers tokens
     * · Accrues interest
     *
     * Emits:
     * · {PartialRepayment} event
     */
    function repayAmount(
        ILender lender,
        address to,
        uint256 amount
    ) external nonReentrant returns (uint256 part) {
        lender.accrue();
        Rebase memory totalBorrow = lender.totalBorrow();
        if (amount <= TENK_PRECISION) revert InvalidAmount();
        part = totalBorrow.toBase(amount - TENK_PRECISION, false);
        IVault vault = lender.vault();
        _transferAndDeposit(IERC20Custom(address(dusx)), vault, amount);
        helper.lenderRepay(lender, _msgSender(), to, true, part);
        lender.accrue();
        emit PartialRepayment(lender, amount);
    }

    /**
     * @notice Processes a complete loan repayment
     * @param lender Lending contract
     * @param to Recipient of the repayment
     * @return amount Total amount repaid
     * @dev Calculates and processes full outstanding balance
     *
     * Effects:
     * · Clears entire loan balance
     * · Transfers required tokens
     * · Updates loan state
     *
     * Security:
     * · Includes reentrancy protection
     * · Validates transfers
     * · Accrues interest
     *
     * Emits:
     * · {TotalRepayment} event
     */
    function repayTotal(
        ILender lender,
        address to
    ) external nonReentrant returns (uint256 amount) {
        lender.accrue();
        Rebase memory totalBorrow = lender.totalBorrow();
        uint256 part = lender.userBorrowPart(to);
        amount = totalBorrow.toElastic(part + TENK_PRECISION, true);
        IVault vault = lender.vault();
        _transferAndDeposit(IERC20Custom(address(dusx)), vault, amount);
        helper.lenderRepay(lender, _msgSender(), to, true, part);
        lender.accrue();
        emit TotalRepayment(lender, amount);
    }

    /**
     * @notice Processes multiple complete loan repayments
     * @param lender Lending contract
     * @param tos Array of recipient addresses
     * @return amount Total amount repaid
     * @dev Efficiently processes multiple repayments in one transaction
     *
     * Requirements:
     * · All accounts must have outstanding loans
     * · Sufficient balance for all repayments
     *
     * Effects:
     * · Clears multiple loan balances
     * · Transfers tokens for each repayment
     * · Updates all loan states
     *
     * Security:
     * · Includes reentrancy protection
     * · Validates all transfers
     * · Accrues interest properly
     *
     * Emits:
     * · Multiple {TotalRepayment} events
     */
    function repayTotalMultiple(
        ILender lender,
        address[] calldata tos
    ) external nonReentrant returns (uint256 amount) {
        lender.accrue();
        Rebase memory totalBorrow = lender.totalBorrow();
        uint256 totalPart = _calculateTotalPart(lender, tos);
        amount = totalBorrow.toElastic(totalPart + TENK_PRECISION, true);
        IVault vault = lender.vault();
        _transferAndDeposit(IERC20Custom(address(dusx)), vault, amount);
        _repayForMultiple(lender, tos);
        lender.accrue();
        emit TotalRepayment(lender, amount);
    }

    /*//////////////////////////////////////////////////////////////
                            PRIVATE FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @dev Handles token transfer and vault deposit
     */
    function _transferAndDeposit(
        IERC20Custom token,
        IVault vault,
        uint256 amount
    ) private {
        SafeERC20.safeTransferFrom(
            IERC20Safe(address(token)),
            _msgSender(),
            address(vault),
            amount
        );
        vault.deposit(token, address(vault), address(vault), amount, 0);
    }

    /**
     * @dev Processes repayments for multiple recipients
     */
    function _repayForMultiple(ILender lender, address[] calldata tos) private {
        uint256 length = tos.length;
        for (uint256 i; i < length; i++) {
            helper.lenderRepay(
                lender,
                _msgSender(),
                tos[i],
                true,
                lender.userBorrowPart(tos[i])
            );
        }
    }

    /**
     * @dev Calculates total borrow part for multiple recipients
     */
    function _calculateTotalPart(
        ILender lender,
        address[] calldata tos
    ) private view returns (uint256 totalPart) {
        uint256 length = tos.length;
        for (uint256 i; i < length; i++) {
            totalPart += lender.userBorrowPart(tos[i]);
        }
    }

    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
