// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {LibExtLoader} from "./LibExtLoader.sol";

library LibProvisionExt {
  using LibExtLoader for address;

  /// @notice The slot of the provision of the target contract.
  uint256 private constant _PROVISION_SLOT = 0xc75405b747c226ae89c4992273ee1e417d533fd08bccf114697ed46756362c3f;

  /// @notice Returns the provision of the target contract.
  /// @param target The target contract to load the provision from.
  /// @return _provision The provision of the target contract.
  function provision(address target) internal view returns (uint24 _provision) {
    return uint24(target.sload(_PROVISION_SLOT));
  }
}
