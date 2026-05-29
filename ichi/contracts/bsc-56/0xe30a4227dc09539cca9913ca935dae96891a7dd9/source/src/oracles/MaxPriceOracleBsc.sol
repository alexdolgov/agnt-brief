// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.7.6;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {SafeMath} from "@openzeppelin/contracts/math/SafeMath.sol";
import {AggregatorV3Interface} from "../lib/chainlink/AggregatorV3Interface.sol";

import {IMaxPriceOracle} from "./IMaxPriceOracle.sol";

contract MaxPriceOracleBsc is IMaxPriceOracle, Ownable {
    using SafeMath for uint256;

    address constant NULL_ADDRESS = address(0);
    uint256 private constant SHIFT_DECIMALS = 10 ** 18; // ICHI is 18 decimals

    address constant USDT = address(0x55d398326f99059fF775485246999027B3197955);
    address constant BTCB = address(0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c);
    address constant WBNB = address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c);

    address constant USDT_FEED = address(0xB97Ad0E74fa7d920791E90258A6E2085088b4320);
    address constant BTCB_FEED = address(0x264990fbd0A4796A3E3d8E37C4d5F87a3aCa5Ebf);
    address constant WBNB_FEED = address(0x0567F2323251f0Aab15c8dFb1967E4e8A7D42aeE);

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

        chainlinkOracles[USDT] = USDT_FEED;
        chainlinkOracles[BTCB] = BTCB_FEED;
        chainlinkOracles[WBNB] = WBNB_FEED;
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
        require(_minIchiPrice > 0, "min ICHI price not provided");
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
