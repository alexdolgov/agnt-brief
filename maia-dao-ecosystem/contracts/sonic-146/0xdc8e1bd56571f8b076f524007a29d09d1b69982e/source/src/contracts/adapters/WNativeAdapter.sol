//  __      ____    ____  ______  __    __   _______  _______ 
// |  |     \   \  /   / /      ||  |  |  | |   ____||   ____|
// |  |      \   \/   / |  ,----'|  |__|  | |  |__   |  |__   
// |  |       \_    _/  |  |     |   __   | |   __|  |   __|  
// |  `----.    |  |    |  `----.|  |  |  | |  |____ |  |____ 
// |_______|    |__|     \______||__|  |__| |_______||_______|
//
//

// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

import "../LycheeAdapter.sol";

contract WNativeAdapter is LycheeAdapter {
    address internal immutable WNATIVE;

    constructor(
        address _wNative,
        uint256 _swapGasEstimate
    ) LycheeAdapter("WAvaxAdapter", _swapGasEstimate) {
        WNATIVE = _wNative;
        setSwapGasEstimate(_swapGasEstimate);
    }

    function _query(
        uint256 _amountIn,
        address _tokenIn,
        address _tokenOut
    ) internal view override returns (uint256 amountOut) {
        if (_tokenIn == WNATIVE && _tokenOut == WNATIVE)
            amountOut = _amountIn;
    }

    function _swap(
        uint256 _amountIn,
        uint256,
        address,
        address _tokenOut,
        address _to
    ) internal override {
        _returnTo(_tokenOut, _amountIn, _to);
    }
}
