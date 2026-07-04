// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {VifCore} from "./base/VifCore.sol";
import {VifAuthorizer} from "./base/VifAuthorizer.sol";
import {VifManager} from "./base/VifManager.sol";
import {VifMaking} from "./base/VifMaking.sol";
import {VifTaking} from "./base/VifTaking.sol";
import {ExtLoader} from "./integrations/ExtLoader.sol";

//    ░██    ░██ ░██    ░████
//    ░██    ░██       ░██
//    ░██    ░██ ░██░████████
//    ░██    ░██ ░██   ░██
//     ░██  ░██  ░██   ░██
//      ░██░██   ░██   ░██
//       ░███    ░██   ░██

/// @title Vif
/// @notice The main contract for the name-coded Vif protocol.
contract Vif is VifCore, VifAuthorizer, VifManager, VifMaking, VifTaking, ExtLoader {
  /// @param owner The owner of the vif contract
  /// @param provision The provision of the vif contract
  constructor(address owner, uint24 provision) {
    _initializeVifManager(owner, provision);
  }

  /// @dev initializes the vif contract
  /// @dev initializes the owner and the provision
  /// @dev can only be called once, then reverts
  /// @param owner The owner of the vif contract
  /// @param provision The provision of the vif contract
  function initialize(address owner, uint24 provision) external {
    _initializeVifManager(owner, provision);
  }
}
