// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.7.4;

import "./uniswap/IUniswapRouter.sol";


/**
 * @title IRouter interface
 * @dev Defines all public and external methods of Router contract
 * @author WOWSwap
 **/
interface IRouter is IUniswapRouter {
    function leverageFactory() external returns(address);
}