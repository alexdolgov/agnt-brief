// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
interface IBasketHandler {
    // Get list of underlying tokens and compositions for each token (return 2 arrays)
    // Summation LOOP: 
    // Get "price" of each underlying token...multiply by amount per unit of Eth+ 
    // Exit Loop: Divide by total supply

    enum RoundingMode {
        FLOOR, // Round towards zero
        ROUND, // Round to the nearest int
        CEIL // Round away from zero
    }

    function quote(uint192,RoundingMode) external view returns (address[] memory, uint256[] memory);

}

interface IAssetRegistry {
    function toColl(address) external view returns (address);
}

interface ICollateral {
    function refPerTok() external view returns (uint192);
}

interface IEthPlus {
    function basketsNeeded() external view returns (uint192);
    function totalSupply() external view returns (uint256);
}


contract TermEthPlusPriceFeed is AggregatorV3Interface {
    AggregatorV3Interface immutable ethPriceFeed;
    IBasketHandler immutable basketHandler;
    IAssetRegistry immutable assetRegistry;
    IEthPlus immutable ethPlus;
    constructor(AggregatorV3Interface ethPriceFeed_, IBasketHandler basketHandler_, IAssetRegistry assetRegistry_, IEthPlus ethPlus_) {
        require(address(ethPriceFeed_) != address(0), "ethPriceFeed_ cannot be 0");
        ethPriceFeed = ethPriceFeed_;
        require(address(basketHandler_) != address(0), "basketHandler_ cannot be 0");
        basketHandler = basketHandler_;
        require(address(assetRegistry_) != address(0), "assetRegistry_ cannot be 0");
        assetRegistry = assetRegistry_;
        require(address(ethPlus_) != address(0), "ethPlus_ cannot be 0");
        ethPlus = ethPlus_;

    }
    function decimals() external view override returns (uint8) {
        return ethPriceFeed.decimals();
    }

    function description() external view override returns (string memory) {
        return "Term Finance price feed";
    }

    function version() external view override returns (uint256) {
        return 0;
    }

    function getRoundData(
        uint80 /* _roundId */
    )
        external
        pure
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        return (0, 0, 0, 0, 0);
    }

    function latestRoundData()
        external
        view
        override
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        ( , int256 ethPrice, , uint256 ethUpdatedAt, ) = ethPriceFeed.latestRoundData();
        // Get list of underlying tokens and compositions for each token (return 2 arrays)
        uint192 baskets = _scaleDownBasket(uint192(1e18));
        (address[] memory erc20s, uint256[] memory amounts) = basketHandler.quote(baskets, IBasketHandler.RoundingMode.FLOOR);
        // Summation LOOP: 

        uint256 ethPerUnit;
        uint8 dec;
        address collatAdapter;
        ICollateral collateral;
        uint256 refPerTok;
        for (uint256 i = 0; i < erc20s.length; ++i) {
            if (amounts[i] == 0) continue;

            //Get Collateral Adapter
            collatAdapter = assetRegistry.toColl(erc20s[i]);
            collateral = ICollateral(collatAdapter);


            // Get RefPerTok
            ERC20 underlyingToken = ERC20(erc20s[i]);
            dec = underlyingToken.decimals();
            refPerTok = shiftl_toUint(collateral.refPerTok(), int8(dec));
            ethPerUnit += refPerTok * amounts[i] / 1e18 ;
        }


        // Get "price" of each underlying token...multiply by amount per unit of Eth+ 

        // Exit Loop: Divide by total supply of basket to get cumsum

        // Returns the total value of 1 unit of Eth+ in Eth terms

        // Multiply unit price of Eth + in Eth by Eth price from Eth oracle

        int256 ethPlusPrice = int256(ethPerUnit) * ethPrice / 1e18;
        return (0, ethPlusPrice, 0, ethUpdatedAt, 0);

    }
    // Derived from RToken contract https://github.com/reserve-protocol/protocol/blob/master/contracts/p1/RToken.sol#L502
    function _scaleDownBasket(uint192 amtRToken) internal view returns (uint192 amtBaskets) {
        uint192 basketsNeeded = ethPlus.basketsNeeded();
        uint256 totalSupply = ethPlus.totalSupply();
        amtBaskets = _safeWrap(_mulDiv256(basketsNeeded, amtRToken, totalSupply)); 
    }

    // Dervied from https://github.com/reserve-protocol/protocol/blob/master/contracts/libraries/Fixed.sol#L380
    function shiftl_toUint(
        uint192 x,
        int8 decimals
    ) internal pure returns (uint256) {
        // Handle overflow cases
        if (x == 0) return 0; // always computable, no matter what decimals is

        decimals -= 18; // shift so that toUint happens at the same time.

        uint256 coeff = uint256(10**abs(decimals));
        return decimals >= 0 ? uint256(x * coeff) : uint256(_divrnd(x, coeff));
    }

    // Derived from https://github.com/reserve-protocol/protocol/blob/master/contracts/libraries/Fixed.sol#L380
    function abs(int256 x) internal pure returns (uint256) {
        return x < 0 ? uint256(-x) : uint256(x);
    }

    // Derived from https://github.com/reserve-protocol/protocol/blob/master/contracts/libraries/Fixed.sol#L380
    function _divrnd(
        uint256 numerator,
        uint256 divisor
    ) internal pure returns (uint256) {
        uint256 result = numerator / divisor;

        return result;
    }

    // Derived from https://github.com/reserve-protocol/protocol/blob/master/contracts/libraries/Fixed.sol#L619
    function _mulDiv256(
        uint256 x,
        uint256 y,
        uint256 z
    ) internal pure returns (uint256 result) {
        unchecked {
            (uint256 hi, uint256 lo) = _fullMul(x, y);
            if (hi >= z) revert();
            uint256 mm = mulmod(x, y, z);
            if (mm > lo) hi -= 1;
            lo -= mm;
            uint256 pow2 = z & (0 - z);
            z /= pow2;
            lo /= pow2;
            lo += hi * ((0 - pow2) / pow2 + 1);
            uint256 r = 1;
            r *= 2 - z * r;
            r *= 2 - z * r;
            r *= 2 - z * r;
            r *= 2 - z * r;
            r *= 2 - z * r;
            r *= 2 - z * r;
            r *= 2 - z * r;
            r *= 2 - z * r;
            result = lo * r;
        }
        return result;
    }

    // Derived from https://github.com/reserve-protocol/protocol/blob/master/contracts/libraries/Fixed.sol#L674
    function _fullMul(uint256 x, uint256 y) internal pure returns (uint256 hi, uint256 lo) {
        unchecked {
            uint256 mm = mulmod(x, y, uint256(0) - uint256(1));
            lo = x * y;
            hi = mm - lo;
            if (mm < lo) hi -= 1;
        }
    }

    /// Derived from https://github.com/reserve-protocol/protocol/blob/master/contracts/libraries/Fixed.sol#L674
    function _safeWrap(uint256 x) internal pure returns (uint192) {
        if (type(uint192).max < x) revert();
        return uint192(x);
    }
}