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

import "../interface/IYYDerivative.sol";
import "../lib/SafeERC20.sol";

import "../LycheeAdapter.sol";

contract YYDerivativeAdapter is LycheeAdapter {
    using SafeERC20 for IERC20;

    address public immutable derivative;
    address public immutable underlying;

    constructor(
        string memory _name,
        uint256 _swapGasEstimate,
        address _derivative,
        address _underlying
    ) LycheeAdapter(_name, _swapGasEstimate) {
        derivative = _derivative;
        underlying = _underlying;
    }

    function _query(
        uint256 _amountIn,
        address _tokenIn,
        address _tokenOut
    ) internal view override returns (uint256 amountOut) {
        if (_tokenIn == underlying && _tokenOut == derivative && IYYDerivative(derivative).depositsEnabled()) {
            return _amountIn;
        }
        return 0;
    }

    function _swap(
        uint256 _amountIn,
        uint256, /*_amountOut*/
        address _tokenIn,
        address _tokenOut,
        address _to
    ) internal override {
        if (_tokenIn == underlying && _tokenOut == derivative) {
            IERC20(underlying).approve(derivative, _amountIn);
            IYYDerivative(derivative).deposit(_amountIn);
        } else {
            revert("YYDerivativeAdapter: Unsupported token");
        }
        // Confidently transfer amount-out
        _returnTo(_tokenOut, _amountIn, _to);
    }
}
