// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title IFlockConfig
 * @author Ryon
 */
interface IFlockConfig {
    function getAddress(uint256 index) external returns (address);
    function setAddress(uint256 index, address newAddress) external;
}
