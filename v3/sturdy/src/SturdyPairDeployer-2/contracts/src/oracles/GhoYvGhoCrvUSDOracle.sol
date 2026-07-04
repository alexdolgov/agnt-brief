// SPDX-License-Identifier: ISC
pragma solidity ^0.8.21;

import { AggregatorV3Interface } from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import { ICurvePool } from "../interfaces/Curve/ICurvePool.sol";
import { IYearnVault } from "../interfaces/Yearn/IYearnVault.sol";

/// @title GhoYvGhoCrvUSDOracle
/// @author Jason (Sturdy) https://github.com/iris112
/// @notice  An oracle for GHO/YvGHOCrvUSD
interface ILLAMMA {
    function price_oracle() external view returns (uint256);
}

contract GhoYvGhoCrvUSDOracle {
    address private constant ETH_CRVUSD_AMM_CONTROLLER = 0x1681195C176239ac5E72d9aeBaCf5b2492E0C4ee;
    address private constant ETH_USD_CHAINLINK = 0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419;
    address private constant CRVUSD_USD_CHAINLINK = 0xEEf0C605546958c1f899b6fB336C20671f9cD49F;
    address private constant GHO_USD_CHAINLINK = 0x3f12643D3f6f874d39C2a4c9f2Cd6f2DbAC877FC;
    uint8 public constant DECIMALS = 18;

    address public immutable CURVE_GHO_CRVUSD_POOL;
    address public immutable YEARN_GHO_CRVUSD_VAULT;
    uint256 public immutable MAX_ORACLE_DELAY;
    uint256 public immutable PRICE_MIN;

    string public name;

    error CHAINLINK_BAD_PRICE();

    constructor(
        uint256 _maxOracleDelay,
        uint256 _priceMin,
        address _curvePoolAddress,
        address _yearnVaultAddress,
        string memory _name
    ) {
        CURVE_GHO_CRVUSD_POOL = _curvePoolAddress;
        YEARN_GHO_CRVUSD_VAULT = _yearnVaultAddress;
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
        uint256 crvUSDPriceInUSD = _getCrvUSDPrice();

        uint256 minStable = Math.min(ghoPriceInUSD, crvUSDPriceInUSD);
        uint256 curveLPTokenPrice = (ICurvePool(CURVE_GHO_CRVUSD_POOL).get_virtual_price() * minStable) / 1e18;
        uint256 yvLPTokenPriceInUSD = curveLPTokenPrice * IYearnVault(YEARN_GHO_CRVUSD_VAULT).pricePerShare() / 1e18;
        uint256 rate = ghoPriceInUSD * 1e18 / yvLPTokenPriceInUSD;    // GHO/yvGHOCrvUSD

        _priceHigh = rate > PRICE_MIN ? rate : PRICE_MIN;
        _priceLow = _priceHigh;
    }

    /**
     * @dev Get price for crvUSD
     */
    function _getCrvUSDPrice() internal view returns (uint256) {
        // Get crvUSD price from AMM controller
        uint256 crvUSDPrice;
        uint256 rate = ILLAMMA(ETH_CRVUSD_AMM_CONTROLLER).price_oracle();  // ETH/crvUSD
        rate = 1e36 / rate; // crvUSD/ETH

        // Get ETH price from chainlink
        (, int256 _answer, , uint256 _updatedAt, ) = AggregatorV3Interface(ETH_USD_CHAINLINK)
            .latestRoundData();     // ETH/USD
        // If data is stale or negative, set bad data to true and return
        if (_answer <= 0 || (block.timestamp - _updatedAt > MAX_ORACLE_DELAY)) {
            revert CHAINLINK_BAD_PRICE();
        }
        rate = rate * uint256(_answer) / 1e18;  // crvUSD/USD

        // Get crvUSD price from chainlink
        (, _answer, , _updatedAt, ) = AggregatorV3Interface(CRVUSD_USD_CHAINLINK)
            .latestRoundData();     // crvUSD/USD
        // If data is stale or negative, set bad data to true and return
        if (_answer <= 0 || (block.timestamp - _updatedAt > MAX_ORACLE_DELAY)) {
            revert CHAINLINK_BAD_PRICE();
        }
        crvUSDPrice = uint256(_answer);

        return Math.min(rate, crvUSDPrice);
    }
}
