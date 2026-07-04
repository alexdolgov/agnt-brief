// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20} from '@openzeppelin/contracts/interfaces/IERC20.sol';
interface ILaunchpadToken is IERC20{
    function openTrade() external;
    function factory() external view returns (address);
    function uniswapPairAddress() external view returns (address);

}