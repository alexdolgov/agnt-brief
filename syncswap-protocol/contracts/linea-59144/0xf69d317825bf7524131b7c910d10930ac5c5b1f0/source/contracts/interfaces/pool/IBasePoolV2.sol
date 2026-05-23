// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

import "./IBasePool.sol";

interface IBasePoolV2 is IBasePool {
    function poolVersion() external view returns (uint);
    function sync() external;

    event MintProtocolFee(
        address indexed feeRecipient,
        uint24 protocolFee,
        uint liquidity,
        uint totalSupply
    );

    event Swapped(
        address indexed sender,
        address indexed user,
        address indexed tokenOut,
        uint amountIn,
        uint amountOut,
        uint24 swapFee,
        address to
    );

    event Fee(
        uint amount0,
        uint amount1
    );
}