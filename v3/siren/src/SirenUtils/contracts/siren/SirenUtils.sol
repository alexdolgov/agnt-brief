pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "../position/IncreasePositionUtils.sol";
import "../position/PositionUtils.sol";
import "../data/DataStore.sol";
import "../data/Keys.sol";
import "../oracle/IPriceFeed.sol";
import "../error/Errors.sol";
import "../chain/Chain.sol";
import "../utils/Precision.sol";

contract SirenUtils {
    function getExecutionPrice(
        PositionUtils.UpdatePositionParams memory params,
        Price.Props memory indexTokenPrice
    ) external view returns (int256, int256, uint256, uint256) {
        return
            IncreasePositionUtils.getExecutionPrice(
                params,
                indexTokenPrice
            );
    }

    function getPriceFeedPrice(DataStore dataStore, address token) external view returns (bool, uint256) {
        address priceFeedAddress = dataStore.getAddress(Keys.priceFeedKey(token));
        if (priceFeedAddress == address(0)) {
            return (false, 0);
        }

        IPriceFeed priceFeed = IPriceFeed(priceFeedAddress);

        (
            /* uint80 roundID */,
            int256 _price,
            /* uint256 startedAt */,
            uint256 timestamp,
            /* uint80 answeredInRound */
        ) = priceFeed.latestRoundData();

        if (_price <= 0) {
            revert Errors.InvalidFeedPrice(token, _price);
        }

        uint256 heartbeatDuration = dataStore.getUint(Keys.priceFeedHeartbeatDurationKey(token));
        if (Chain.currentTimestamp() > timestamp && Chain.currentTimestamp() - timestamp > heartbeatDuration) {
            revert Errors.PriceFeedNotUpdated(token, timestamp, heartbeatDuration);
        }

        uint256 price = SafeCast.toUint256(_price);
        uint256 multiplier = dataStore.getUint(Keys.priceFeedMultiplierKey(token));

        if (multiplier == 0) {
            revert Errors.EmptyPriceFeedMultiplier(token);
        }

        uint256 adjustedPrice = Precision.mulDiv(price, multiplier, Precision.FLOAT_PRECISION);

        return (true, adjustedPrice);        
    }
}