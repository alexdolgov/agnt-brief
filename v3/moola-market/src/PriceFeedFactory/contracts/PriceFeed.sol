// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import '@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol';
import './ISlidingWindowOracle.sol';
import './IERC20.sol';


contract PriceFeed {
    address public immutable tokenIn;
    address public immutable tokenOut;
    uint public immutable oneToken;
    ISlidingWindowOracle public immutable slidingWindowOracle;

    constructor(address _tokenIn, address _tokenOut, ISlidingWindowOracle _slidingWindowOracle) {
        tokenIn = _tokenIn;
        tokenOut = _tokenOut;
        slidingWindowOracle = _slidingWindowOracle;
        oneToken = uint(10)**(IERC20(tokenIn).decimals());
    }

    function consult() external view returns (uint) {
        return slidingWindowOracle.consult(tokenIn, oneToken, tokenOut);
    }
}
