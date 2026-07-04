// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @title LibProvision
/// @notice Global provision configuration and helpers.
/// @dev Stores a single `uint24` minimum provision in storage and exposes helpers
/// to floor/ceil requested provisions to this minimum. Emits a `SetProvision` event
/// when the minimum is updated.
library LibProvision {
  using LibProvision for uint24;

  /// @notice Thrown when the provision is greater than the maximum provision.
  /// @dev Error signature: 0x9da9d12d.
  error ProvisionTooLarge();

  /// @notice Emitted when the global minimum provision is updated.
  /// @param provision The new minimum provision value.
  event SetProvision(uint24 provision);

  /// @dev keccak256("SetProvision(uint24)")
  uint256 private constant _PROVISION_EVENT_SIGNATURE =
    0x49272710258053426e7660d79026935fc47d6c1fe608790c3c6d5196c28f1b0f;

  // keccak256("Provision()")
  uint256 private constant _PROVISION_SLOT = 0xc75405b747c226ae89c4992273ee1e417d533fd08bccf114697ed46756362c3f;

  /// @notice The maximum provision.
  uint256 private constant _MAX_PROVISION = 0x7fffff;

  /// @notice The provision unit
  /// @dev This value can be mutated depending on the gas environment
  /// @dev When mutating, check for extreme values.
  uint256 internal constant PROVISION_UNIT = 1e9;

  /// @notice Returns the global minimum provision.
  /// @return _provision The minimum provision value.
  function provision() internal view returns (uint24 _provision) {
    /// @solidity memory-safe-assembly
    assembly {
      _provision := sload(_PROVISION_SLOT)
    }
  }

  /// @notice checks if the provision is less than the maximum provision.
  /// @param _provision The provision to check.
  function checkProvision(uint24 _provision) internal pure {
    /// @solidity memory-safe-assembly
    assembly {
      if gt(_provision, _MAX_PROVISION) {
        mstore(0x00, 0x9da9d12d) // ProvisionTooLarge()
        revert(0x1c, 0x04)
      }
    }
  }

  /// @notice Floors the input to be at least the global minimum provision.
  /// @param _provision The requested provision value.
  /// @return result The floored provision (max(requested, minimum)).
  function floor(uint24 _provision) internal view returns (uint24 result) {
    /// @solidity memory-safe-assembly
    assembly {
      let min := sload(_PROVISION_SLOT)
      // return the maximum of _provision and min
      result := xor(_provision, mul(xor(_provision, min), gt(min, _provision)))
    }
  }

  /// @notice Ceils the input to be at most the global minimum provision.
  /// @param _provision The requested provision value.
  /// @return result The ceiled provision (min(requested, minimum)).
  function ceil(uint24 _provision) internal view returns (uint24 result) {
    /// @solidity memory-safe-assembly
    assembly {
      let min := sload(_PROVISION_SLOT)
      // return the minimum of _provision and min
      result := xor(_provision, mul(xor(_provision, min), lt(min, _provision)))
    }
  }

  /// @notice Sets the global minimum provision and emits {SetProvision}.
  /// @param _provision The new minimum provision value.
  function setProvision(uint24 _provision) internal {
    _provision.checkProvision();
    /// @solidity memory-safe-assembly
    assembly {
      sstore(_PROVISION_SLOT, _provision)
      mstore(0x00, _provision)
      log1(0x00, 0x20, _PROVISION_EVENT_SIGNATURE)
    }
  }
}
