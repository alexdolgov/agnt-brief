// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "../interface/IUniswapV2Factory.sol";
import "../interface/IUniswapV2Pair.sol";
contract SafeUniswapCall {

    function checkIsPair(address pair) public view returns (bool isPair) {
        bool hasToken0Function = tryCall(pair, IUniswapV2Pair.token0.selector);
        if(!hasToken0Function) return false;
        bool hasToken1Function = tryCall(pair, IUniswapV2Pair.token1.selector);
        if(!hasToken1Function) return false;
        bool hasFeesFunction = tryCall(pair, IUniswapV2Pair.fees.selector);
        if(!hasFeesFunction) return false;
        bool hasIsStableFunction = tryCall(pair, IUniswapV2Pair.isStable.selector);
        if(!hasIsStableFunction) return false;
        return true;
    }

    function tryCall(address pair, bytes4 selector) public view returns (bool succeed) {
        (succeed,) = pair.staticcall(
            abi.encodeWithSelector(selector)
        );
    }

}