// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.6;

interface IInternetBondRatioFeed {

    function getRatioFor(address) external view returns (uint256);
}