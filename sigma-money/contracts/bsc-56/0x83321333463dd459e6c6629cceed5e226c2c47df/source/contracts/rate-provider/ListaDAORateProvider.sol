// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { IRateProvider } from "./interfaces/IRateProvider.sol";
import { IListaStakeManager } from "../interfaces/sigma/IListaStakeManager.sol";

// solhint-disable contract-name-camelcase

contract ListaDAORateProvider is IRateProvider {
  /// @notice The address of `ListaStakeManager` contract.
  address public immutable ListaStakeManager;

  constructor(address _ListaStakeManager) {
    ListaStakeManager = ListaStakeManager;
  }

  /// @inheritdoc IRateProvider
  function getRate() external view override returns (uint256) {
    return IListaStakeManager(ListaStakeManager).convertSnBnbToBnb(1 ether);
  }
}
