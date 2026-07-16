// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { OrchestratorBase } from "src/OrchestratorBase.sol";

import { Initializable } from "openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";

/// @title Orchestrator Upgradeable Base
/// @author Alluvial Finance Inc.
/// @notice This contract is intended to be inherited by Upgradeable Orchestrator contracts.
///         It contains the shared logic for all upgradeable orchestrator contracts.
abstract contract OrchestratorUpgradeableBase is Initializable, OrchestratorBase, UUPSUpgradeable {
    constructor(address beaconDepositContract) OrchestratorBase(beaconDepositContract) { }

    /// @dev This function is overridden to prevent the contract from being upgraded
    ///      by a role other than the DEFAULT_ADMIN_ROLE
    function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant { }
}
