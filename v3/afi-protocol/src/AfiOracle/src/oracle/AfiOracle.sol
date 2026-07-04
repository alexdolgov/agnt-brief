// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";

interface IafiUSD {
    function exchangeRate() external view returns (uint256);
}

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function decimals() external view returns (uint8);
}

interface AggregatorV3Interface {
    function decimals() external view returns (uint8);
    function description() external view returns (string memory);
    function version() external view returns (uint256);
    function getRoundData(uint80 _roundId)
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

interface AggregatorInterface {
    function latestAnswer() external view returns (int256);
    function latestTimestamp() external view returns (uint256);
    function latestRound() external view returns (uint256);
    function getAnswer(uint256 roundId) external view returns (int256);
    function getTimestamp(uint256 roundId) external view returns (uint256);

    event AnswerUpdated(int256 indexed current, uint256 indexed roundId, uint256 updatedAt);
    event NewRound(uint256 indexed roundId, address indexed startedBy, uint256 startedAt);
}

interface AggregatorV2V3Interface is AggregatorInterface, AggregatorV3Interface {}

contract AfiOracle is Ownable {
    uint8 public constant decimals = 8;
    string public constant description = "afiUSD / USD";
    uint256 public constant version = 1;

    IafiUSD public immutable afiUSD;
    AggregatorV2V3Interface public immutable usdcPriceFeed;

    error InvalidAddress();

    constructor(address _afiUSD, address _usdcPriceFeed, address _owner) Ownable(_owner) {
        if (_afiUSD == address(0)) revert InvalidAddress();
        if (_usdcPriceFeed == address(0)) revert InvalidAddress();
        if (_owner == address(0)) revert InvalidAddress();

        afiUSD = IafiUSD(_afiUSD);
        usdcPriceFeed = AggregatorV2V3Interface(_usdcPriceFeed);
    }

    function _getUSDCPrice() internal view returns (int256) {
        (, int256 price,,,) = usdcPriceFeed.latestRoundData();
        return price;
    }

    function _calculateAfiUSDPrice(int256 usdcPrice) internal view returns (int256) {
        uint256 exchangeRate = afiUSD.exchangeRate();
        return (usdcPrice * int256(exchangeRate)) / 1e6;
    }

    function latestAnswer() external view returns (int256) {
        int256 usdcPrice = _getUSDCPrice();
        return _calculateAfiUSDPrice(usdcPrice);
    }

    function getAnswer(uint256 roundId) external view returns (int256) {
        int256 usdcPrice = _getUSDCPrice();
        return _calculateAfiUSDPrice(usdcPrice);
    }

    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        (uint80 feedRoundId, int256 usdcPrice, uint256 feedStartedAt, uint256 feedUpdatedAt,) =
            usdcPriceFeed.latestRoundData();
        int256 afiUSDPrice = _calculateAfiUSDPrice(usdcPrice);
        return (feedRoundId, afiUSDPrice, feedStartedAt, feedUpdatedAt, 0);
    }

    function getAfiUSDAddress() external view returns (address) {
        return address(afiUSD);
    }

    function getUSDCPrice() external view returns (int256) {
        return _getUSDCPrice();
    }

    function getUSDCPriceFeedAddress() external view returns (address) {
        return address(usdcPriceFeed);
    }

    function getCurrentExchangeRate() external view returns (uint256) {
        return afiUSD.exchangeRate();
    }
}
