// SPDX-License-Identifier: AGPL-v3.0
pragma solidity ^0.8.21;


/// @dev See DapiProxy.sol for comments about usage
interface IProxy {
    function read() external view returns (int224 value, uint32 timestamp);

    function api3ServerV1() external view returns (address);
}

/// @title API3BasedAssetOracle
/// @author Jason (Sturdy) https://github.com/iris112
/// @notice  An oracle for assets based on API3
contract API3BasedETHEZETHOracle {
    address private constant EZETH_PRICE_SOURCE = 0x3621b06BfFE478eB481adf65bbF139A052Ed7321;

    uint8 public constant DECIMALS = 18;
    
    uint256 public immutable MAX_ORACLE_DELAY;
    uint256 public immutable PRICE_MIN;

    string public name;

    error BAD_PRICE();

    constructor(
        uint256 _maxOracleDelay,
        uint256 _priceMin,
        string memory _name
    ) {
        name = _name;
        MAX_ORACLE_DELAY = _maxOracleDelay;
        PRICE_MIN = _priceMin;
    }

    /// @notice The ```getPrices``` function is intended to return price of ERC4626 token based on the base asset
    /// @return _isBadData is always false, just sync to other oracle interfaces
    /// @return _priceLow is the lower of the prices
    /// @return _priceHigh is the higher of the prices
    function getPrices() external view returns (bool _isBadData, uint256 _priceLow, uint256 _priceHigh) {
        uint256 rate = _getPriceOfAsset(EZETH_PRICE_SOURCE);        // collateralAsset/borrowAsset
        rate = 1e36 / rate;          // borrowAsset/collateralAsset

        _priceHigh = rate > PRICE_MIN ? rate : PRICE_MIN;
        _priceLow = _priceHigh;
    }

    function _getPriceOfAsset(address _proxy) internal view returns (uint256) {
        (int224 value, uint32 timestamp) = IProxy(_proxy).read();
        // If data is stale, revert
        if (block.timestamp - timestamp > MAX_ORACLE_DELAY) {
            revert BAD_PRICE();
        }

        return uint256(uint224(value));
    }
}