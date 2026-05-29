// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.7.6;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {SafeMath} from "@openzeppelin/contracts/math/SafeMath.sol";
import {AggregatorV3Interface} from "../lib/chainlink/AggregatorV3Interface.sol";

import {IMaxPriceOracle} from "./IMaxPriceOracle.sol";

contract MaxPriceOracle is IMaxPriceOracle, Ownable {
    using SafeMath for uint256;

    address constant NULL_ADDRESS = address(0);
    uint256 private constant SHIFT_DECIMALS = 10 ** 18; // ICHI is 18 decimals

    address constant USDC = address(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
    address constant WBTC = address(0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599);
    address constant WETH = address(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);

    address constant USDC_FEED = address(0x8fFfFfd4AfB6115b954Bd326cbe7B4BA576818f6);
    address constant WBTC_FEED = address(0xF4030086522a5bEEa4988F8cA5B36dbC97BeE88c);
    address constant WETH_FEED = address(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419);

    // list of chainlink oracles supported by the MaxPriceOracle
    mapping(address => address) public override chainlinkOracles;
    
    // min ICHI price (in USD, 8 decimals)
    uint256 public override minIchiPrice;

    /// @param _minIchiPrice min ICHI price (in USD, 8 decimals)
    constructor(
        uint256 _minIchiPrice
    ) {
        require(_minIchiPrice > 0, "min ICHI price not privided");
        minIchiPrice = _minIchiPrice;

        chainlinkOracles[USDC] = USDC_FEED;
        chainlinkOracles[WBTC] = WBTC_FEED;
        chainlinkOracles[WETH] = WETH_FEED;
    }

    /// @param _token token whose max price should be returned (in ICHIs)
    /// @return maxPrice the max price of the token expressed in ICHIs
    function read(address _token)
        external
        view
        override
        returns (uint256 maxPrice)
    {
        require(_token != NULL_ADDRESS, "null token");
        require(chainlinkOracles[_token] != NULL_ADDRESS, "missing oracle");

        ( ,int256 price_ , , , ) = AggregatorV3Interface(chainlinkOracles[_token]).latestRoundData();
        require(price_ > 0, "no price available"); // price oracle responded 0, or negative
        maxPrice = uint256(price_).mul(SHIFT_DECIMALS).div(minIchiPrice);
    }

    /// @param _minIchiPrice min ICHI price (in USD, 8 decimals)
    function setMinIchiPrice(uint256 _minIchiPrice) external override onlyOwner {
        require(_minIchiPrice > 0, "min ICHI price not privided");
        minIchiPrice = _minIchiPrice;

        emit SetMinIchiPrice(msg.sender, _minIchiPrice);
    }

    /// @param _token token to be enabled
    /// @param _oracle chainlink oracle for the token
    function registerOracle(address _token, address _oracle) external override onlyOwner {
        require(_token != NULL_ADDRESS && _oracle != NULL_ADDRESS, "invalid arguments");
        require(AggregatorV3Interface(_oracle).decimals() == 8, "the oracle must return USD values");
        chainlinkOracles[_token] = _oracle;

        emit RegisterOracle(msg.sender, _token, _oracle);
    }
}
