// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

interface IOracle {
    function twap(address _token, uint256 _amountIn) external view returns (uint144 amountOut);
}
