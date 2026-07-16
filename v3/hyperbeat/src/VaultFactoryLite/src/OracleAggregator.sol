// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.29;

import { IAggregatorV3 } from "./interfaces/IAggregatorV3.sol";

contract OracleAggregator {
    address public immutable baseFeed;
    address public immutable quoteFeed;

    uint8 public immutable baseDecimals;
    uint8 public immutable quoteDecimals;

    uint8 public immutable decimals;

    constructor(address _baseFeed, address _quoteFeed, uint8 _decimals) {
        baseFeed = _baseFeed;
        quoteFeed = _quoteFeed;
        baseDecimals = IAggregatorV3(baseFeed).decimals();
        quoteDecimals = IAggregatorV3(quoteFeed).decimals();
        decimals = _decimals;
    }

    function getPrice() public view virtual returns (uint256) {
        return _convertDecimals(_getPrice(), baseDecimals + 18 - quoteDecimals, decimals);
    }

    function _getPrice() internal view virtual returns (uint256) {
        return uint256(IAggregatorV3(baseFeed).latestAnswer()) * 1e18 / uint256(IAggregatorV3(quoteFeed).latestAnswer());
    }

    function _convertDecimals(
        uint256 _rate,
        uint8 _inputDecimals,
        uint8 _outputDecimals
    )
        internal
        view
        virtual
        returns (uint256)
    {
        if (_inputDecimals > _outputDecimals) {
            return _rate / 10 ** (_inputDecimals - _outputDecimals);
        } else if (_inputDecimals < _outputDecimals) {
            return _rate * 10 ** (_outputDecimals - _inputDecimals);
        } else {
            return _rate;
        }
    }
}
