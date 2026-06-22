// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.7.4;

/**
 * @title I interface
 * @dev Defines all public and external methods and data of  contract
 * @author WOWSwap
 **/
interface IPool {
    function openPosition(
        address to,
        uint256 amountOut
    ) external returns(bool);
    function closePosition(
        address to,
        uint256 amountOut
    ) external returns(bool);
}