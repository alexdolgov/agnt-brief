// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IBCTokenFactory} from "src/interfaces/IBCTokenFactory.sol";
import {IHighlightsManager} from "src/interfaces/IHighlightsManager.sol";

/**
 * @title HighlightsManager
 * @notice This contract manages the highlighting of tokens.
 * @author Camelot
 */
contract HighlightsManager is Ownable, IHighlightsManager {
    /// @notice The minimum duration allowed in seconds.
    uint256 public MIN_DURATION;

    /// @notice The threshold after which the fee increases exponentially.
    uint256 public EXP_THRESHOLD;

    /// @notice Growth factor for exponential fee calculation.
    uint256 public GROWTH_FACTOR;

    /// @notice The interface for the token factory.
    IBCTokenFactory public tokenFactory;

    /// @notice The maximum duration allowed in seconds.
    uint256 public hardCap;

    /// @notice The cooldown period for a token in seconds.
    uint256 public cooldownPeriod;

    /// @notice The base fee per second to charge in wei.
    uint256 public baseFeePerSecond;
    
    /// @notice The timestamp when the latest highlight expires.
    uint256 public bookedUntil;

    /// @notice The treasury address where fees are sent.
    address payable public treasury;

    /// @notice The timestamp when a token can be highlighted again.
    mapping(address => uint256) public tokenCooldownUntil;

    /**
     * @notice Constructor for the HighlightsManager contract.
     * @param _treasury The treasury address where fees are sent.
     * @param _tokenFactory The address of the token factory.
     * @param _hardCap The maximum duration allowed in seconds.
     * @param _baseFeePerSecond The base fee per second to charge in wei.
     * @param _cooldownPeriod The cooldown period for a token in seconds.
     * @param _minDuration The minimum duration allowed in seconds.
     * @param _expThreshold The threshold after which fees increase exponentially.
     * @param _growthFactor The growth factor for exponential fee calculation.
     */
    constructor(
        address _treasury,
        address _tokenFactory,
        uint256 _hardCap,
        uint256 _baseFeePerSecond,
        uint256 _cooldownPeriod,
        uint256 _minDuration,
        uint256 _expThreshold,
        uint256 _growthFactor
    ) Ownable(msg.sender) {
        if (_minDuration == 0) revert ZeroDuration();
        if (_expThreshold < _minDuration) revert ExpThresholdBelowMinDuration();
        if (_hardCap < _minDuration) revert HardCapBelowMinimumDuration();

        treasury = payable(_treasury);
        tokenFactory = IBCTokenFactory(_tokenFactory);
        hardCap = _hardCap;
        baseFeePerSecond = _baseFeePerSecond;
        cooldownPeriod = _cooldownPeriod;
        MIN_DURATION = _minDuration;
        EXP_THRESHOLD = _expThreshold;
        GROWTH_FACTOR = _growthFactor;

        emit TreasurySet(_treasury);
        emit HardCapSet(_hardCap);
        emit BaseFeeSet(_baseFeePerSecond);
        emit CooldownPeriodSet(_cooldownPeriod);
        emit MinDurationSet(_minDuration);
        emit ExpThresholdSet(_expThreshold);
        emit GrowthFactorSet(_growthFactor);
    }

    /**
     * @inheritdoc IHighlightsManager
     */
    function highlightToken(address token, uint256 duration) external payable {
        if (bookedUntil > block.timestamp) {
            revert SlotOccupied();
        }
        if (tokenCooldownUntil[token] > block.timestamp) {
            revert TokenWithinCooldown();
        }
        if (!tokenFactory.bcTokens(token)) {
            revert NotFromTokenFactory();
        }

        bool success;
        uint256 fee = quote(duration);
        if (msg.value < fee) {
            revert InsufficientFee();
        }

        bookedUntil = block.timestamp + duration;
        tokenCooldownUntil[token] = block.timestamp + cooldownPeriod;

        (success,) = treasury.call{value: fee}("");
        if (!success) {
            revert EthTransferFailed();
        }

        if (msg.value > fee) {
            (success,) = msg.sender.call{value: msg.value - fee}("");
            if (!success) {
                revert EthTransferFailed();
            }
        }

        emit TokenHighlighted(token, msg.sender, duration, bookedUntil, fee);
    }

    /**
     * @inheritdoc IHighlightsManager
     */
    function setTreasury(address payable treasury_) external onlyOwner {
        if (treasury_ == address(0)) {
            revert TreasuryAddressZero();
        }

        treasury = treasury_;
        emit TreasurySet(treasury_);
    }

    /**
     * @inheritdoc IHighlightsManager
     */
    function setHardCap(uint256 hardCap_) external onlyOwner {
        if (hardCap_ < MIN_DURATION) {
            revert HardCapBelowMinimumDuration();
        }

        hardCap = hardCap_;
        emit HardCapSet(hardCap_);
    }

    /**
     * @inheritdoc IHighlightsManager
     */
    function setMinDuration(uint256 minDuration_) external onlyOwner {
        if (minDuration_ == 0) revert ZeroDuration();
        if (minDuration_ > hardCap) revert MinDurationExceedsHardCap();
        if (minDuration_ > EXP_THRESHOLD) revert MinDurationExceedsExpThreshold();

        MIN_DURATION = minDuration_;
        emit MinDurationSet(minDuration_);
    }

    /**
     * @inheritdoc IHighlightsManager
     */
    function setExpThreshold(uint256 expThreshold_) external onlyOwner {
        if (expThreshold_ < MIN_DURATION) revert ExpThresholdBelowMinDuration();

        EXP_THRESHOLD = expThreshold_;
        emit ExpThresholdSet(expThreshold_);
    }

    /**
     * @inheritdoc IHighlightsManager
     */
    function setGrowthFactor(uint256 growthFactor_) external onlyOwner {
        GROWTH_FACTOR = growthFactor_;
        emit GrowthFactorSet(growthFactor_);
    }

    /**
     * @inheritdoc IHighlightsManager
     */
    function setBaseFee(uint256 baseFeePerSecond_) external onlyOwner {
        baseFeePerSecond = baseFeePerSecond_;
        emit BaseFeeSet(baseFeePerSecond_);
    }

    /**
     * @inheritdoc IHighlightsManager
     */
    function setFeeConfig(
        uint256 baseFeePerSecond_,
        uint256 minDuration_,
        uint256 expThreshold_,
        uint256 growthFactor_,
        uint256 hardCap_,
        uint256 cooldownPeriod_
    ) external onlyOwner {
        if (minDuration_ == 0) revert ZeroDuration();
        if (expThreshold_ < minDuration_) revert ExpThresholdBelowMinDuration();
        if (hardCap_ < minDuration_) revert HardCapBelowMinimumDuration();

        baseFeePerSecond = baseFeePerSecond_;
        MIN_DURATION = minDuration_;
        EXP_THRESHOLD = expThreshold_;
        GROWTH_FACTOR = growthFactor_;
        hardCap = hardCap_;
        cooldownPeriod = cooldownPeriod_;

        emit BaseFeeSet(baseFeePerSecond_);
        emit MinDurationSet(minDuration_);
        emit ExpThresholdSet(expThreshold_);
        emit GrowthFactorSet(growthFactor_);
        emit HardCapSet(hardCap_);
        emit CooldownPeriodSet(cooldownPeriod_);
    }

    /**
     * @inheritdoc IHighlightsManager
     */
    function setCooldownPeriod(uint256 cooldownPeriod_) external onlyOwner {
        cooldownPeriod = cooldownPeriod_;
        emit CooldownPeriodSet(cooldownPeriod_);
    }

    /**
     * @inheritdoc IHighlightsManager
     */
    function quote(uint256 duration) public view returns (uint256 fee) {
        uint256 _expThreshold = EXP_THRESHOLD;
        uint256 baseFeePs = baseFeePerSecond;

        if (duration == 0) {
            revert ZeroDuration();
        }
        if (duration < MIN_DURATION) {
            revert DurationBelowMinimum();
        }
        if (duration > hardCap) {
            revert DurationExceedsHardCap();
        }

        if (duration <= _expThreshold) {
            fee = baseFeePs * duration;
        } else {
            uint256 extraTime = duration - _expThreshold;

            // Calculate exponential fee using the growth factor.
            uint256 exponentialFee = (baseFeePs * extraTime * GROWTH_FACTOR) / 10;

            // Total fee is the sum of the base fee and the exponential component.
            fee = (baseFeePs * _expThreshold) + exponentialFee;
        }
        return fee;
    }
}
