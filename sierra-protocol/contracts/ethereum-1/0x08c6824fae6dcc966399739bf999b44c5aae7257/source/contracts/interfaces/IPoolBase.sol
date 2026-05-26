//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./IRequestWithdrawable.sol";

import "./IServiceConfigurationV5.sol";
import "./IPoolAccessControl.sol";
import { IERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
enum IPoolType {
  TermPool,
  FlexRatePool,
  DynamicPool
}

interface IPoolBase is IERC20Upgradeable, IRequestWithdrawable {
  function poolType() external view returns (IPoolType);

  function liquidityAssetAddr() external view returns (address);

  /**
   * @dev The ServiceConfiguration.
   */
  function serviceConfiguration() external view returns (IServiceConfigurationV5);

  /**
   * @dev The admin for the pool.
   */
  function admin() external view returns (address);

  function borrowerManagerAddr() external view returns (address);

  function borrowerWalletAddr() external view returns (address);

  function poolAccessControl() external view returns (IPoolAccessControl);

  function isPermittedLender(address) external view returns (bool);
}
