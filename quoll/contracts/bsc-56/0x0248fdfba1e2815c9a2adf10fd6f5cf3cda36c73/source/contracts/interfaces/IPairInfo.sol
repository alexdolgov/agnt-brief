// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IPairInfo {

    function token0() external view returns(address);
    function reserve0() external view returns(address);
    function decimals0() external view returns(address);
    function token1() external view returns(address);
    function reserve1() external view returns(address);
    function decimals1() external view returns(address);
}
