// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.17;

import { FunctionParameters } from "../FunctionParameters.sol";

interface IPortfolio {
  function init(
    FunctionParameters.PortfolioInitData calldata initData
  ) external;

  function _accessController() external view returns (address);

  /**
   * @notice Returns the vault configuration containing owners, threshold, and custodial status
   */
  function _vaultConfig()
    external
    view
    returns (address[] memory owners, bool isCustodial, uint256 threshold);
}
