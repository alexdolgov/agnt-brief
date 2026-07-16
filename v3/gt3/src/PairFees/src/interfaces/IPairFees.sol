// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

interface IPairFees {
    error OnlyPair();

    function pair() external view returns (address);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function initialize(address owner, address token0, address token1) external;
    function claimFeesFor(address recipient, uint256 amount0, uint256 amount1) external;
}
