// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IPancakeRouter02 {
    function getAmountsOut(
        uint amountIn,
        address[] calldata path
    ) external view returns (uint[] memory amounts);

    function WETH() external view returns (address);
}
