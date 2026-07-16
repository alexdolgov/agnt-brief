// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC20} from "../../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";

interface IWsteth is IERC20 {
    function getWstETHByStETH(
        uint256 _stETHAmount
    ) external view returns (uint256);

    function getStETHByWstETH(
        uint256 _wstETHAmount
    ) external view returns (uint256);

    function wrap(uint256 _stETHAmount) external returns (uint256);
    function unwrap(uint256 _wstETHAmount) external returns (uint256);
}
