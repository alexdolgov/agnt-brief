// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IBTCMTSale {
    function price() external view returns (uint256);

    function buy(uint256 amount, uint256 timeInWeeks) external;
}
