// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { MessagingFee } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";

import { ProxyRegistryLib } from "../base/ProxyRegistryLib.sol";
import { OAppFactory } from "../base/OAppFactory.sol";
import { ContractType, VaultParams } from "../../common/Types.sol";
import { AddressLib } from "../../common/AddressLib.sol";
import { IVault } from "../../interfaces/IVault.sol";

/// @title VaultFactory
/// @notice Deploys  vault proxies and exposes deterministic registry lookups.
/// @dev Combines registry-sourced configuration (receipt token address, oracle metadata, bridge router, etc.)
///      to assemble the initializer payload for each vault deployment.
abstract contract VaultFactory is OAppFactory {
    using AddressLib for bytes32;

    function deployVault(
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        MessagingFee[] calldata _fees
    ) external payable returns (address proxy) {
        VaultParams memory params;

        (bytes32 underlyingOFT, ) = getDeployedOrRevert(
            ContractType.UNDERLYING_OFT,
            _clusterName,
            _underlyingSymbol,
            ProxyRegistryLib.PLACEHOLDER_EID // EID does not need to be specified
        );

        (params.vaultComposer, ) = _predictAddress(
            ContractType.VAULT_COMPOSER,
            _clusterName,
            _underlyingSymbol
        );

        params.underlyingOFT = underlyingOFT.toAddress();
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
            IVault.initialize.selector,
            params
        );

        proxy = _deployContractType(
            ContractType.VAULT,
            _clusterName,
            _underlyingSymbol,
            initDataVault,
            _fees
        );
    }
}
