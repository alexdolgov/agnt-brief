// SPDX-License-Identifier: ISC
pragma solidity ^0.8.21;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

/// @title ETHBasedOracle
/// @author Jason (Sturdy) https://github.com/iris112
/// @notice  An oracle for ETH/asset (has RedStone/chainlink price with same decimals)

contract ETHBasedOracle {
    uint8 public constant DECIMALS = 18;
    
    address public immutable ASSET_ETH_PRICE;
    uint256 public immutable MAX_ORACLE_DELAY;
    uint256 public immutable PRICE_MIN;

    string public name;

    error BAD_PRICE();

    constructor(
        address _address,
        uint256 _maxOracleDelay,
        uint256 _priceMin,
        string memory _name
    ) {
        name = _name;
        ASSET_ETH_PRICE = _address;
        MAX_ORACLE_DELAY = _maxOracleDelay;
        PRICE_MIN = _priceMin;
    }

    /// @notice The ```getPrices``` function is intended to return price of ERC4626 token based on the base asset
    /// @return _isBadData is always false, just sync to other oracle interfaces
    /// @return _priceLow is the lower of the prices
    /// @return _priceHigh is the higher of the prices
    function getPrices() external view returns (bool _isBadData, uint256 _priceLow, uint256 _priceHigh) {
        (, int256 _answer, , uint256 _updatedAt, ) = AggregatorV3Interface(ASSET_ETH_PRICE).latestRoundData();
        // If data is stale or negative, set bad data to true and return
        if (_answer <= 0 || (block.timestamp - _updatedAt > MAX_ORACLE_DELAY)) {
            revert BAD_PRICE();
        }

        uint8 decimals = AggregatorV3Interface(ASSET_ETH_PRICE).decimals();
        uint256 rate = 1e18 * 10 ** decimals / uint256(_answer);       // ETH/ASSET

        _priceHigh = rate > PRICE_MIN ? rate : PRICE_MIN;
        _priceLow = _priceHigh;
    }
}
