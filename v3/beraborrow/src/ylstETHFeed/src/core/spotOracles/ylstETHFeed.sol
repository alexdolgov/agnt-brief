// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";
import {IAggregatorV3Interface} from "src/interfaces/utils/integrations/IAggregatorV3Interface.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";

contract ylstETHFeed is IAggregatorV3Interface {
    IMetaBeraborrowCore immutable public metaBeraborrowCore;
    uint256 constant WAD = 1e18;
    uint256 public exchangeRate = 1.06e18;

    address public immutable weth;

    address public keeper;

    IPriceFeed public priceFeed;
    
    struct Price {
        uint256 price;
        uint256 age;
    }

    modifier onlyOwner() {
        require(msg.sender == metaBeraborrowCore.owner(), "Caller not owner");
        _;
    }

    constructor(address _metaBeraborrowCore, address _priceFeed, address _weth) {
        metaBeraborrowCore = IMetaBeraborrowCore(_metaBeraborrowCore);
        priceFeed = IPriceFeed(_priceFeed);
        weth = _weth;
    }

    function _readPrice() internal view returns (uint256 price, uint256 age) {
        uint256 wethPrice = priceFeed.fetchPrice(weth);

        return (wethPrice * exchangeRate / WAD, block.timestamp);
    }

    function setExchangeRate(uint256 _exchangeRate) external onlyOwner {
        require(_exchangeRate > 0, "Exchange rate must be greater than zero");
        exchangeRate = _exchangeRate;
    }

    function setKeeper(address _keeper) external onlyOwner {
        require(_keeper != address(0), "Keeper cannot be zero address");
        keeper = _keeper;
    }

    function decimals() external view override returns (uint8) {
        return 18;
    }

    function description() external view override returns (string memory) {
        return "yLSTETH Price Feed";
    }

    function version() external view override returns (uint256) {
        return 1;
    }

    function getRoundData(
        uint80 _roundId
    )
        external
        view
        override
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        (uint256 price, uint256 priceAge) = _readPrice();

        return (uint80(priceAge - 1), int256(price), priceAge - 1, priceAge - 1, uint80(priceAge - 1));
    }

    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        (uint256 price, uint256 priceAge) = _readPrice();

        return (uint80(priceAge), int256(price), priceAge, priceAge, uint80(priceAge));
    }
}