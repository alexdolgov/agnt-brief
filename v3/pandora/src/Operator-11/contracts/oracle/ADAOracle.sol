// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./Operator.sol";
import "../interfaces/IOracle.sol";

contract ADAOracle is Operator, IOracle {
    using SafeMath for uint256;
    address public chainlinkADAUsd;
    uint256 public missingDecimal;
    uint256 private constant PRICE_PRECISION = 1e6;

    constructor(address _chainlinkADAUsd) public {
        chainlinkADAUsd = _chainlinkADAUsd;
    }

    function consult() external view override returns (uint256) {
        AggregatorV3Interface _priceFeed = AggregatorV3Interface(chainlinkADAUsd);
        (, int256 _price, , , ) = _priceFeed.latestRoundData();
        uint8 _decimals = _priceFeed.decimals();
        return uint256(_price).mul(PRICE_PRECISION).div(uint256(10)**_decimals).mul(uint256(10)**missingDecimal);
    }

    function setChainlinkADAUsd(address _chainlinkADAUsd) external onlyOperator {
        address oldChainlinkADAUsd = chainlinkADAUsd;
        chainlinkADAUsd = _chainlinkADAUsd;
        emit ChainlinkADAUsdChanged(oldChainlinkADAUsd, _chainlinkADAUsd);
    }

    event ChainlinkADAUsdChanged(address indexed oldChainlinkADAUsd, address indexed newChainlinkADAUsd);
}
