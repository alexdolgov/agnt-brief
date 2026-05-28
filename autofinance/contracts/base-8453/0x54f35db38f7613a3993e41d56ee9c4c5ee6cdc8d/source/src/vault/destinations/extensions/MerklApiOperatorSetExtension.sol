// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import {
    BaseDestinationVaultExtension,
    IDestinationVaultExtension
} from "src/vault/destinations/extensions/base/BaseDestinationVaultExtension.sol";

import { Roles } from "src/libs/Roles.sol";
import { AutopilotErrors } from "src/utils/AutopilotErrors.sol";
import { IDestinationVault } from "src/interfaces/vault/IDestinationVault.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IDistributor } from "src/interfaces/external/merkl/IDistributor.sol";

// solhint-disable no-inline-assembly

/// @title An extension to toggle trusted claimers on Merkl distributor contract
/// @dev This contract can only be accessed in a delegatecall context
contract MerklApiOperatorSetExtension is BaseDestinationVaultExtension {
    /// @param trustedOperator Account allowed to claim on behalf of the Destination
    /// @param distributor Token distributor we'll call the fn on
    struct MerklApiTrustedOpDetails {
        address trustedOperator;
        address distributor;
    }

    constructor(
        ISystemRegistry _systemRegistry
    ) BaseDestinationVaultExtension(_systemRegistry) { }

    /// @inheritdoc IDestinationVaultExtension
    function execute(
        bytes memory data
    ) external override onlyDestinationVault {
        if (!systemRegistry.accessController().hasRole(Roles.AUTO_POOL_DESTINATION_UPDATER, msg.sender)) {
            revert AutopilotErrors.AccessDenied();
        }

        MerklApiTrustedOpDetails memory params = abi.decode(data, (MerklApiTrustedOpDetails));
        address trustedOperator = params.trustedOperator;
        address distributor = params.distributor;

        AutopilotErrors.verifyNotZero(trustedOperator, "trustedOperator");
        AutopilotErrors.verifyNotZero(distributor, "distributor");

        IDistributor(distributor).toggleOperator(address(this), trustedOperator);
    }
}
