// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { MessagingFee } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";

import { ProxyRegistryLib } from "../base/ProxyRegistryLib.sol";
import { OAppFactory } from "../base/OAppFactory.sol";

import { ContractType, VaultTokenParams } from "../../common/Types.sol";
import { AddressLib } from "../../common/AddressLib.sol";
import { IVaultToken } from "../../interfaces/IVaultToken.sol";

/// @title VaultTokenFactory
/// @notice Deploys  VaultToken proxies and exposes deterministic registry lookups.
/// @dev Combines registry-sourced configuration to assemble the initializer payload for each vault deployment.
abstract contract VaultTokenFactory is OAppFactory {
    function deployVaultToken(
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        MessagingFee[] calldata _fees
    ) external payable returns (address proxy) {
        VaultTokenParams memory params;

        (params.vaultComposer, params.vaultComposerEid) = getDeployedOrRevert(
            ContractType.VAULT_COMPOSER,
            _clusterName,
            _underlyingSymbol,
            ProxyRegistryLib.PLACEHOLDER_EID // EID does not need to be specified
        );

        params.name = string.concat(
            "Zircuit Finance Vault Token: ",
            _underlyingSymbol
        );
        params.symbol = string.concat("zv", _underlyingSymbol);
        params.oAppOwner = getOAppOwner();
        params.oAppDelegate = getOAppDelegate();
        params.defaultAdmin = getAdmin();

        // Prepare init calldata
        bytes memory initDataVault = abi.encodeWithSelector(
            IVaultToken.initialize.selector,
            params
        );

        proxy = _deployContractType(
            ContractType.VAULT_TOKEN,
            _clusterName,
            _underlyingSymbol,
            initDataVault,
            _fees
        );
    }
}
