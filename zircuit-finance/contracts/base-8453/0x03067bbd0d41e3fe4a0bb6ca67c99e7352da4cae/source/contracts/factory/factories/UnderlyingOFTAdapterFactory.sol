// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { MessagingFee } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";

import {
    ContractType,
    UnderlyingOFTAdapterParams
} from "../../common/Types.sol";
import { ProxyRegistryLib } from "../base/ProxyRegistryLib.sol";
import { OAppFactory } from "../base/OAppFactory.sol";
import { AddressLib } from "../../common/AddressLib.sol";
import { IUnderlyingOFTAdapter } from "../../interfaces/IUnderlyingOFTAdapter.sol";

/// @title UnderlyingOFTAdapterFactory
/// @notice Deploys UnderlyingOFTAdapter proxies and exposes deterministic registry lookups.
/// @dev Combines registry-sourced configuration to assemble the initializer payload for each UnderlyingOFTAdapter deployment.
abstract contract UnderlyingOFTAdapterFactory is OAppFactory {
    function deployUnderlyingOFTAdapter(
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        uint8 _sharedDecimals,
        MessagingFee[] calldata _fees
    ) external payable returns (address proxy) {
        UnderlyingOFTAdapterParams memory params;

        (params.vaultComposer, params.vaultComposerEid) = getDeployedOrRevert(
            ContractType.VAULT_COMPOSER,
            _clusterName,
            _underlyingSymbol,
            ProxyRegistryLib.PLACEHOLDER_EID // EID does not need to be specified
        );

        params.clusterName = _clusterName;
        params.underlyingSymbol = _underlyingSymbol;
        params.underlyingToken = getUnderlyingAsset(_underlyingSymbol);
        params.sharedDecimals = _sharedDecimals;
        params.bridgeRouter = getBridgeRouter();
        params.oAppOwner = getOAppOwner();
        params.oAppDelegate = getOAppDelegate();
        params.defaultAdmin = getAdmin();

        // Prepare init calldata
        bytes memory initDataVault = abi.encodeWithSelector(
            IUnderlyingOFTAdapter.initialize.selector,
            params
        );

        proxy = _deployContractType(
            ContractType.UNDERLYING_OFT_ADAPTER,
            _clusterName,
            _underlyingSymbol,
            initDataVault,
            _fees
        );
    }
}
