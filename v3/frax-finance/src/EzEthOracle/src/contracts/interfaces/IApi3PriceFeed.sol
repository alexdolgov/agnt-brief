// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

interface IApi3 {
    function read() external view returns (int224, uint32);
}
