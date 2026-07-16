// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

interface ITreasury {
    // Custom Errors
    error ErrorZeroAddress();
    error ErrorZeroAmount();
    error ErrorInvalidScheduleIndex();
    error ErrorScheduleAlreadyReleased();
    error ErrorInvalidValidUntil();
    error ErrorInsufficientTreasuryBalance();
    error ErrorExceedsAvailableBalance();
    error ErrorCannotDeleteSchedule();
    error ErrorScheduleDeleted();
    error ErrorScheduleNotReleased();
    error ErrorScheduleExpired();
    error ErrorNoTokensToPull();
    error ErrorTransferAmountMismatch();
    error ErrorInsufficientTotalBalance();
    error ErrorAmountTooLarge();
    error ErrorNoEtherAccepted();
    error ErrorNotOwner();
    error ErrorCannotRecoverTreasuryToken();

    /**
     * @notice Represents a single vesting schedule for a particular vesting contract.
     * @dev    Multiple schedules can exist for the same vesting contract (beneficiary).
     *
     * @param reservedTokenAmount   Amount of tokens reserved for this schedule.
     * @param createdAt             Timestamp when this schedule was created.
     * @param validUntil            When this schedule expires. If zero, no expiry limit.
     * @param lastClaimedTimestamp  When tokens were last pulled for vesting (set on pull).
     * @param isReleased            Whether the schedule is released. Must be true to pull.
     */
    struct VestingSchedule {
        uint256 reservedTokenAmount;
        uint256 createdAt;
        uint256 validUntil;
        uint256 lastClaimedTimestamp;
        bool isReleased;
    }

    /**
     * @notice Emitted when a new vesting schedule is created.
     *
     * @param vestingContract  The vesting contract (beneficiary) that this schedule belongs to.
     * @param scheduleIndex    Index of the newly created schedule in schedules[vestingContract].
     * @param reservedAmount   Amount of tokens reserved for this schedule.
     */
    event ScheduleCreated(
        address indexed vestingContract,
        uint256 indexed scheduleIndex,
        uint256 reservedAmount
    );

    /**
     * @notice Emitted when a vesting schedule is released.
     *
     * @param vestingContract  The vesting contract (beneficiary) that this schedule belongs to.
     * @param scheduleIndex    Index of the released schedule.
     * @param validUntil       The expiration timestamp set for this schedule.
     */
    event ScheduleReleased(
        address indexed vestingContract,
        uint256 indexed scheduleIndex,
        uint256 validUntil
    );

    /**
     * @notice Emitted when a vesting schedule is deleted (cancelled) by the owner.
     *
     * @param vestingContract  The vesting contract (beneficiary) that this schedule belongs to.
     * @param scheduleIndex    Index of the deleted schedule.
     */
    event ScheduleDeleted(
        address indexed vestingContract,
        uint256 indexed scheduleIndex
    );

    /**
     * @notice Emitted when tokens are deposited into this Treasury.
     *
     * @param sender   Address that sent the tokens.
     * @param amount   Amount of tokens deposited.
     */
    event TokensDeposited(address indexed sender, uint256 amount);

    /**
     * @notice Emitted when tokens are pulled for vesting by a vesting contract.
     *
     * @param vestingContract  Address of the vesting contract (msg.sender).
     * @param scheduleIndex    Index of the schedule that was pulled.
     * @param amount           Amount of tokens pulled.
     */
    event TokensPulled(
        address indexed vestingContract,
        uint256 indexed scheduleIndex,
        uint256 amount
    );

    function pullForVesting(uint256 scheduleIndex) external returns (uint256 vestedAmount);
}