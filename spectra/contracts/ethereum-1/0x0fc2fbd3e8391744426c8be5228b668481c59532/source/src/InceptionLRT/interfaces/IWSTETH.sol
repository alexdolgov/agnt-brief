// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

interface IWSTETH {
    function stETH() external view returns (address);

    function getWstETHByStETH(uint256 stETHAmount) external view returns (uint256);

    function getStETHByWstETH(uint256 wstETHAmount) external view returns (uint256);

    function wrap(uint256 stETHAmount) external returns (uint256);

    function unwrap(uint256 wstETHAmount) external returns (uint256);
}
