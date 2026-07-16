// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@pythnetwork/pyth-sdk-solidity/IPyth.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

interface ISynonymPriceOracle {
    enum PriceSource {
        PYTH,
        CHAINLINK
    }

    struct Price {
        uint256 price;
        uint256 confidence;
        uint256 precision;
    }

    function priceSourceAvailable(address _asset, PriceSource _source) external view returns (bool);
    function getPrice(address _asset, PriceSource _source) external view returns (Price memory price);
    function setPyth(IPyth _pyth) external;
    function setPriceSource(address _asset, bytes32 _pythId, uint256 _maxPythPriceAge, AggregatorV3Interface _chainlinkAggregator, uint256 _maxChainlinkPriceAge) external;
}
