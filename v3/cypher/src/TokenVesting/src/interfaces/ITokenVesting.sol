// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title ITokenVesting
 * @author Camelot
 * @notice Interface for a token vesting contract that supports multiple ERC20 tokens.
 * @dev Implements linear vesting with cliff periods and configurable slice periods.
 */
interface ITokenVesting {
    /**
     * @notice Represents a vesting schedule for a beneficiary.
     * @param beneficiary The address that will receive tokens after they are released.
     * @param token The address of the ERC20 token being vested.
     * @param cliff The timestamp after which tokens begin to vest.
     * @param start The timestamp when the vesting period begins.
     * @param duration The total duration of the vesting period in seconds.
     * @param slicePeriodSeconds The duration of each vesting slice in seconds.
     * @param amountTotal The total amount of tokens to be vested.
     * @param released The amount of tokens already released to the beneficiary.
     */
    struct VestingSchedule {
        address beneficiary;
        address token;
        uint256 cliff;
        uint256 start;
        uint256 duration;
        uint256 slicePeriodSeconds;
        uint256 amountTotal;
        uint256 released;
    }

    /**
     * @notice Emitted when a new vesting schedule is created.
     * @param vestingScheduleId The unique identifier of the vesting schedule.
     * @param creator The address of the creator of the vesting schedule.
     * @param beneficiary The address of the beneficiary.
     * @param token The address of the token being vested.
     * @param cliff The cliff timestamp.
     * @param start The start timestamp.
     * @param duration The duration of the vesting period.
     * @param slicePeriodSeconds The slice period duration.
     * @param amountTotal The total amount of tokens to be vested.
     */
    event VestingScheduleCreated(
        bytes32 indexed vestingScheduleId,
        address indexed creator,
        address indexed beneficiary,
        address token,
        uint256 cliff,
        uint256 start,
        uint256 duration,
        uint256 slicePeriodSeconds,
        uint256 amountTotal
    );

    /**
     * @notice Emitted when vested tokens are released to a beneficiary.
     * @param vestingScheduleId The unique identifier of the vesting schedule.
     * @param beneficiary The address receiving the tokens.
     * @param amount The amount of tokens released.
     */
    event TokensReleased(
        bytes32 indexed vestingScheduleId,
        address indexed beneficiary,
        uint256 amount
    );

    /**
     * @notice Thrown when the vesting duration is zero.
     */
    error DurationZero();

    /**
     * @notice Thrown when the vesting amount is zero.
     */
    error AmountZero();

    /**
     * @notice Thrown when the slice period is zero.
     */
    error SlicePeriodZero();

    /**
     * @notice Thrown when the cliff exceeds the duration.
     * @param cliff The provided cliff period.
     * @param duration The provided duration.
     */
    error CliffExceedsDuration(uint256 cliff, uint256 duration);

    /**
     * @notice Thrown when the beneficiary address is the zero address.
     */
    error BeneficiaryAddressZero();

    /**
     * @notice Thrown when the token address is the zero address.
     */
    error TokenAddressZero();

    /**
     * @notice Thrown when the vesting schedule does not exist.
     * @param token The token address.
     * @param vestingScheduleId The vesting schedule identifier.
     */
    error VestingScheduleNotFound(address token, bytes32 vestingScheduleId);

    /**
     * @notice Thrown when a non-beneficiary attempts to release tokens.
     * @param caller The address that attempted the release.
     * @param beneficiary The actual beneficiary address.
     */
    error UnauthorizedCaller(address caller, address beneficiary);

    /**
     * @notice Thrown when the index is out of bounds.
     * @param index The provided index.
     * @param maxIndex The maximum valid index.
     */
    error IndexOutOfBounds(uint256 index, uint256 maxIndex);

    /**
     * @notice Thrown when there are no releasable tokens.
     */
    error ReleasableAmountZero();

    /**
     * @notice Thrown when the beneficiaries and amounts arrays have different lengths.
     * @param beneficiariesLength The length of the beneficiaries array.
     * @param amountsLength The length of the amounts array.
     */
    error ArrayLengthMismatch(uint256 beneficiariesLength, uint256 amountsLength);

    /**
     * @notice Thrown when the beneficiaries array is empty.
     */
    error EmptyBeneficiariesArray();

    /**
     * @notice Thrown when the start time is in the past.
     */
    error InvalidStartTime();

    /**
     * @notice Thrown when the duration is less than the minimum required.
     * @param duration The provided duration.
     * @param minDuration The minimum required duration.
     */
    error DurationTooShort(uint256 duration, uint256 minDuration);

    /**
     * @notice Returns the vesting schedule ID at the given index in the array.
     * @param index The index in the vestingSchedulesIds array.
     * @return The vesting schedule ID at the given index.
     */
    function vestingSchedulesIds(uint256 index) external view returns (bytes32);

    /**
     * @notice Returns the vesting schedule for a given token and schedule ID.
     * @param token The address of the token.
     * @param vestingScheduleId The unique identifier of the vesting schedule.
     * @return beneficiary The address of the beneficiary.
     * @return tokenAddr The address of the token.
     * @return cliff The cliff timestamp.
     * @return start The start timestamp.
     * @return duration The duration of the vesting period.
     * @return slicePeriodSeconds The slice period duration.
     * @return amountTotal The total amount of tokens to be vested.
     * @return released The amount of tokens released.
     */
    function vestingSchedules(
        address token,
        bytes32 vestingScheduleId
    )
        external
        view
        returns (
            address beneficiary,
            address tokenAddr,
            uint256 cliff,
            uint256 start,
            uint256 duration,
            uint256 slicePeriodSeconds,
            uint256 amountTotal,
            uint256 released
        );

    /**
     * @notice Returns the total amount of vesting schedules for a specific token.
     * @param token The address of the token.
     * @return The total amount of tokens in vesting schedules for the given token.
     */
    function vestingSchedulesTotalAmountByToken(
        address token
    ) external view returns (uint256);

    /**
     * @notice Returns the number of vesting schedules for a holder.
     * @param holder The address of the holder.
     * @return The number of vesting schedules for the holder.
     */
    function holdersVestingCount(address holder) external view returns (uint256);
    
    /**
     * @notice Creates vesting schedules for multiple beneficiaries.
     * @dev Transfers total tokens from the caller to this contract in a single transfer.
     * @param beneficiaries The addresses of the beneficiaries to whom vested tokens are transferred.
     * @param token The address of the ERC20 token.
     * @param start The start time of the vesting period as a Unix timestamp.
     * @param cliff The duration in seconds of the cliff period after which tokens begin to vest.
     * @param duration The total duration in seconds of the vesting period.
     * @param slicePeriodSeconds The duration of each vesting slice in seconds.
     * @param amounts The total amounts of tokens to be vested for each beneficiary.
     * @return vestingScheduleIds The unique identifiers of the created vesting schedules.
     */
    function createVestingSchedule(
        address[] calldata beneficiaries,
        address token,
        uint256 start,
        uint256 cliff,
        uint256 duration,
        uint256 slicePeriodSeconds,
        uint256[] calldata amounts
    ) external returns (bytes32[] memory vestingScheduleIds);

    /**
     * @notice Releases the vested amount of tokens to the beneficiary.
     * @dev Only the beneficiary can call this function.
     * @param token The address of the token.
     * @param vestingScheduleId The unique identifier of the vesting schedule.
     * @return amount The amount of tokens released.
     */
    function release(
        address token,
        bytes32 vestingScheduleId
    ) external returns (uint256 amount);

    /**
     * @notice Returns the vesting schedule identifier at the given index.
     * @param index The index in the vesting schedules array.
     * @return vestingScheduleId The vesting schedule identifier.
     */
    function getVestingIdAtIndex(
        uint256 index
    ) external view returns (bytes32 vestingScheduleId);

    /**
     * @notice Returns the vesting schedule for a given token, holder, and index.
     * @param token The address of the token.
     * @param holder The address of the holder.
     * @param index The index of the vesting schedule for this holder.
     * @return vestingSchedule The vesting schedule structure.
     */
    function getVestingScheduleByAddressAndIndex(
        address token,
        address holder,
        uint256 index
    ) external view returns (VestingSchedule memory vestingSchedule);

    /**
     * @notice Returns the total number of vesting schedules managed by this contract.
     * @return count The number of vesting schedules.
     */
    function getVestingSchedulesCount() external view returns (uint256 count);

    /**
     * @notice Computes the releasable amount of tokens for a given vesting schedule.
     * @param token The address of the token.
     * @param vestingScheduleId The unique identifier of the vesting schedule.
     * @return releasableAmount The amount of tokens that can be released.
     */
    function computeReleasableAmount(
        address token,
        bytes32 vestingScheduleId
    ) external view returns (uint256 releasableAmount);

    /**
     * @notice Computes the next vesting schedule identifier for a given holder.
     * @param holder The address of the holder.
     * @return vestingScheduleId The next vesting schedule identifier.
     */
    function computeNextVestingScheduleIdForHolder(
        address holder
    ) external view returns (bytes32 vestingScheduleId);

    /**
     * @notice Returns the last vesting schedule for a given token and holder.
     * @param token The address of the token.
     * @param holder The address of the holder.
     * @return vestingSchedule The last vesting schedule structure.
     */
    function getLastVestingScheduleForHolder(
        address token,
        address holder
    ) external view returns (VestingSchedule memory vestingSchedule);

    /**
     * @notice Computes the vesting schedule identifier for an address and index.
     * @param holder The address of the holder.
     * @param index The index of the vesting schedule.
     * @return vestingScheduleId The computed vesting schedule identifier.
     */
    function computeVestingScheduleIdForAddressAndIndex(
        address holder,
        uint256 index
    ) external pure returns (bytes32 vestingScheduleId);
}
