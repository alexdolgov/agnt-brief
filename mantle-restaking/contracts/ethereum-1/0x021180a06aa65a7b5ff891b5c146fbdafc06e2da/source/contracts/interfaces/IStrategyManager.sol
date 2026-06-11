/* SPDX-License-Identifier: UNLICENSED */
pragma solidity ^0.8.0;

interface IStrategyManager {

  function depositIntoStrategy(address strategy, address token, uint256 amount) external returns (uint256 shares);

}
