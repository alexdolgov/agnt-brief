// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { BeneficiaryAddress } from "src/state/orchestratorUpgradeable/BeneficiaryAddress.sol";
import { TVSBeaconAddress } from "src/state/orchestratorUpgradeable/TVSBeaconAddress.sol";
import { TransferToListEnabled } from "src/state/orchestratorUpgradeable/TransferToListEnabled.sol";

import { OrchestratorUpgradeableBase } from "src/OrchestratorUpgradeableBase.sol";

import { BatchUpgradeableTVSCreator } from "src/batchContracts/BatchUpgradeableTVSCreator.sol";

/// @title Upgradeable Orchestrator with upgradeable TVS
/// @author Alluvial Finance Inc.
/// @notice Orchestrator implementation for the first version of the Orchestrator
contract OrchestratorV1 is BatchUpgradeableTVSCreator, OrchestratorUpgradeableBase {
    constructor(address beaconDepositContract) OrchestratorUpgradeableBase(beaconDepositContract) { }

    /// @notice Initialize the Orchestrator
    /// @param owner The owner of the Orchestrator
    /// @param tvsBeacon The address of the TVS Beacon
    /// @param staker The address of the staker
    /// @param keeper The address of the keeper
    /// @param beneficiaryAddress The address of the beneficiary
    /// @param configManagerAddress The address of the Config Manager
    /// @param depositContractAddress The address of the deposit contract
    /// @param transferToListEnabled Whether to enable the transfer to list
    /// @dev PLEASE NOTE: The beneficiary address should not be set to the orchestrator address as it will break
    ///      the sweep functionality due to lack of receive function in the Orchestrator contract.
    function initialize(
        address owner,
        address tvsBeacon,
        address staker,
        address keeper,
        address beneficiaryAddress,
        address configManagerAddress,
        address depositContractAddress,
        bool transferToListEnabled
    )
        public
        initializer
    {
        if (owner == address(0)) revert InvalidZeroAddress();

        __AccessControl_init();
        __UUPSUpgradeable_init();
        TVSBeaconAddress.set(tvsBeacon);

        _configureOwner(owner);
        _preConfigRoles(staker, keeper);
        _saveBaseConfig(beneficiaryAddress, configManagerAddress, depositContractAddress);
        _setTransferToListEnabled(transferToListEnabled);
    }

    /// @notice Create validator sets
    /// @param count Number of validator sets to create
    /// @return The addresses of the created validator sets
    function createValidatorSets(uint256 count)
        external
        override
        onlyRole(VALIDATOR_SET_CREATOR_ROLE)
        isNotPaused
        returns (address[] memory)
    {
        return _createValidatorSets(count, address(this), BeneficiaryAddress.get(), TVSBeaconAddress.get());
    }
}
