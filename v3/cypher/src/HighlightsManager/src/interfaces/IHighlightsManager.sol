// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IBCTokenFactory} from "src/interfaces/IBCTokenFactory.sol";

/**
 * @title IHighlightsManager
 * @notice Interface for managing the highlighting of tokens.
 * @author Camelot
 */
interface IHighlightsManager {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Emitted when a token is highlighted.
     * @param token The address of the highlighted token.
     * @param buyer The address of the buyer who paid for the highlight.
     * @param duration The duration of the highlight in seconds.
     * @param bookedUntil The timestamp until which the highlight slot is booked.
     * @param fee The fee paid for the highlight in wei.
     */
    event TokenHighlighted(
        address indexed token,
        address indexed buyer,
        uint256 duration,
        uint256 bookedUntil,
        uint256 fee
    );

    /**
     * @notice Emitted when the treasury address is updated.
     * @param treasury The new treasury address.
     */
    event TreasurySet(address indexed treasury);

    /**
     * @notice Emitted when the base fee per second is updated.
     * @param baseFeePerSecond The new base fee per second in wei.
     */
    event BaseFeeSet(uint256 baseFeePerSecond);

    /**
     * @notice Emitted when the hard cap for duration is updated.
     * @param hardCap The new maximum duration allowed in seconds.
     */
    event HardCapSet(uint256 hardCap);

    /**
     * @notice Emitted when the cooldown period is updated.
     * @param coolDownPeriod The new cooldown period in seconds.
     */
    event CooldownPeriodSet(uint256 coolDownPeriod);

    /**
     * @notice Emitted when the minimum duration is updated.
     * @param minDuration The new minimum duration in seconds.
     */
    event MinDurationSet(uint256 minDuration);

    /**
     * @notice Emitted when the exponential threshold is updated.
     * @param expThreshold The new exponential threshold in seconds.
     */
    event ExpThresholdSet(uint256 expThreshold);

    /**
     * @notice Emitted when the growth factor is updated.
     * @param growthFactor The new growth factor.
     */
    event GrowthFactorSet(uint256 growthFactor);

    /*//////////////////////////////////////////////////////////////
                                 ERRORS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Thrown when the duration is zero.
     */
    error ZeroDuration();

    /**
     * @notice Thrown when the duration exceeds the hard cap.
     */
    error DurationExceedsHardCap();

    /**
     * @notice Thrown when the duration is below the minimum allowed.
     */
    error DurationBelowMinimum();

    /**
     * @notice Thrown when the fee provided is insufficient.
     */
    error InsufficientFee();

    /**
     * @notice Thrown when the hard cap is below the minimum duration.
     */
    error HardCapBelowMinimumDuration();

    /**
     * @notice Thrown when the treasury address is the zero address.
     */
    error TreasuryAddressZero();

    /**
     * @notice Thrown when the exponential threshold is below the minimum duration.
     */
    error ExpThresholdBelowMinDuration();

    /**
     * @notice Thrown when the minimum duration exceeds the hard cap.
     */
    error MinDurationExceedsHardCap();

    /**
     * @notice Thrown when the minimum duration exceeds the exponential threshold.
     */
    error MinDurationExceedsExpThreshold();

    /**
     * @notice Thrown when a native currency transfer fails.
     */
    error EthTransferFailed();

    /**
     * @notice Thrown when the highlight slot is already occupied.
     */
    error SlotOccupied();

    /**
     * @notice Thrown when the token is within its cooldown period.
     */
    error TokenWithinCooldown();

    /**
     * @notice Thrown when the token was not deployed through the factory.
     */
    error NotFromTokenFactory();

    /*//////////////////////////////////////////////////////////////
                            EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Allows msg.sender to highlight a token for a given duration, paying the fee in native currency.
     * @dev The highlight slot must be available (bookedUntil must be in the past).
     * @dev The token must not be within its cooldown period.
     * @dev The token must have been deployed through the token factory.
     * @param token The address of the token to highlight.
     * @param duration The duration of the highlight in seconds.
     */
    function highlightToken(address token, uint256 duration) external payable;

    /**
     * @notice Sets the treasury address where fees are sent.
     * @dev Only the owner can call this function.
     * @param treasury_ The new treasury address.
     */
    function setTreasury(address payable treasury_) external;

    /**
     * @notice Sets the maximum duration allowed for highlights.
     * @dev Only the owner can call this function.
     * @dev The hard cap must be at least MIN_DURATION.
     * @param hardCap_ The new maximum duration allowed in seconds.
     */
    function setHardCap(uint256 hardCap_) external;

    /**
     * @notice Sets the base fee per second for highlighting.
     * @dev Only the owner can call this function.
     * @param baseFeePerSecond_ The new base fee per second in wei.
     */
    function setBaseFee(uint256 baseFeePerSecond_) external;

    /**
     * @notice Sets the cooldown period for tokens after being highlighted.
     * @dev Only the owner can call this function.
     * @param cooldownPeriod_ The new cooldown period in seconds.
     */
    function setCooldownPeriod(uint256 cooldownPeriod_) external;

    /**
     * @notice Sets the minimum duration allowed for highlights.
     * @dev Only the owner can call this function.
     * @param minDuration_ The new minimum duration in seconds.
     */
    function setMinDuration(uint256 minDuration_) external;

    /**
     * @notice Sets the exponential fee threshold.
     * @dev Only the owner can call this function.
     * @param expThreshold_ The new exponential threshold in seconds.
     */
    function setExpThreshold(uint256 expThreshold_) external;

    /**
     * @notice Sets the growth factor for exponential fee calculation.
     * @dev Only the owner can call this function.
     * @param growthFactor_ The new growth factor.
     */
    function setGrowthFactor(uint256 growthFactor_) external;

    /**
     * @notice Sets all fee configuration parameters in a single call.
     * @dev Only the owner can call this function.
     * @param baseFeePerSecond_ The new base fee per second in wei.
     * @param minDuration_ The new minimum duration in seconds.
     * @param expThreshold_ The new exponential threshold in seconds.
     * @param growthFactor_ The new growth factor.
     * @param hardCap_ The new maximum duration in seconds.
     * @param cooldownPeriod_ The new cooldown period in seconds.
     */
    function setFeeConfig(
        uint256 baseFeePerSecond_,
        uint256 minDuration_,
        uint256 expThreshold_,
        uint256 growthFactor_,
        uint256 hardCap_,
        uint256 cooldownPeriod_
    ) external;

    /**
     * @notice Quotes the fee for highlighting a token for a given duration.
     * @dev The fee is calculated based on a linear rate for durations up to EXP_THRESHOLD,
     *      and an exponential rate for durations beyond that.
     * @param duration The duration in seconds.
     * @return fee The fee in wei.
     */
    function quote(uint256 duration) external view returns (uint256 fee);

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the token factory interface.
     * @return The IBCTokenFactory interface.
     */
    function tokenFactory() external view returns (IBCTokenFactory);

    /**
     * @notice Returns the minimum duration allowed for highlights.
     * @return The minimum duration in seconds.
     */
    function MIN_DURATION() external view returns (uint256);

    /**
     * @notice Returns the threshold after which fees increase exponentially.
     * @return The exponential threshold in seconds.
     */
    function EXP_THRESHOLD() external view returns (uint256);

    /**
     * @notice Returns the growth factor for exponential fee calculation.
     * @return The growth factor.
     */
    function GROWTH_FACTOR() external view returns (uint256);

    /**
     * @notice Returns the maximum duration allowed for highlights.
     * @return The hard cap in seconds.
     */
    function hardCap() external view returns (uint256);

    /**
     * @notice Returns the cooldown period for tokens.
     * @return The cooldown period in seconds.
     */
    function cooldownPeriod() external view returns (uint256);

    /**
     * @notice Returns the base fee per second.
     * @return The base fee per second in wei.
     */
    function baseFeePerSecond() external view returns (uint256);

    /**
     * @notice Returns the timestamp until which the highlight slot is booked.
     * @return The booked until timestamp.
     */
    function bookedUntil() external view returns (uint256);

    /**
     * @notice Returns the treasury address where fees are sent.
     * @return The treasury address.
     */
    function treasury() external view returns (address payable);

    /**
     * @notice Returns the timestamp until which a token cannot be highlighted again.
     * @param token The address of the token.
     * @return The cooldown until timestamp.
     */
    function tokenCooldownUntil(address token) external view returns (uint256);
}
