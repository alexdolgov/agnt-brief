// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title IReferralManager
 * @notice Interface for the referral system manager.
 * @author Camelot
 */
interface IReferralManager {
    /**
     * @notice Emitted when a referral is set.
     * @param referrer The address of the referrer.
     * @param referredUser The address of the referred user.
     */
    event ReferralSet(address indexed referrer, address indexed referredUser);

    /**
     * @notice Emitted when an indirect referral is set.
     * @param indirectReferrer The address of the indirect referrer.
     * @param referredUser The address of the referred user.
     * @param directReferrer The address of the direct referrer.
     */
    event IndirectReferralSet(
        address indexed indirectReferrer,
        address indexed referredUser,
        address indexed directReferrer
    );

    /**
     * @notice Emitted when a referral reward is received.
     * @param referrer The address of the referrer.
     * @param referredUser The address of the referred user.
     * @param token The address of the reward token.
     * @param reward The amount of reward received.
     * @param isDirect Whether the referral is direct or indirect.
     */
    event ReferralRewardReceived(
        address indexed referrer,
        address indexed referredUser,
        address indexed token,
        uint256 reward,
        bool isDirect
    );

    /**
     * @notice Emitted when a referral reward is paid out.
     * @param referrer The address of the referrer.
     * @param token The address of the reward token.
     * @param reward The amount of reward paid out.
     */
    event ReferralPaidOut(address indexed referrer, address indexed token, uint256 reward);

    /**
     * @notice Emitted when the direct referral fee is set.
     * @param directRefFeeBps The new direct referral fee in basis points.
     */
    event DirectRefFeeBpsSet(uint256 directRefFeeBps);

    /**
     * @notice Emitted when the indirect referral fee is set.
     * @param indirectRefFeeBps The new indirect referral fee in basis points.
     */
    event IndirectRefFeeBpsSet(uint256 indirectRefFeeBps);

    /**
     * @notice Emitted when the payout threshold is set for a token.
     * @param token The address of the token.
     * @param payoutThreshold The new payout threshold.
     */
    event PayoutThresholdSet(address token, uint256 payoutThreshold);

    /**
     * @notice Emitted when a bonding curve is whitelisted or removed from whitelist.
     * @param bondingCurve The address of the bonding curve.
     * @param status The new whitelist status.
     */
    event WhitelistedBondingCurveSet(address indexed bondingCurve, bool status);

    /**
     * @notice Thrown when the caller is not authorized.
     */
    error Unauthorised();

    /**
     * @notice Thrown when the payout is zero.
     */
    error ZeroPayout();

    /**
     * @notice Thrown when the address is zero.
     */
    error AddressZero();

    /**
     * @notice Thrown when the payout is below the threshold.
     */
    error PayoutBelowThreshold();

    /**
     * @notice Thrown when the array lengths do not match.
     */
    error ArrayLengthMismatch();

    /**
     * @notice Receives a referral reward for a user.
     * @dev Only callable by whitelisted bonding curves.
     * @param user The address of the referred user.
     * @param token The address of the reward token.
     * @param amount The amount of reward to receive.
     */
    function receiveReferral(address user, address token, uint256 amount) external;

    /**
     * @notice Sets the referral for a user.
     * @dev Only callable by whitelisted bonding curves.
     * @param referrer The address of the referrer.
     * @param user The address of the referred user.
     */
    function setReferral(address referrer, address user) external;

    /**
     * @notice Claims the referral reward for the caller.
     * @param token The address of the reward token.
     */
    function claimReferralReward(address token) external;

    /**
     * @notice Sets the direct referral fee.
     * @dev Only callable by owner.
     * @param directRefFeeBps_ The new direct referral fee in basis points.
     */
    function setDirectRefFeeBps(uint256 directRefFeeBps_) external;

    /**
     * @notice Sets the indirect referral fee.
     * @dev Only callable by owner.
     * @param indirectRefFeeBps_ The new indirect referral fee in basis points.
     */
    function setIndirectRefFeeBps(uint256 indirectRefFeeBps_) external;

    /**
     * @notice Sets the payout thresholds for tokens.
     * @dev Only callable by owner.
     * @param tokens The addresses of the tokens.
     * @param thresholds The new payout thresholds.
     */
    function setPayoutThreshold(address[] calldata tokens, uint256[] calldata thresholds) external;

    /**
     * @notice Sets the bonding curve whitelist status.
     * @dev Only callable by owner.
     * @param bondingCurve The address of the bonding curve.
     * @param enable The new whitelist status.
     */
    function setWhitelistedBondingCurve(address bondingCurve, bool enable) external;
    
    /**
     * @notice Quotes the referral fee for a user.
     * @param user The address of the user.
     * @param amount The amount to calculate the fee on.
     * @return referralFee The referral fee amount.
     */
    function quoteReferralFee(address user, uint256 amount) external view returns (uint256 referralFee);

    /**
     * @notice Gets the referral basis points for a user.
     * @param user The address of the user.
     * @return totalReferralBps The total referral basis points.
     */
    function getReferralBpsFor(address user) external view returns (uint256 totalReferralBps);

    /**
     * @notice Gets the referral reward for a user.
     * @param user The address of the user.
     * @param token The address of the token.
     * @return reward The reward amount.
     */
    function getReferralRewardFor(address user, address token) external view returns (uint256 reward);

    /**
     * @notice Returns the maximum fee basis points.
     * @return The maximum fee basis points (10000).
     */
    function MAX_FEE_BPS() external view returns (uint256);

    /**
     * @notice Returns the direct referral fee in basis points.
     * @return The direct referral fee.
     */
    function directRefFeeBps() external view returns (uint256);

    /**
     * @notice Returns the indirect referral fee in basis points.
     * @return The indirect referral fee.
     */
    function indirectRefFeeBps() external view returns (uint256);

    /**
     * @notice Returns the referrer for a user.
     * @param user The address of the user.
     * @return The referrer address.
     */
    function referredBy(address user) external view returns (address);

    /**
     * @notice Returns the indirect referrer for a user.
     * @param user The address of the user.
     * @return The indirect referrer address.
     */
    function indirectReferral(address user) external view returns (address);

    /**
     * @notice Returns whether a bonding curve is whitelisted.
     * @param bondingCurve The address of the bonding curve.
     * @return Whether the bonding curve is whitelisted.
     */
    function whitelistedBondingCurve(address bondingCurve) external view returns (bool);

    /**
     * @notice Returns the payout threshold for a token.
     * @param token The address of the token.
     * @return The payout threshold.
     */
    function payoutThreshold(address token) external view returns (uint256);
}
