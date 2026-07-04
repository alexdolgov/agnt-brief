//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface IVester {
    function segments() external view returns (uint256);

    function vestingAmount() external view returns (uint256);

    function vestingBegin() external view returns (uint256);

    function vestingEnd() external view returns (uint256);
}
