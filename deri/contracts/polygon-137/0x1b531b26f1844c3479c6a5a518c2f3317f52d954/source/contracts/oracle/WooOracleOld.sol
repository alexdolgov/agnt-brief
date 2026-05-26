// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import '../utils/Ownable.sol';

contract WooOracleOld is Ownable {

    address public immutable feed;
    uint256 public immutable baseDecimals;
    uint256 public immutable quoteDecimals;
    bool    public enabled;

    constructor (address feed_) {
        feed = feed_;
        baseDecimals = IERC20(IWooOracleOld(feed_)._BASE_TOKEN_()).decimals();
        quoteDecimals = IERC20(IWooOracleOld(feed_)._QUOTE_TOKEN_()).decimals();
        enabled = true;
        _controller = msg.sender;
    }

    function enable() external _controller_ {
        enabled = true;
    }

    function disable() external _controller_ {
        enabled = false;
    }

    function getPrice() external view returns (uint256) {
        require(enabled, 'WooOracleOld: oracle disabled');
        return IWooOracleOld(feed)._I_() * (10**baseDecimals) / (10**quoteDecimals);
    }

}

interface IWooOracleOld {
    function _BASE_TOKEN_() external view returns (address);
    function _QUOTE_TOKEN_() external view returns (address);
    function _I_() external view returns (uint256);
}

interface IERC20 {
    function decimals() external view returns (uint8);
}
