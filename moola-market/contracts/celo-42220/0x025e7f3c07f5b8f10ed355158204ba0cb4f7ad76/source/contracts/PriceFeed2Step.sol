// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import '@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol';
import './ISlidingWindowOracle.sol';
import './IERC20.sol';


contract PriceFeed2Step {
    address public immutable tokenIn;
    address public immutable tokenMiddle1;
    address public immutable tokenMiddle2;
    address public immutable tokenOut;
    uint public immutable oneToken;
    ISlidingWindowOracle public immutable slidingWindowOracle;

    constructor(address _tokenIn, address _tokenMiddle1, address _tokenMiddle2, address _tokenOut, ISlidingWindowOracle _slidingWindowOracle) {
        tokenIn = _tokenIn;
        tokenMiddle1 = _tokenMiddle1;
        tokenMiddle2 = _tokenMiddle2;
        tokenOut = _tokenOut;
        slidingWindowOracle = _slidingWindowOracle;
        oneToken = uint(10)**(IERC20(tokenIn).decimals());
    }

    function consult() external view returns (uint) {
        uint priceMiddle = slidingWindowOracle.consult(tokenIn, oneToken, tokenMiddle1);
        return slidingWindowOracle.consult(tokenMiddle2, priceMiddle, tokenOut);
    }
}
