pragma solidity 0.8.18;
// SPDX-License-Identifier: MIT

interface IChainLinkOracle {
    function latestAnswer() external view returns (int256);
}