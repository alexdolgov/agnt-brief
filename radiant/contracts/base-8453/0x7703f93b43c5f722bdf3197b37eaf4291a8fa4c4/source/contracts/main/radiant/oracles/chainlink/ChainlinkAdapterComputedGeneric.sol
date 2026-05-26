// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import {ValidatedChainlinkAdapter} from "./ValidatedChainlinkAdapter.sol";
import {IChainlinkAdapter} from "../../../interfaces/IChainlinkAdapter.sol";
import {IChainlinkAggregator} from "../../../interfaces/IChainlinkAggregator.sol";

/// @title ChainlinkAdapterComputedGeneric Contract
/// @notice Provides a computed price using two intermediate chainlink oracles.
/// @dev The computed price is the product of the two intermediate prices.
/// Typically one feed is an intermediary-asset/USD price feed and the other is the exchange ratio of desired-price-asset for intermediary-asset.
/// The computed price is the price of the desired-price-asset / USD.
/// Returned decimals are the same as the intermediary-asset/USD price feed.
/// @author Radiant
contract ChainlinkAdapterComputedGeneric is IChainlinkAdapter {
	struct PriceFeedResponse {
		uint80 roundId;
		uint256 answer;
		uint256 startedAt;
		uint256 updatedAt;
		uint80 answeredInRound;
	}

	/// @notice i-asset/USD price feed
	ValidatedChainlinkAdapter public iassetUsdOracle;
	/// @notice ExchangeRatio feed
	ValidatedChainlinkAdapter public exchangeRatioOracle;

	string public description;

	error AddressZero();

	/**
	 * @param _description Description of the oracle (.ie. "wstETH/USD")
	 * @param _iassetUsdOracle i-asset/USD price feed (.ie. "ETH/USD")
	 * @param _exchangeRatioOracle exchange ratio feed (.ie. "wstETH/ETH")
	 * @dev Ensure oracles are externally validated
	 */
	constructor(string memory _description, address _iassetUsdOracle, address _exchangeRatioOracle) {
		if (_iassetUsdOracle == address(0)) revert AddressZero();
		if (_exchangeRatioOracle == address(0)) revert AddressZero();
		description = _description;
		iassetUsdOracle = ValidatedChainlinkAdapter(_iassetUsdOracle);
		exchangeRatioOracle = ValidatedChainlinkAdapter(_exchangeRatioOracle);
	}

	function decimals() public view returns (uint8) {
		return iassetUsdOracle.decimals();
	}

	/**
	 * @notice Returns desired-price-asset / USD.
	 * @return answer (i.e. wstETH/USD price with 8 decimals)
	 */
	function latestAnswer() public view returns (uint256 answer) {
		return _computeLatestAnswer();
	}

	/**
	 * @notice Returns the latest round data of the computed price.
	 * @return roundId of greatest from both oracles
	 * @return answer computed as i-asset/USD * exchangeRatio
	 * @return startedAt as the earliest from both oracles
	 * @return updatedAt as the latest from both oracles
	 * @return answeredInRound as the greatest from both oracles
	 */
	function latestRoundData()
		public
		view
		returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
	{
		PriceFeedResponse memory computed = _computeLatestRoundData();
		roundId = computed.roundId;
		answer = _safeCastUint256ToInt256(computed.answer);
		startedAt = computed.startedAt;
		updatedAt = computed.updatedAt;
		answeredInRound = computed.answeredInRound;
	}

	function _computeLatestAnswer() internal view virtual returns (uint256) {
		uint256 iAssetPrice = iassetUsdOracle.latestAnswer();
		uint256 exchangeRatio = exchangeRatioOracle.latestAnswer();
		return (iAssetPrice * exchangeRatio) / (10 ** exchangeRatioOracle.decimals());
	}

	function _computeLatestRoundData() internal view virtual returns (PriceFeedResponse memory clComputed) {
		(PriceFeedResponse memory iAssetFeed, PriceFeedResponse memory exchangeFeed) = _callLatestRoundDataFeeds();
		clComputed.answer = (iAssetFeed.answer * exchangeFeed.answer) / (10 ** exchangeRatioOracle.decimals());
		clComputed.roundId = iAssetFeed.roundId > exchangeFeed.roundId ? iAssetFeed.roundId : exchangeFeed.roundId;
		clComputed.startedAt = iAssetFeed.startedAt < exchangeFeed.startedAt
			? iAssetFeed.startedAt
			: exchangeFeed.startedAt;
		clComputed.updatedAt = iAssetFeed.updatedAt > exchangeFeed.updatedAt
			? iAssetFeed.updatedAt
			: exchangeFeed.updatedAt;
		clComputed.answeredInRound = clComputed.roundId;
	}

	function _callLatestRoundDataFeeds()
		internal
		view
		virtual
		returns (PriceFeedResponse memory iAssetFeed, PriceFeedResponse memory exchangeFeed)
	{
		(iAssetFeed.roundId, , iAssetFeed.startedAt, iAssetFeed.updatedAt, iAssetFeed.answeredInRound) = iassetUsdOracle
			.latestRoundData();
		iAssetFeed.answer = iassetUsdOracle.latestAnswer();

		(
			exchangeFeed.roundId,
			,
			exchangeFeed.startedAt,
			exchangeFeed.updatedAt,
			exchangeFeed.answeredInRound
		) = exchangeRatioOracle.latestRoundData();
		exchangeFeed.answer = exchangeRatioOracle.latestAnswer();
	}

	function _safeCastUint256ToInt256(uint256 _value) internal pure returns (int256) {
		require(_value <= type(uint256).max / 2, "cast overflow");
		return int256(_value);
	}
}
