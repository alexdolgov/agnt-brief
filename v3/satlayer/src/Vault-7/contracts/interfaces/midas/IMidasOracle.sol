// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

interface IMidasOracle {
    function lastAnswer() external view returns (int256);
}