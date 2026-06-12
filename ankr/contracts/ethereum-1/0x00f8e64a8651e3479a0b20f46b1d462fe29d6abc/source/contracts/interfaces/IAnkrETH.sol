// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

/** 
 *  ankrETH interface.
 */
interface IAnkrETH {
    
    function sharesToBonds(uint256 amount) external view returns (uint256);
}