// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

interface IRebateOracle {
    function token0() external view returns (address);
    function token1() external view returns (address);
    function update() external;
    function consult(address _token, uint256 _amountIn) external view returns (uint144 amountOut);
}
