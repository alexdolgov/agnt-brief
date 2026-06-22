// SPDX-License-Identifier: ISC
pragma solidity ^0.8.21;

import { AggregatorV3Interface } from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import { ICurvePool } from "../interfaces/Curve/ICurvePool.sol";
import { IYearnVault } from "../interfaces/Yearn/IYearnVault.sol";

/// @title GhoYvGhoFxUSDOracle
/// @author Jason (Sturdy) https://github.com/iris112
/// @notice  An oracle for GHO/YvGHOFxUSD

contract GhoYvGhoFxUSDOracle {
    address private constant GHO_USD_CHAINLINK = 0x3f12643D3f6f874d39C2a4c9f2Cd6f2DbAC877FC;
    uint8 public constant DECIMALS = 18;

    address public immutable CURVE_GHO_FXUSD_POOL;
    address public immutable YEARN_GHO_FXUSD_VAULT;
    uint256 public immutable MAX_ORACLE_DELAY;
    uint256 public immutable PRICE_MIN;

    string public name;

    error CHAINLINK_BAD_PRICE();
    error REDSTONE_BAD_PRICE();

    constructor(
        uint256 _maxOracleDelay,
        uint256 _priceMin,
        address _curvePoolAddress,
        address _yearnVaultAddress,
        string memory _name
    ) {
        CURVE_GHO_FXUSD_POOL = _curvePoolAddress;
        YEARN_GHO_FXUSD_VAULT = _yearnVaultAddress;
        name = _name;
        MAX_ORACLE_DELAY = _maxOracleDelay;
        PRICE_MIN = _priceMin;
    }

    /// @notice The ```getPrices``` function is intended to return price of ERC4626 token based on the base asset
    /// @return _isBadData is always false, just sync to other oracle interfaces
    /// @return _priceLow is the lower of the prices
    /// @return _priceHigh is the higher of the prices
    function getPrices() external view returns (bool _isBadData, uint256 _priceLow, uint256 _priceHigh) {
        // Get GHO price from chainlink
        (, int256 _answer, , uint256 _updatedAt, ) = AggregatorV3Interface(GHO_USD_CHAINLINK)
            .latestRoundData();     // GHO/USD
        // If data is stale or negative, set bad data to true and return
        if (_answer <= 0 || (block.timestamp - _updatedAt > MAX_ORACLE_DELAY)) {
            revert CHAINLINK_BAD_PRICE();
        }
        uint256 ghoPriceInUSD = uint256(_answer);

        // FxUSD price is 1$
        uint256 fxusdPriceInUSD = 1e8;  // usd chainlink decimals 8

        uint256 minStable = Math.min(ghoPriceInUSD, fxusdPriceInUSD);
        uint256 curveLPTokenPriceInUSD = (ICurvePool(CURVE_GHO_FXUSD_POOL).get_virtual_price() * minStable) / 1e18;
        uint256 yvLPTokenPriceInUSD = curveLPTokenPriceInUSD * IYearnVault(YEARN_GHO_FXUSD_VAULT).pricePerShare() / 1e18;
        uint256 rate = ghoPriceInUSD * 1e18 / yvLPTokenPriceInUSD;  // GHO/yvGHOFxUSD

        _priceHigh = rate > PRICE_MIN ? rate : PRICE_MIN;
        _priceLow = _priceHigh;
    }
}
