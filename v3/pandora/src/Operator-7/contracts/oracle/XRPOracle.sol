// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "./Operator.sol";
import "../interfaces/IOracle.sol";

contract XRPOracle is Operator, IOracle {
    using SafeMath for uint256;
    address public chainlinkXRPUsd;

    uint256 private constant PRICE_PRECISION = 1e6;

    constructor(address _chainlinkXRPUsd) public {
        chainlinkXRPUsd = _chainlinkXRPUsd;
    }

    function consult() external view override returns (uint256) {
        AggregatorV3Interface _priceFeed = AggregatorV3Interface(chainlinkXRPUsd);
        (, int256 _price, , , ) = _priceFeed.latestRoundData();
        uint8 _decimals = _priceFeed.decimals();
        return uint256(_price).mul(PRICE_PRECISION).div(uint256(10)**_decimals);
    }

    function setChainlinkXRPUsd(address _chainlinkXRPUsd) external onlyOperator {
        address oldChainlinkXRPUsd = chainlinkXRPUsd;
        chainlinkXRPUsd = _chainlinkXRPUsd;
        emit ChainlinkXRPUsdChanged(oldChainlinkXRPUsd, _chainlinkXRPUsd);
    }

    event ChainlinkXRPUsdChanged(address indexed oldChainlinkXRPUsd, address indexed newChainlinkXRPUsd);
}
