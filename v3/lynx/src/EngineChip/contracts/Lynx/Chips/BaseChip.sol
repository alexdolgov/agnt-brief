// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {ChipEnumsV1} from "../interfaces/ChipEnumsV1.sol";
import "../interfaces/IRegistryV1.sol";

/**
 * @title BaseChip
 * @notice Base for Chip contracts to inherit from, handles the auto approval mechanism.
 */
contract BaseChip is ChipEnumsV1 {
  // ***** Events *****

  event AutoApprovedSpenderSet(
    string indexed role,
    address indexed oldSpender,
    address indexed newSpender
  );

  // ***** Immutable Storage *****

  IRegistryV1 public immutable registry;
  ChipMode public immutable chipMode;

  // ***** Storage *****

  // address => is auto approved
  mapping(address => bool) public autoApproved;

  // role hash => role address
  mapping(bytes32 => address) public autoApprovedSpendersByRoles;

  // ***** Views *****

  function getAutoApprovedSpenderAddressByRole(
    string calldata role
  ) public view returns (address) {
    bytes32 roleHash = keccak256(abi.encodePacked(role));
    return autoApprovedSpendersByRoles[roleHash];
  }

  // ***** Constructor *****

  constructor(IRegistryV1 _registry, ChipMode _chipMode) {
    require(address(_registry) != address(0), "!_registry");

    registry = _registry;
    chipMode = _chipMode;
  }

  // ***** Admin Functions *****

  function setAutoApprovedSpenderForRoleInternal(
    string calldata role,
    address spender
  ) internal {
    require(
      spender == address(0) ||
        registry.getValidSpenderTargetForChipByRole(address(this), role) ==
        spender,
      "NOT_REGISTRY_APPROVED"
    );

    address oldSpender = getAutoApprovedSpenderAddressByRole(role);

    autoApproved[oldSpender] = false;
    autoApproved[spender] = true;

    bytes32 roleHash = keccak256(abi.encodePacked(role));
    autoApprovedSpendersByRoles[roleHash] = spender;

    emit AutoApprovedSpenderSet(role, oldSpender, spender);
  }
}
