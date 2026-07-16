// SPDX-License-Identifier: Apache 2.0

pragma solidity 0.8.4;

import {TetherTokenOFTExtension} from "contracts/Wrappers/OFTExtension.sol";
import {TetherTokenCeloExtension, EIP712Upgradeable, ERC20Upgradeable} from "contracts/Wrappers/CeloExtension.sol";

/*

   Copyright Everdawn Labs 2026

   Licensed under the Apache License, Version 2.0
   http://www.apache.org/licenses/LICENSE-2.0

*/


contract CeloOFTExtension is TetherTokenOFTExtension, TetherTokenCeloExtension {
  /**
  * @dev The hash of the name parameter for the EIP712 domain.
  *
  * NOTE: This function reads from storage by default, but can be redefined to return a constant value if gas costs
  * are a concern.
  */
  function _EIP712NameHash() internal virtual override(TetherTokenOFTExtension, EIP712Upgradeable) view returns (bytes32) {
    return TetherTokenOFTExtension._EIP712NameHash();
  }

  /**
  * @dev Returns the name of the token.
  */
  function name() public view virtual override(TetherTokenOFTExtension, ERC20Upgradeable) returns (string memory) {
    return TetherTokenOFTExtension.name();
  }

  /**
  * @dev Returns the symbol of the token, usually a shorter version of the
  * name.
  */
  function symbol() public view virtual override(TetherTokenOFTExtension, ERC20Upgradeable) returns (string memory) {
    return TetherTokenOFTExtension.symbol();
  }
}