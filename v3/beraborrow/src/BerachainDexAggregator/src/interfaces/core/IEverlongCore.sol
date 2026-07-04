// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

/**
 * @title EverlongCore
 * @author Everlong Labs
 * @notice Single source of truth across all Everlong contracts for key administrative data
 */
interface IEverlongCore {
    function owner() external view returns (address);
    function feeReceiver() external view returns (address);
    function priceFeed() external view returns (address);

    function setFeeReceiver(address _feeReceiver) external;
}