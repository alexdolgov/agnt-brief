// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/**
 * @title IRewardDistributor
 * @author Mu Digital
 * @notice Interface for reward distributor contract
 */
interface IRewardDistributor {
    /**
     * @notice Struct storing the current reward schedule details
     */
    struct RewardSchedule {
        uint256 totalAmount;
        uint256 releasedAmount;
        uint256 installmentAmount;
        uint256 totalPayments;
        uint256 paymentsExecuted;
        uint256 paymentsRemaining;
        uint256 interval;
        uint256 nextRelease;
    }

    /**
     * @notice Emitted when a new reward schedule is configured
     * @param total Total AZND amount scheduled
     * @param numPayments Number of installments to release
     * @param intervalSecs Interval in seconds between installments
     */
    event RewardScheduled(
        uint256 indexed total,
        uint256 indexed numPayments,
        uint256 indexed intervalSecs
    );

    /**
     * @notice Emitted when an installment is released
     * @param amount Amount of AZND released
     * @param timestamp Timestamp of the release
     */
    event RewardReleased(uint256 indexed amount, uint256 indexed timestamp);

    /**
     * @notice Emitted when the remaining schedule is updated
     * @param remaining Remaining AZND after reschedule
     * @param newNumPayments New number of installments
     * @param newIntervalSecs New interval in seconds between installments
     */
    event RewardRescheduled(
        uint256 indexed remaining,
        uint256 indexed newNumPayments,
        uint256 indexed newIntervalSecs
    );

    /**
     * @notice Emitted when a schedule is cancelled
     * @param remaining Remaining AZND returned
     * @param timestamp Timestamp of the cancellation
     */
    event RewardCanceled(uint256 indexed remaining, uint256 indexed timestamp);

    /**
     * @notice Emitted when the vault address is updated
     * @param newVault New vault address
     */
    event VaultUpdated(address indexed newVault);

    /**
     * @notice Emitted when dust is swept
     * @param token Address of the token swept
     * @param to Address of the recipient
     * @param amount Amount of the token swept
     */
    event DustSwept(address indexed token, address indexed to, uint256 indexed amount);

    /**
     * @notice Schedule a new reward distribution
     * @param amount Total AZND amount to distribute
     * @param numPayments Number of installments
     * @param intervalSecs Interval in seconds between installments
     */
    function schedule(
        uint256 amount,
        uint256 numPayments,
        uint256 intervalSecs
    ) external;

    /**
     * @notice Cancel the active schedule and return remaining funds
     * @param to Address receiving the remaining AZND
     */
    function cancelSchedule(address to) external;

    /**
     * @notice Reschedule the remaining installments
     * @param newNumPayments New number of installments
     * @param newIntervalSecs New interval in seconds
     */
    function rescheduleRemaining(
        uint256 newNumPayments,
        uint256 newIntervalSecs
    ) external;

    /**
     * @notice Update the destination vault address
     * @param newVault Address of the new vault
     */
    function setVault(address newVault) external;

    /**
     * @notice Recover unintended token balances
     * @param token Address of the token to sweep
     * @param to Recipient of the swept tokens
     */
    function sweepDust(address token, address to) external;

    /**
     * @notice Release due installments up to the provided cap
     * @param maxPayments Maximum number of installments to process
     * @return released Total amount of AZND released
     */
    function tick(
        uint256 maxPayments
    ) external returns (uint256 released);

    /**
     * @notice Get the current schedule details
     * @return total Total amount scheduled
     * @return releasedAmount Amount already released
     * @return paymentsLeft Payments remaining
     * @return installment Base installment amount
     * @return intervalSecs Interval between payments
     * @return nextReleaseTimestamp Timestamp of the next release
     */
    function getSchedule()
        external
        view
        returns (
            uint256 total,
            uint256 releasedAmount,
            uint256 paymentsLeft,
            uint256 installment,
            uint256 intervalSecs,
            uint256 nextReleaseTimestamp
        );

    /**
     * @notice Remaining unreleased AZND amount
     * @return Remaining amount
     */
    function remaining() external view returns (uint256);

    /**
     * @notice Calculate how many installments are due at a given timestamp
     * @param atTimestamp Timestamp to check
     * @return Number of installments due
     */
    function pendingInstallments(uint256 atTimestamp) external view returns (uint256);
}
