//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// import "./IRequestWithdrawable.sol";

import "./ILYTPoolServiceConfiguration.sol";
import "./ILYTPoolAccessControl.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
enum IPoolType {
  TermPool,
  FlexRatePool,
  DynamicPool,
  LytPool
}

interface IPoolBase is IERC20 {
  function poolType() external view returns (IPoolType);

  function liquidityAssetAddr() external view returns (address);

  /**
   * @dev The ServiceConfiguration.
   */
  function serviceConfiguration() external view returns (ILYTPoolServiceConfiguration);

  /**
   * @dev The admin for the pool.
   */
  function admin() external view returns (address);

  function issuerAddr() external view returns (address);

  function treasuryWalletAddr() external view returns (address);

  function poolAccessControl() external view returns (ILYTPoolAccessControl);
}
