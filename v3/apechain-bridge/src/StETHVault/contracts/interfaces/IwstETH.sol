// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.22;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";

interface IwstEth is IERC20 {
    function getStETHByWstETH(uint256 _wstETHAmount) external view returns (uint256);
    function getWstETHByStETH(uint256 _stETHAmount) external view returns (uint256);
    function wrap(uint256 _stETHAmount) external returns (uint256);
    function unwrap(uint256 _wstETHAmount) external returns (uint256);
    function tokensPerStEth() external view returns (uint256);
    function stEthPerToken() external view returns (uint256);
}

interface IStETHVault {
    function wstEth() external view returns (IwstEth);
}
