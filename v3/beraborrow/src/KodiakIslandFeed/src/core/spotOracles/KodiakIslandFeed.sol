// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {BeraborrowMath} from "../../dependencies/BeraborrowMath.sol";
import {IAsset} from "../../interfaces/utils/tokens/IAsset.sol";
import {IPriceFeed} from "../../interfaces/core/IPriceFeed.sol";
import {IKodiakIsland} from "../../interfaces/utils/tokens/IKodiakIsland.sol";

contract KodiakIslandFeed {
    using SafeCast for uint;

    uint constant WAD = 1e18;

    IPriceFeed immutable priceFeed;
    IKodiakIsland immutable island;
    address immutable token0Oracle;
    address immutable token1Oracle;
    address immutable token0;
    address immutable token1;
    uint8 immutable decimals0;
    uint8 immutable decimals1;

    constructor(address _island, address _priceFeed) {
        island = IKodiakIsland(_island);
        priceFeed = IPriceFeed(_priceFeed);
        token0 = IKodiakIsland(_island).token0();
        token1 = IKodiakIsland(_island).token1();
        decimals0 = IAsset(token0).decimals();
        decimals1 = IAsset(token1).decimals();

        if (
            _island == address(0) ||
            _priceFeed == address(0) ||
            token0 == address(0) ||
            token1 == address(0) ||
            decimals0 == 0 ||
            decimals1 == 0
        ) {
            revert("KodiakIslandFeed: 0 address");
        }
    }

    function fetchPrice() external view returns (uint) {
        uint priceFeed_token0 = priceFeed.fetchPrice(token0);
        uint priceFeed_token1 = priceFeed.fetchPrice(token1);

        uint decimalMultiplier;
        uint decimalDivider;
        uint decimalDifference = BeraborrowMath._getAbsoluteDifference(decimals0, decimals1);
        if (decimals0 >= decimals1) {
            decimalMultiplier = 1;
            decimalDivider = 10 ** decimalDifference;
        } else {
            decimalMultiplier = 10 ** decimalDifference;
            decimalDivider = 1;
        }

        uint priceRatio = (priceFeed_token0 * decimalMultiplier * 1e18) / (priceFeed_token1 * decimalDivider);

        uint160 price_sqrtRatioX96 = SafeCast.toUint160((Math.sqrt(priceRatio) * (2 ** 96)) / 1e9);

        // Note: getUnderlyingBalancesAtPrice gets the reserves at a specified price based on UniV3 curve math + accumulated fees + token balances in contract
        // The token reserve math is as described here: https://docs.parallel.fi/parallel-finance/staking-and-derivative-token-yield-management/borrow-against-uniswap-v3-lp-tokens/uniswap-v3-lp-token-analyzer
        // As we use oracle price (rather than current bock pool balances) to get the reserves, this calculation isn't subject to flash loan exploit
        (uint reserve0, uint reserve1) = IKodiakIsland(island).getUnderlyingBalancesAtPrice(price_sqrtRatioX96);

        uint normalizedReserve0 = reserve0 * (10 ** (18 - decimals0));
        uint normalizedReserve1 = reserve1 * (10 ** (18 - decimals1));

        uint totalSupply = IKodiakIsland(island).totalSupply();

        if (totalSupply == 0) return 0;

        uint totalValue = normalizedReserve0 * priceFeed_token0 + normalizedReserve1 * priceFeed_token1;

        return totalValue / totalSupply;
    }
}
