/* SPDX-License-Identifier: UNLICENSED */
pragma solidity ^0.8.0;

interface IMain {
    function rToken() external view returns (address);

    function stRSR() external view returns (address);

    function assetRegistry() external view returns (address);

    function basketHandler() external view returns (address);

    function backingManager() external view returns (address);

    function distributor() external view returns (address);

    function rsrTrader() external view returns (address);

    function rTokenTrader() external view returns (address);

    function furnace() external view returns (address);

    function broker() external view returns (address);
}
