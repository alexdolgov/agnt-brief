// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "./Operator.sol";
import "../interfaces/IOracle.sol";

contract ETHOracle is Operator, IOracle {
    using SafeMath for uint256;
    address public chainlinkEthUsd;

    uint256 private constant PRICE_PRECISION = 1e6;

    constructor(address _chainlinkEthUsd) public {
        chainlinkEthUsd = _chainlinkEthUsd;
    }

    function consult() external view override returns (uint256) {
        AggregatorV3Interface _priceFeed = AggregatorV3Interface(chainlinkEthUsd);
        (, int256 _price, , , ) = _priceFeed.latestRoundData();
        uint8 _decimals = _priceFeed.decimals();
        return uint256(_price).mul(PRICE_PRECISION).div(uint256(10)**_decimals);
    }

    function setChainlinkEthUsd(address _chainlinkEthUsd) external onlyOperator {
        address oldChainlinkEthUsd = chainlinkEthUsd;
        chainlinkEthUsd = _chainlinkEthUsd;
        emit ChainlinkEthUsdChanged(oldChainlinkEthUsd, _chainlinkEthUsd);
    }

    event ChainlinkEthUsdChanged(address indexed oldChainlinkEthUsd, address indexed newChainlinkEthUsd);
}
