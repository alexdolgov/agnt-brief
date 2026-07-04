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

import "../interface/IAavePool.sol";
import "../interface/IAaveAToken.sol";
import "../LycheeAdapter.sol";

contract AaveAdapter is LycheeAdapter {
    address public immutable aToken;
    address public immutable pool;
    address public immutable underlying;

    constructor(string memory _name, address _aToken, uint256 _swapGasEstimate) LycheeAdapter(_name, _swapGasEstimate) {
        aToken = _aToken;
        address aavePool = IAaveAToken(_aToken).POOL();
        pool = aavePool;
        address underlyingToken = IAaveAToken(_aToken).UNDERLYING_ASSET_ADDRESS();
        underlying = underlyingToken;
        IERC20(underlyingToken).approve(aavePool, type(uint).max);
    }

    function _query(
        uint256 _amountIn,
        address _tokenIn,
        address _tokenOut
    ) internal view override returns (uint256 amountOut) {
        if (_tokenIn == underlying && _tokenOut == aToken) {
            amountOut = _amountIn;
        }
    }

    function _swap(uint256 _amountIn, uint256, address, address _tokenOut, address _to) internal override {
        IAavePool(pool).supply(underlying, _amountIn, address(this), 0);
        _returnTo(_tokenOut, _amountIn, _to);
    }
}
