// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.12;
interface IKineOracle {
    function getUnderlyingPrice(address kToken) external view returns (uint);
}