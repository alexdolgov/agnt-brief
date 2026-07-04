// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @notice The surface the CL zapper reads/drives on a TopazCLVault.
interface ITopazCLVault {
    function deposit(uint256 amount0, uint256 amount1, uint256 minShares) external; // mints shares to msg.sender

    function withdraw(uint256 shares, uint256 minAmount0, uint256 minAmount1) external;

    function balances() external view returns (uint256 amount0, uint256 amount1);

    function isCalm() external view returns (bool);

    function strategy() external view returns (address);

    function token0() external view returns (address);

    function token1() external view returns (address);
}
