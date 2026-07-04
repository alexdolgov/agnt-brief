// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IUniswapV2Router02Api {
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;

    function getAmountsOut(
        uint amountIn,
        address[] calldata path
    ) external view returns (uint[] memory amounts);
}

library UniHelper {

    function safeSwap(
        address _uniRouterAddress,
        uint256 _amountIn,
        uint256 _slippageFactor,
        address[] memory _path,
        address _to,
        uint256 _deadline
    ) internal {
        uint256[] memory amounts =
            IUniswapV2Router02Api(_uniRouterAddress).getAmountsOut(_amountIn, _path);
        uint256 amountOut = amounts[amounts.length - 1];

        IUniswapV2Router02Api(_uniRouterAddress)
            .swapExactTokensForTokensSupportingFeeOnTransferTokens(
            _amountIn,
            amountOut * _slippageFactor / 1000,
            _path,
            _to,
            _deadline
        );
    }

    function safeSwap(
        address _uniRouterAddress,
        uint256 _amountIn,
        address[] memory _path,
        address _to
    ) internal {
        safeSwap(
            _uniRouterAddress,
            _amountIn,
            995, /* 5% slippage */
            _path,
            _to,
            block.timestamp + 600
        );
    }
}