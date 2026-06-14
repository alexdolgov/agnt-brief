// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { MessagingFee } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";

import { ProxyRegistryLib } from "../base/ProxyRegistryLib.sol";
import { OAppFactory } from "../base/OAppFactory.sol";
import { ContractType, VaultComposerParams } from "../../common/Types.sol";
import { AddressLib } from "../../common/AddressLib.sol";
import { IVaultComposer } from "../../interfaces/IVaultComposer.sol";

/// @title VaultComposerFactory
/// @notice Deploys  VaultComposer proxies and exposes deterministic registry lookups.
/// @dev Combines registry-sourced configuration to assemble the initializer payload for each vault deployment.
abstract contract VaultComposerFactory is OAppFactory {
    using AddressLib for bytes32;

    function deployVaultComposer(
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        MessagingFee[] calldata _fees
    ) external payable returns (address proxy) {
        VaultComposerParams memory params;

        (bytes32 vault, ) = getDeployedOrRevert(
            ContractType.VAULT,
            _clusterName,
            _underlyingSymbol,
            ProxyRegistryLib.PLACEHOLDER_EID
        );

        (bytes32 underlyingOFT, ) = getDeployedOrRevert(
            ContractType.UNDERLYING_OFT,
            _clusterName,
            _underlyingSymbol,
            ProxyRegistryLib.PLACEHOLDER_EID
        );

        params.vault = vault.toAddress();
        params.underlyingOFT = underlyingOFT.toAddress();
        params.underlyingToken = getUnderlyingAsset(_underlyingSymbol);
        params.endpoint = address(endpoint);
        params.localEid = endpoint.eid();
        params.defaultAdmin = getAdmin();

        // Prepare init calldata
        bytes memory initDataVault = abi.encodeWithSelector(
            IVaultComposer.initialize.selector,
            params
        );

        proxy = _deployContractType(
            ContractType.VAULT_COMPOSER,
            _clusterName,
            _underlyingSymbol,
            initDataVault,
            _fees
        );
    }
}
