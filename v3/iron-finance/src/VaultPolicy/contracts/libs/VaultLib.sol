// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../interfaces/IUniswapV2Router.sol";
import "../interfaces/IWETH.sol";

library VaultLib {
    uint256 private constant RATIO_PRECISION = 1000000; // 6 decimals
    address private constant weth = 0x0d500B1d8E8eF31E21C99d1Db9A6444d3ADf1270;

    function safeSwap(
        address _swapRouterAddress,
        uint256 _amountIn,
        uint256 _slippage,
        address[] memory _path,
        address _to,
        uint256 _deadline
    ) internal {
        IUniswapV2Router _swapRouter = IUniswapV2Router(_swapRouterAddress);
        require(_path.length > 0, "invalidSwapPath");
        uint256[] memory amounts = _swapRouter.getAmountsOut(_amountIn, _path);
        uint256 _minAmountOut = (amounts[amounts.length - 1] * (RATIO_PRECISION - _slippage)) / RATIO_PRECISION;

        _swapRouter.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            _amountIn,
            _minAmountOut,
            _path,
            _to,
            _deadline
        );
    }

    function unwrapETH() internal {
        // WETH -> ETH
        uint256 wethBalance = IERC20(weth).balanceOf(address(this));
        if (wethBalance > 0) {
            IWETH(weth).withdraw(wethBalance);
        }
    }

    function wrapETH() internal {
        // ETH -> WETH
        uint256 ethBalance = address(this).balance;
        if (ethBalance > 0) {
            IWETH(weth).deposit{value: ethBalance}();
        }
    }

    function isWETH(address _token) internal pure returns (bool) {
        return _token == weth;
    }
}
