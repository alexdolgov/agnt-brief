// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import "openzeppelin/access/Ownable.sol";
import {IPyth} from "./../interfaces/IPyth.sol";
import {PythStructs} from "./../interfaces/PythStructs.sol";
import {AggregatorV3Interface} from "./../interfaces/AggregatorV3Interface.sol";
import "forge-std/console.sol";

/**
 * @title PythAggregatorAdapter
 * @notice Wraps a Pyth Datafeed in a CHAINLINK AggregatorV3Interface
 */
contract PythAggregatorAdapter is Ownable, AggregatorV3Interface {
    IPyth public immutable priceFeed;
    bytes32 public immutable dataFeedId;
    string private aggregatorDescription;

    uint8 private constant _DECIMALS = 8;

    bool public useUnsafe = false;

    event UseUnsafeUpdated(bool _value);

    constructor(address _priceFeed, bytes32 _dataFeedId, string memory _description) {
        priceFeed = IPyth(_priceFeed);
        dataFeedId = _dataFeedId;
        aggregatorDescription = _description;
    }

    function _getPriceFromDataFeed() internal view returns (int256 value, uint256 timestamp) {
        PythStructs.Price memory price;
        if (useUnsafe) {
            price = priceFeed.getPriceUnsafe(dataFeedId);
        } else {
            price = priceFeed.getPrice(dataFeedId);
        }

        require(uint32(-price.expo) == uint32(_DECIMALS), "wrong decimals");

        value = price.price;
        timestamp = price.publishTime;
    }

    function decimals() external pure override returns (uint8) {
        return _DECIMALS;
    }

    function description() external view override returns (string memory) {
        return aggregatorDescription;
    }

    function version() external pure override returns (uint256) {
        return 1;
    }

    function getRoundData(uint80 _roundId)
        external
        view
        override
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        _roundId; // silence unused warning
        (int256 value, uint256 timestamp) = _getPriceFromDataFeed();

        roundId = 0;
        answer = value;
        startedAt = timestamp;
        updatedAt = timestamp;
        answeredInRound = 0;
    }

    function latestRoundData()
        external
        view
        override
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        (int256 value, uint256 timestamp) = _getPriceFromDataFeed();

        roundId = 0;
        answer = value;
        startedAt = timestamp;
        updatedAt = timestamp;
        answeredInRound = 0;
    }

    function updateUseUnsafe(bool _enable) external onlyOwner {
        useUnsafe = _enable;
        emit UseUnsafeUpdated(_enable);
    }
}
