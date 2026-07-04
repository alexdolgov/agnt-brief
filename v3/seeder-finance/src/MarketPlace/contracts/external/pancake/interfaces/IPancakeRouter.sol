// SPDX-License-Identifier: GPL-3.0
// Import from @pancakeswap-libs/pancake-swap-core
pragma solidity 0.8.4;

interface IPancakeRouter {
    function factory() external view returns (address);
    function WETH() external view returns (address);

    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);

}
