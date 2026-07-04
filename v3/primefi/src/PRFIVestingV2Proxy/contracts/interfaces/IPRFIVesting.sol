// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title PRFI Token Vesting Contract
 * @notice Manages token vesting with cliff and price-based vesting conditions
 */
interface IPRFIVesting {

    struct VestingSchedule {
        uint256 totalAmount;        // Total amount to be vested (excluding immediate release)
        uint256 claimedAmount;      // Amount already claimed
        uint256 startTime;          // When vesting begins
        uint256 lastClaimTime;      // Last time tokens were claimed
        uint256 immediateAmount;    // Amount released immediately
        uint256 vestingDuration;    // Duration of vesting
        uint256 immediateRelease;   // Immediate release percentage
    }

    function VESTING_DURATION() external returns (uint256);

    function IMMEDIATE_RELEASE() external returns (uint256);

    function WHOLE() external returns (uint256);

    function prfiToken() external view returns (IERC20);

    function totalVestingAmount() external view returns (uint256);

    function vestingSchedules(address beneficiary) external view returns (VestingSchedule memory);
    /**
     * @notice Creates a vesting schedule for a beneficiary
     * @param beneficiary Address of the beneficiary
     * @param amount Total amount of tokens to vest
     */
    function createVestingSchedule(address beneficiary, uint256 amount, uint256 vestingDuration, uint256 immediateRelease, uint256 cliffTime) external;

    function createVestingScheduleBatch(address[] memory beneficiaries, uint256[] memory amounts, uint256[] memory vestingDurations, uint256[] memory immediateReleases, uint256[] memory cliffTimes) external;

    /**
     * @notice Calculates claimable tokens for a beneficiary
     * @param beneficiary Address of the beneficiary
     * @return Amount of tokens that can be claimed
     */
    function getClaimableAmount(address beneficiary) external view returns (uint256);

    /**
     * @notice Claims vested tokens
     */
    function claimTokens() external;

    /**
     * @notice Gets the last claim timestamp for an address
     * @param beneficiary Address to check
     * @return Last claim timestamp
     */
    function getLastClaimTimestamp(address beneficiary) external view returns (uint256);

    /**
     * @notice Gets the total amount of tokens that can be claimed by all addresses
     * @return Total vesting amount
     */
    function getTotalVestingAmount() external view returns (uint256);

    /**
     * @notice Transfers vesting schedule to a new address
     * @param newAddress Address to transfer the vesting schedule to
     */
    function transferVesting(address newAddress) external;
}
