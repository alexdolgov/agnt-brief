// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

import {IRateProvider} from "./interfaces/IRateProvider.sol";
import {ISavingsToken} from "./interfaces/ISavingsToken.sol";

/// @title RateProvider
/// @notice Oracle contract that converts savings token amounts into pmUSD-equivalent values.
/// @dev Composes the on-chain convertToAssets() exchange rate with a Chainlink underlying/USD feed.
///
///      Oracle chain (e.g., scrvUSD → pmUSD):
///        scrvUSD amount × convertToAssets(1 share) → crvUSD amount (on-chain, ERC-4626)
///        × Chainlink crvUSD/USD → USD amount (external oracle)
///        × 1.0 → pmUSD amount (by design: pmUSD = $1)
///
///      The RateProvider normalizes all prices to 18-decimal precision so the vault never needs
///      to know the savings token's decimal count. Handles tokens with different decimals
///      (e.g., 18 for scrvUSD, 6 for savings USDC vaults).
contract RateProvider is IRateProvider, Ownable {
    /// @notice The base asset (pmUSD) address. Always priced at 1e18.
    address public immutable baseAsset;

    /// @notice The savings token address (e.g., scrvUSD).
    address public immutable savingsToken;

    /// @notice Chainlink price feed for the savings token's underlying asset (e.g., crvUSD/USD).
    AggregatorV3Interface public priceFeed;

    /// @notice Maximum age (in seconds) for Chainlink data before it's considered stale.
    uint256 public stalenessThreshold;

    /// @notice Number of decimals the Chainlink feed uses (cached for gas efficiency).
    uint8 public immutable feedDecimals;

    /// @notice Number of decimals the savings token uses (cached for gas efficiency).
    uint8 public immutable savingsTokenDecimals;

    /// @notice Number of decimals the savings token's underlying asset uses (cached for gas efficiency).
    uint8 public immutable underlyingDecimals;

    /// @dev 1e18 constant for pmUSD base asset rate.
    uint256 private constant BASE_ASSET_RATE = 1e18;

    /// @dev Scaling factor from Chainlink feed decimals to 18 decimals.
    uint256 private immutable _feedScalingFactor;

    // ─── Events ───────────────────────────────────────────────────────────────

    event PriceFeedUpdated(address indexed oldFeed, address indexed newFeed);
    event StalenessThresholdUpdated(uint256 oldThreshold, uint256 newThreshold);

    // ─── Errors ───────────────────────────────────────────────────────────────

    error ZeroAddress();
    error ZeroRate();
    error InvalidPrice();
    error StalePrice(uint256 updatedAt, uint256 threshold);
    error InvalidRoundData();
    error StalenessThresholdTooLow();
    error UnsupportedToken();

    // ─── Constructor ──────────────────────────────────────────────────────────

    /// @param _baseAsset The base asset (pmUSD) address.
    /// @param _savingsToken The savings token (e.g., scrvUSD) address.
    /// @param _priceFeed Chainlink price feed for the underlying/USD pair.
    /// @param _stalenessThreshold Maximum acceptable age of oracle data in seconds.
    /// @param _owner Initial owner (governance multisig or timelock).
    constructor(
        address _baseAsset,
        address _savingsToken,
        address _priceFeed,
        uint256 _stalenessThreshold,
        address _owner
    ) Ownable(_owner) {
        if (_baseAsset == address(0)) revert ZeroAddress();
        if (_savingsToken == address(0)) revert ZeroAddress();
        if (_priceFeed == address(0)) revert ZeroAddress();
        if (_stalenessThreshold < 60) revert StalenessThresholdTooLow();

        baseAsset = _baseAsset;
        savingsToken = _savingsToken;
        priceFeed = AggregatorV3Interface(_priceFeed);
        stalenessThreshold = _stalenessThreshold;

        feedDecimals = AggregatorV3Interface(_priceFeed).decimals();
        require(feedDecimals <= 18, "RateProvider: feed decimals > 18");
        savingsTokenDecimals = IERC20Metadata(_savingsToken).decimals();
        address underlying = ISavingsToken(_savingsToken).asset();
        underlyingDecimals = IERC20Metadata(underlying).decimals();
        _feedScalingFactor = 10 ** feedDecimals;
    }

    // ─── External View Functions ──────────────────────────────────────────────

    /// @inheritdoc IRateProvider
    function getRate(address token) external view returns (uint256) {
        if (token == baseAsset) return BASE_ASSET_RATE;
        if (token != savingsToken) revert UnsupportedToken();
        return _computeRate(Math.Rounding.Floor);
    }

    /// @inheritdoc IRateProvider
    function getRateRoundUp(address token) external view returns (uint256) {
        if (token == baseAsset) return BASE_ASSET_RATE;
        if (token != savingsToken) revert UnsupportedToken();
        return _computeRate(Math.Rounding.Ceil);
    }

    /// @inheritdoc IRateProvider
    function getUnderlyingPrice() external view returns (uint256) {
        return _getChainlinkPrice();
    }

    // ─── Governance Functions ─────────────────────────────────────────────────

    /// @notice Update the Chainlink price feed address.
    /// @dev Only callable by owner. The new feed must have the same decimals as the original.
    /// @param _newFeed The new Chainlink price feed address.
    function setPriceFeed(address _newFeed) external onlyOwner {
        if (_newFeed == address(0)) revert ZeroAddress();

        AggregatorV3Interface newFeed = AggregatorV3Interface(_newFeed);
        require(newFeed.decimals() == feedDecimals, "RateProvider: decimal mismatch");

        address oldFeed = address(priceFeed);
        priceFeed = newFeed;

        emit PriceFeedUpdated(oldFeed, _newFeed);
    }

    /// @notice Update the staleness threshold for Chainlink data.
    /// @param _newThreshold New maximum age in seconds. Must be >= 60.
    function setStalenessThreshold(uint256 _newThreshold) external onlyOwner {
        if (_newThreshold < 60) revert StalenessThresholdTooLow();

        uint256 oldThreshold = stalenessThreshold;
        stalenessThreshold = _newThreshold;

        emit StalenessThresholdUpdated(oldThreshold, _newThreshold);
    }

    // ─── Internal Functions ───────────────────────────────────────────────────

    /// @dev Computes the rate for the savings token in pmUSD terms.
    ///      rate = convertToAssets(10^decimals) * underlyingPriceUSD / 10^tokenDecimals
    ///      The division by 10^tokenDecimals normalizes the output to 18 decimals.
    /// @param rounding The rounding direction (Floor for getRate, Ceil for getRateRoundUp).
    /// @return rate The savings token price in 18-decimal pmUSD terms.
    function _computeRate(Math.Rounding rounding) internal view returns (uint256 rate) {
        // convertToAssets(10^decimals) = how many underlying assets 1 full share is worth
        uint256 sharePrice = ISavingsToken(savingsToken).convertToAssets(10 ** savingsTokenDecimals);
        uint256 underlyingUSD = _getChainlinkPrice();

        rate = Math.mulDiv(sharePrice, underlyingUSD, 10 ** underlyingDecimals, rounding);

        if (rate == 0) revert ZeroRate();
    }

    /// @dev Fetches and validates the Chainlink underlying/USD price, scaled to 18 decimals.
    ///      Validates: answer > 0, answeredInRound >= roundId, updatedAt within staleness threshold.
    /// @return price The underlying price scaled to 18 decimals.
    function _getChainlinkPrice() internal view returns (uint256 price) {
        (uint80 roundId, int256 answer, , /* uint256 startedAt */ uint256 updatedAt, uint80 answeredInRound) = priceFeed
            .latestRoundData();

        // Validate answer is positive
        if (answer <= 0) revert InvalidPrice();

        // Validate round completeness
        if (answeredInRound < roundId) revert InvalidRoundData();

        // Validate freshness
        if (block.timestamp - updatedAt > stalenessThreshold) {
            revert StalePrice(updatedAt, stalenessThreshold);
        }

        // Scale from feed decimals (typically 8) to 18 decimals
        price = uint256(answer) * (1e18 / _feedScalingFactor);
    }
}
