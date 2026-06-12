// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

event TokenRetired(uint256 amount, uint256 metricTon, address by);
/* solhint-disable */
interface ICarbonToken is IERC20 {
  function METRIC_TON_DECIMALS() external view returns(uint8);
  function metricTonPerToken() external view returns (uint256);
  function retire(uint256 amount) external returns(uint256);
  function metricTonRetired() external view returns(uint256);
}