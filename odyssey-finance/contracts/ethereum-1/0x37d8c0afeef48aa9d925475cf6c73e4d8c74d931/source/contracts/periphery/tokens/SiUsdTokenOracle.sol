// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "../../interfaces/periphery/ITokenOracle.sol";

contract SiUsdTokenOracle is ITokenOracle {
    using SafeCast for int256;

    AggregatorV3Interface public immutable usdcAggregator; // Chainlink USDC/USD (8 decimals)
    AggregatorV3Interface public immutable iUSDAggregator; // InfiniFi iUSD/USDC (18 decimals)
    AggregatorV3Interface public immutable siUSDAggregator; // InfiniFi siUSD/iUSD (18 decimals)

    constructor(
        AggregatorV3Interface usdcAggregator_,
        AggregatorV3Interface iUSDAggregator_,
        AggregatorV3Interface siUSDAggregator_
    ) {
        require(address(usdcAggregator_) != address(0), "null-usdc-aggregator");
        require(address(iUSDAggregator_) != address(0), "null-iusd-aggregator");
        require(address(siUSDAggregator_) != address(0), "null-siusd-aggregator");

        usdcAggregator = usdcAggregator_;
        iUSDAggregator = iUSDAggregator_;
        siUSDAggregator = siUSDAggregator_;
    }

    /// @inheritdoc ITokenOracle
    /// @dev There is no need to check `_lastUpdatedAt` because both oracle always return `block.timestamp`
    function getPriceInUsd(address) external view override returns (uint256 _priceInUsd) {
        (, int256 _usdcPrice, , , ) = usdcAggregator.latestRoundData();
        (, int256 _iUsdPrice, , , ) = iUSDAggregator.latestRoundData();
        (, int256 _siUsdPrice, , , ) = siUSDAggregator.latestRoundData();

        return (_siUsdPrice.toUint256() * _iUsdPrice.toUint256() * _usdcPrice.toUint256()) / 1e26;
    }
}
