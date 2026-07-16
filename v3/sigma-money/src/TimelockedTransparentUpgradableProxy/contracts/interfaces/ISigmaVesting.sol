// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @title ISigmaVesting Interface
 * @dev Interface for the SigmaVesting contract.
 */
interface ISigmaVesting {
    // ========== STRUCTS ==========

    /**
     * @notice Defines a single unlock point in a vesting schedule.
     * @param timestamp The Unix timestamp when the amount becomes available.
     * @param amount The amount of tokens to unlock at the timestamp.
     */
    struct UnlockEntry {
        uint64 timestamp;
        uint256 amount;
    }

    /**
     * @notice Represents a complete vesting schedule for a beneficiary and a token.
     * @param isInitialized True if the schedule has been set up.
     * @param vestingCategory A numerical category for the vesting type.
     * @param totalAmount The total amount of tokens in the vesting schedule.
     * @param releasedAmount The amount of tokens already released to the beneficiary.
     * @param unlockEntries An array of unlock points.
     */
    struct VestingSchedule {
        bool isInitialized;
        uint8 vestingCategory;
        uint256 totalAmount;
        uint256 releasedAmount;
        UnlockEntry[] unlockEntries;
    }

    // ========== ERRORS ==========

    error ZeroAddress();
    error NOT_AUTHORIZED(address); // Ownable already provides this, but for consistency we can define it.
    error InvalidTokenAddress();
    error InvalidCategory();
    error ScheduleAlreadyExists();
    error UnorderedTimestamps();
    error ZeroTotalAmount();
    error ScheduleNotFound();
    error NothingToRelease();

    // ========== EVENTS ==========

    event ScheduleAdded(address indexed beneficiary, address indexed token, uint256 totalAmount, uint8 category);
    event ScheduleRemoved(address indexed beneficiary, address indexed token);
    event TokensReleased(address indexed beneficiary, address indexed token, uint256 amount);

    // ========== GOVERNANCE FUNCTIONS ==========

    /**
     * @notice Adds a new vesting schedule for a beneficiary.
     * @param _beneficiary The address of the recipient.
     * @param _tokenAddress The address of the token being vested (sigma or xSigma).
     * @param _category The vesting category identifier.
     * @param _entries An array of unlock entries defining the schedule.
     */
    function addVestingSchedule(
        address _beneficiary,
        address _tokenAddress,
        uint8 _category,
        UnlockEntry[] calldata _entries
    ) external;

    /**
     * @notice Removes an existing vesting schedule.
     * @param _beneficiary The address of the recipient.
     * @param _tokenAddress The address of the token whose schedule is to be removed.
     */
    function removeVestingSchedule(address _beneficiary, address _tokenAddress) external;

    /**
     * @notice Releases all currently available vested tokens for all beneficiaries.
     */
    function release() external;

    // ========== VIEW FUNCTIONS ==========

    /**
     * @notice Calculates the amount of tokens currently available for release for a specific schedule.
     * @param _beneficiary The address of the recipient.
     * @param _tokenAddress The address of the vested token.
     * @return The amount of tokens that can be released.
     */
    function getReleasableAmount(address _beneficiary, address _tokenAddress) external view returns (uint256);

    /**
     * @notice Retrieves the complete vesting schedule for a beneficiary and token.
     * @param _beneficiary The address of the recipient.
     * @param _tokenAddress The address of the vested token.
     * @return A VestingSchedule struct containing all schedule details.
     */
    function getVestingSchedule(address _beneficiary, address _tokenAddress) external view returns (VestingSchedule memory);

    /**
     * @notice Returns the total number of unique beneficiaries with vesting schedules.
     * @return The count of beneficiaries.
     */
    function getBeneficiariesCount() external view returns (uint256);

    // ========== IMMUTABLE STATE GETTERS ==========

    function sigma() external view returns (address);
    function xSigma() external view returns (address);
    function ACCESS_HUB() external view returns (address);
    function MINTER() external view returns (address);

    // ========== MAPPING & ARRAY GETTERS ==========

    function beneficiaries(uint256 index) external view returns (address);
}