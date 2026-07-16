// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;

interface IFeeProvider {
    /// @dev Returns swap fee for the pool
    function getSwapFee(
        address master,
        address pool,
        address sender,
        address tokenIn,
        address tokenOut,
        bytes memory data
    ) external view returns (uint24);
}