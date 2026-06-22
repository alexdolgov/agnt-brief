// SPDX-License-Identifier: MIT
pragma solidity >=0.8.13;

import {FullMath} from "./FullMath.sol";


/* Function imported from Rysk Finance:  https://github.com/rysk-finance/dynamic-hedging/blob/f53509267a5d42006baa26a1f495b5c9819452af/packages/contracts/contracts/vendor/uniswap/RangeOrderUtils.sol
*/
uint256 constant Q96 = 0x1000000000000000000000000;

/**
 * @param sqrtPriceX96 the sqrt price of token0/token1
 * @param token0Decimals the decimals of token0
 * @return the price as token0/token1 in token1 decimals
 */
function sqrtPriceX96ToUint(uint160 sqrtPriceX96, uint8 token0Decimals)
    pure
    returns (uint256)
{
    uint256 sqrtPrice = uint256(sqrtPriceX96);
    if (sqrtPrice > Q96) {
        uint256 sqrtP = FullMath.mulDiv(sqrtPrice, 10 ** token0Decimals, Q96);
        return FullMath.mulDiv(sqrtP, sqrtP, 10 ** token0Decimals);
    } else {
        uint256 numerator1 = FullMath.mulDiv(sqrtPrice, sqrtPrice, 1);
        uint256 numerator2 = 10 ** token0Decimals;
        return FullMath.mulDiv(numerator1, numerator2, 1 << 192);
    }
}
