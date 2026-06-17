// SPDX-License-Identifier: Unlicense

pragma solidity 0.7.6;

interface ITestOracle {
    function spotPrice(address _pool, address _token0, address _token1) external view returns (uint256 price);

    function twapPrice(address _pool, address _token0, address _token1) external view returns (uint256 price);
}
