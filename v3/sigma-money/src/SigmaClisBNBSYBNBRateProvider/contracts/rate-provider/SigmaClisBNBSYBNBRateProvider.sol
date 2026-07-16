// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { IRateProvider } from "./interfaces/IRateProvider.sol";
import "../interfaces/sigma/IListaStakeManager.sol";

// solhint-disable contract-name-camelcase

contract SigmaClisBNBSYBNBRateProvider is IRateProvider {
  /// @dev Address of ListaStakeManager
  IListaStakeManager public immutable listaStakeManager;

  constructor(address _listaStakeManager) {
    require(_listaStakeManager != address(0), "Invalid ListaStakeManager address");
    listaStakeManager = IListaStakeManager(_listaStakeManager);
  }

  /// @notice SigmaClisBNBSY and slisBNB are 1:1 pegged. SigmaClisBNBSY : BNB = slisBNB : BNB
  /// @inheritdoc IRateProvider
  function getRate() external view override returns (uint256) {
    return listaStakeManager.convertSnBnbToBnb(1 ether);
  }
}
