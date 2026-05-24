// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { MessagingFee } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";

import { ProxyRegistryLib } from "../base/ProxyRegistryLib.sol";
import { OAppFactory } from "../base/OAppFactory.sol";
import { ContractType, UnderlyingOFTParams } from "../../common/Types.sol";
import { AddressLib } from "../../common/AddressLib.sol";
import { IUnderlyingOFT } from "../../interfaces/IUnderlyingOFT.sol";

/// @title UnderlyingOFTFactory
/// @notice Deploys UnderlyingOFT proxies and exposes deterministic registry lookups.
/// @dev Combines registry-sourced configuration to assemble the initializer payload for each UnderlyingOFT deployment.
abstract contract UnderlyingOFTFactory is OAppFactory {
    function deployUnderlyingOFT(
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        uint8 _sharedDecimals,
        MessagingFee[] calldata _fees
    ) external payable returns (address proxy) {
        UnderlyingOFTParams memory params;

        (params.vault, ) = _predictAddress(
            ContractType.VAULT,
            _clusterName,
            _underlyingSymbol
        );

        (params.vaultComposer, ) = _predictAddress(
            ContractType.VAULT_COMPOSER,
            _clusterName,
            _underlyingSymbol
        );

        (params.accountingReceiver, ) = _predictAddress(
            ContractType.ACCOUNTING_RECEIVER,
            _clusterName,
            _underlyingSymbol
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
            IUnderlyingOFT.initialize.selector,
            params
        );

        proxy = _deployContractType(
            ContractType.UNDERLYING_OFT,
            _clusterName,
            _underlyingSymbol,
            initDataVault,
            _fees
        );
    }
}
