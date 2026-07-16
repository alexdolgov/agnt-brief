// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

library ChainlinkLib {

    function consult(address _priceFeedAddress, uint _amountIn) internal view returns (uint256) {
        assert(_priceFeedAddress != address(0));
        AggregatorV3Interface _priceFeed = AggregatorV3Interface(_priceFeedAddress);
        (, int256 _price, , , ) = _priceFeed.latestRoundData();
        uint8 _decimals = _priceFeed.decimals();
        return (uint256(_price) * _amountIn) / (10**_decimals);
    }
}
