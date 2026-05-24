// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

/**
 * @title IERC20Errors
 * @dev Standardized error interface for ERC20 token operations
 * @notice Defines functionality for:
 * 1. Balance validation errors
 * 2. Address validation errors
 * 3. Allowance validation errors
 */
interface IERC20Errors {
    /*//////////////////////////////////////////////////////////////
                        BALANCE ERRORS
    //////////////////////////////////////////////////////////////*/
    /**
     * @dev Error for insufficient token balance
     * @param sender Address attempting the transfer
     * @param balance Current balance of sender
     * @param needed Amount attempting to transfer
     * @notice Triggered when:
     * · Transfer amount > balance
     * · Burn amount > balance
     * · Withdrawal > available
     */
    error ERC20InsufficientBalance(
        address sender,
        uint256 balance,
        uint256 needed
    );
    /*//////////////////////////////////////////////////////////////
                        ADDRESS VALIDATION ERRORS
    //////////////////////////////////////////////////////////////*/
    /**
     * @dev Error for invalid sending address
     * @param sender Address that failed validation
     * @notice Triggered when:
     * · Sender is zero address
     * · Sender is blacklisted
     * · Sender lacks permissions
     */
    error ERC20InvalidSender(address sender);
    /**
     * @dev Error for invalid receiving address
     * @param receiver Address that failed validation
     * @notice Triggered when:
     * · Receiver is zero address
     * · Receiver is blacklisted
     * · Receiver is contract without implementation
     */
    error ERC20InvalidReceiver(address receiver);
    /*//////////////////////////////////////////////////////////////
                        ALLOWANCE ERRORS
    //////////////////////////////////////////////////////////////*/
    /**
     * @dev Error for insufficient spending allowance
     * @param spender Address attempting to spend
     * @param allowance Current approved amount
     * @param needed Amount attempting to spend
     * @notice Triggered when:
     * · Spend amount > allowance
     * · Transfer amount > approved
     * · Delegation exceeds limits
     */
    error ERC20InsufficientAllowance(
        address spender,
        uint256 allowance,
        uint256 needed
    );
    /**
     * @dev Error for invalid approving address
     * @param approver Address that failed validation
     * @notice Triggered when:
     * · Approver is zero address
     * · Approver lacks permissions
     * · Approver is invalid state
     */
    error ERC20InvalidApprover(address approver);
    /**
     * @dev Error for invalid spending address
     * @param spender Address that failed validation
     * @notice Triggered when:
     * · Spender is zero address
     * · Spender is blacklisted
     * · Spender lacks permissions
     */
    error ERC20InvalidSpender(address spender);
}
