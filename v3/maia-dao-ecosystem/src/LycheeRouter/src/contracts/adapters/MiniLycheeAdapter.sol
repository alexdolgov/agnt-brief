//  __      ____    ____  ______  __    __   _______  _______ 
// |  |     \   \  /   / /      ||  |  |  | |   ____||   ____|
// |  |      \   \/   / |  ,----'|  |__|  | |  |__   |  |__   
// |  |       \_    _/  |  |     |   __   | |   __|  |   __|  
// |  `----.    |  |    |  `----.|  |  |  | |  |____ |  |____ 
// |_______|    |__|     \______||__|  |__| |_______||_______|
//

// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

import "../interface/ImLYCHEE.sol";
import "../lib/SafeERC20.sol";
import "../LycheeAdapter.sol";

contract MiniLycheeAdapter is LycheeAdapter {
    using SafeERC20 for IERC20;

    address public constant LYCHEE = 0x59414b3089ce2AF0010e7523Dea7E2b35d776ec7;
    address public constant mLYCHEE = 0xdDAaAD7366B455AfF8E7c82940C43CEB5829B604;

    constructor(uint256 _swapGasEstimate) LycheeAdapter("MiniLycheeAdapter", _swapGasEstimate) {
        setAllowances();
    }

    function setAllowances() internal {
        IERC20(mLYCHEE).safeApprove(mLYCHEE, UINT_MAX);
        IERC20(LYCHEE).safeApprove(mLYCHEE, UINT_MAX);
    }

    function _query(
        uint256 _amountIn,
        address _tokenIn,
        address _tokenOut
    ) internal pure override returns (uint256 amountOut) {
        if ((_tokenIn == mLYCHEE && _tokenOut == LYCHEE) || (_tokenIn == LYCHEE && _tokenOut == mLYCHEE)) {
            amountOut = _amountIn;
        }
    }

    function _swap(
        uint256 _amountIn,
        uint256,
        address _tokenIn,
        address _tokenOut,
        address _to
    ) internal override {
        if (_tokenIn == mLYCHEE && _tokenOut == LYCHEE) {
            ImLYCHEE(mLYCHEE).unmoon(_amountIn, _to);
        } else if (_tokenIn == LYCHEE && _tokenOut == mLYCHEE) {
            ImLYCHEE(mLYCHEE).moon(_amountIn, _to);
        } else {
            revert("Unsupported token");
        }
    }
}
