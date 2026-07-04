// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

/**
 * @title IYieldToken
 * @notice Interface for the Pendle yield token contract
 */
interface IYieldToken {
    /**
     * @notice Get the expiry timestamp of the yield token
     * @return Expiry timestamp
     */
    function expiry() external view returns (uint256);

    /**
     * @notice Get the SY (Standardized Yield) token address
     * @return SY token address
     */
    function SY() external view returns (address);

    /**
     * @notice Claim accrued interest and rewards for a user
     * @param user Address to claim for
     * @param redeemInterest Whether to claim interest
     * @param redeemRewards Whether to claim rewards
     * @return interestOut Amount of SY interest claimed
     * @return rewardsOut Amounts of each reward token claimed
     */
    function redeemDueInterestAndRewards(
        address user,
        bool redeemInterest,
        bool redeemRewards
    ) external returns (uint256 interestOut, uint256[] memory rewardsOut);

    /**
     * @notice Get the pending interest state for a user
     * @param user Address of the user
     * @return index Last recorded interest index for the user
     * @return accrued Accrued but unclaimed interest (in SY token units)
     */
    function userInterest(
        address user
    ) external view returns (uint256 index, uint256 accrued);
}
