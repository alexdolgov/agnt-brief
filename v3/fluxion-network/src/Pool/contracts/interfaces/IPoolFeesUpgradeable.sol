// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

interface IPoolFeesUpgradeable {
    error NotPool();

    function initialize(address _pool, address _token0, address _token1, address _owner) external;
    function claimFeesFor(address _recipient, uint256 _amount0, uint256 _amount1) external;
    function pool() external view returns (address);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function owner() external view returns (address);
    function version() external pure returns (string memory);
}
