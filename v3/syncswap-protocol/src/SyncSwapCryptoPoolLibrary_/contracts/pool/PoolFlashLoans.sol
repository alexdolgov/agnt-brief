// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.8.0;

import "../interfaces/token/IERC20.sol";
import "../interfaces/master/IFeeRecipient.sol";
import "../interfaces/master/IPoolMaster.sol";
import "../interfaces/pool/IPoolFlashLoan.sol";

import "../libraries/ReentrancyGuard.sol";
import "../libraries/TransferHelper.sol";

/**
 * @dev Handles Flash Loans through the Pool.
 */
abstract contract PoolFlashLoans is IPoolFlashLoan, ReentrancyGuard {

    uint private constant FLASH_LOAN_FEE = 5e15; // 0.5%
    bytes32 private constant ERC3156_CALLBACK_SUCCESS = keccak256("ERC3156FlashBorrower.onFlashLoan");

    /**
     * @dev Returns the protocol fee amount to charge for a flash loan of `amount`.
     */
    function _calculateFlashLoanFeeAmount(uint amount) private pure returns (uint) {
        return amount * FLASH_LOAN_FEE / 1e18;
    }

    function _payFeeAmount(address token, uint amount) private {
        if (amount != 0) {
            address _feeRecipient = _getFeeRecipient();
            if (_feeRecipient != address(0)) {
                TransferHelper.safeTransfer(token, _feeRecipient, amount);
                IFeeRecipient(_feeRecipient).notifyFees(10, token, amount, FLASH_LOAN_FEE, abi.encode(2));
            }
        }
    }

    function _getFeeRecipient() internal virtual view returns (address) {}

    // EIP-3156 Implementations

    /**
     * @dev The amount of currency available to be lent.
     * @param token The loan currency.
     * @return The amount of `token` that can be borrowed.
     */
    function maxFlashLoan(address token) external view override returns (uint256) {
        return IERC20(token).balanceOf(address(this));
    }

    /**
     * @dev The fee to be charged for a given loan.
     * @param amount The amount of tokens lent.
     * @return The amount of `token` to be charged for the loan, on top of the returned principal.
     */
    function flashFee(address /*token*/, uint256 amount) external pure override returns (uint256) {
        return _calculateFlashLoanFeeAmount(amount);
    }

    /**
     * @dev Initiate a flash loan.
     * @param receiver The receiver of the tokens in the loan, and the receiver of the callback.
     * @param token The loan currency.
     * @param amount The amount of tokens lent.
     * @param userData Arbitrary data structure, intended to contain user-defined parameters.
     */
    function flashLoan(
        IERC3156FlashBorrower receiver,
        address token,
        uint amount,
        bytes memory userData
    ) external override nonReentrant returns (bool) {
        uint preLoanBalance = IERC20(token).balanceOf(address(this));
        uint feeAmount = _calculateFlashLoanFeeAmount(amount);

        require(preLoanBalance >= amount, "INSUFFICIENT_FLASH_LOAN_BALANCE");
        TransferHelper.safeTransfer(token, address(receiver), amount);

        require(
            receiver.onFlashLoan(msg.sender, token, amount, feeAmount, userData) == ERC3156_CALLBACK_SUCCESS,
            "IERC3156_CALLBACK_FAILED"
        );

        // Checking for loan repayment first (without accounting for fees) makes for simpler debugging, and results
        // in more accurate revert reasons if the flash loan protocol fee percentage is zero.
        uint postLoanBalance = IERC20(token).balanceOf(address(this));
        require(postLoanBalance >= preLoanBalance, "INVALID_POST_LOAN_BALANCE");

        // No need for checked arithmetic since we know the loan was fully repaid.
        uint receivedFeeAmount = postLoanBalance - preLoanBalance;
        require(receivedFeeAmount >= feeAmount, "INSUFFICIENT_FLASH_LOAN_FEE_AMOUNT");

        _payFeeAmount(token, receivedFeeAmount);

        emit FlashLoan(address(receiver), token, amount, receivedFeeAmount);
        return true;
    }
}