// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../interfaces/IPlugin.sol";
import "../interfaces/ILaunchpadViewer.sol";

/**
 * @title RestrictMinimumDepositsPlugin
 * @notice Plugin that enforces minimum deposit amounts per transaction and minimum total deposits before launch
 * @dev Implements two active hooks:
 *      - beforeDeposit: Rejects individual deposits below a configured minimum amount threshold
 *      - checkProposal: Prevents launch until total escrow reaches a configured threshold
 */
contract RestrictMinimumDepositsPlugin is IPlugin {
    /// @notice Thrown when a deposit amount is below the required minimum
    /// @param amount The attempted deposit amount
    /// @param minimum The required minimum deposit amount
    error DepositBelowMinimum(uint256 amount, uint256 minimum);

    /// @notice Thrown when a withdrawal would leave a balance below the required minimum
    /// @param remainingBalance The balance that would remain after withdrawal
    /// @param minimum The required minimum deposit amount
    error WithdrawLeavesInsufficientBalance(uint256 remainingBalance, uint256 minimum);

    /**
     * @notice Hook executed before a deposit is processed
     * @dev Decodes args as uint256 minimumDepositAmount and reverts if deposit.amount is below threshold
     * @param deposit Deposit information including proposalId, depositor, outcome, and amount
     * @param args ABI-encoded minimum deposit amount: abi.encode(uint256 minimumDepositAmount)
     */
    function beforeDeposit(DepositInfo calldata deposit, bytes calldata args) external pure override {
        uint256 minimumDepositAmount = abi.decode(args, (uint256));

        if (deposit.amount < minimumDepositAmount) {
            revert DepositBelowMinimum(deposit.amount, minimumDepositAmount);
        }
    }

    /**
     * @notice Hook executed before a withdrawal is processed
     * @dev Rejects withdrawals that would leave a balance below the minimum, unless balance becomes zero.
     *      This prevents Sybil attacks where depositors deposit the minimum, then withdraw to dust
     *      to bloat the depositor set while bypassing the implicit depositor cap.
     * @param withdraw Withdrawal information including remainingBalance after the withdrawal
     * @param args ABI-encoded minimum deposit amount: abi.encode(uint256 minimumDepositAmount)
     */
    function beforeWithdraw(WithdrawInfo calldata withdraw, bytes calldata args) external pure override {
        uint256 minimumDepositAmount = abi.decode(args, (uint256));

        // Full exit is always allowed; partial withdrawal must leave at least the minimum
        if (withdraw.remainingBalance != 0 && withdraw.remainingBalance < minimumDepositAmount) {
            revert WithdrawLeavesInsufficientBalance(withdraw.remainingBalance, minimumDepositAmount);
        }
    }

    /**
     * @notice Hook executed to check if a proposal is ready to launch
     * @dev Decodes args as uint256 minimumTotalDeposits and checks if total escrow meets threshold
     * @param viewer ILaunchpadViewer instance for querying proposal state
     * @param proposalId The ID of the proposal to check
     * @param args ABI-encoded minimum total deposits: abi.encode(uint256 minimumTotalDeposits)
     * @return readyToLaunch True if total deposits >= minimumTotalDeposits, false otherwise
     */
    function checkProposal(ILaunchpadViewer viewer, uint256 proposalId, bytes calldata args)
        external
        view
        override
        returns (bool readyToLaunch)
    {
        uint256 minimumTotalDeposits = abi.decode(args, (uint256));
        uint256 totalDeposits = viewer.proposalTotalDeposits(proposalId);

        return totalDeposits >= minimumTotalDeposits;
    }

    /// @notice Validates minimum deposit parameters
    /// @param args ABI-encoded uint256 minimum amount
    /// @dev Currently no validation needed - single uint256 is always valid
    function checkParameters(bytes calldata args) external pure override {
        // No validation needed - args is a single uint256
    }
}

