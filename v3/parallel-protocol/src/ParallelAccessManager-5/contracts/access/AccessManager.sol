// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { AccessManager } from "@openzeppelin/contracts/access/manager/AccessManager.sol";

import { Roles } from "contracts/libraries/RolesLib.sol";

/// @title AccessManager
/// @author Cooper Labs
/// @custom:contact security@cooperlabs.xyz
/// @notice Contract inheriting from OpenZeppelin's AccessManager contract.
contract ParallelAccessManager is AccessManager {
    constructor(address owner) AccessManager(owner) { }

    function setGovernor(address governor) external {
        _grantRole(Roles.GOVERNOR_ROLE, governor, 0, 0);
    }

    function setGuardian(address guardian) external {
        _grantRole(Roles.GUARDIAN_ROLE, guardian, 0, 0);
    }
}
