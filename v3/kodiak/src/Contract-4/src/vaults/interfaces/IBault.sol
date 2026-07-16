// SPDX-License-Identifier: GPL-3.0
pragma solidity =0.8.19;

interface IBault {
    function deposit(uint256 assets, address to) external returns (uint256 shares);
    function redeem(uint256 shares, address to, address owner) external returns (uint256 assets);
    function stakingToken() external view returns (address);
}
