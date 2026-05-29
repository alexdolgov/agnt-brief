// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;
pragma abicoder v2;

interface IVeloRouter {
    function execute(bytes calldata commands, bytes[] calldata inputs) external;

    /*
    function v3SwapExactInput(
        address recipient,
        uint256 amountIn,
        uint256 amountOutMinimum,
        bytes calldata path,
        address payer
    ) external;
    */
}
