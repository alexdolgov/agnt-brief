// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { MessagingFee } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";

import { ProxyRegistryLib } from "../base/ProxyRegistryLib.sol";
import { OAppFactory } from "../base/OAppFactory.sol";
import { ContractType, AccountingReceiverParams } from "../../common/Types.sol";
import { AddressLib } from "../../common/AddressLib.sol";
import { IAccountingReceiver } from "../../interfaces/IAccountingReceiver.sol";

/// @title AccountingReceiverFactory
/// @notice Deploys  AccountingReceiver proxies and exposes deterministic registry lookups.
/// @dev Combines registry-sourced configuration (receipt token address, oracle metadata, bridge router, etc.)
///      to assemble the initializer payload for each AccountingReceiver deployment.
abstract contract AccountingReceiverFactory is OAppFactory {
    using AddressLib for bytes32;

    function deployAccountingReceiver(
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        uint8 _sharedDecimals,
        MessagingFee[] calldata _fees
    ) external payable returns (address proxy) {
        AccountingReceiverParams memory params;

        (bytes32 underlyingOFT, ) = getDeployedOrRevert(
            ContractType.UNDERLYING_OFT,
            _clusterName,
            _underlyingSymbol,
            ProxyRegistryLib.PLACEHOLDER_EID
        );

        params.underlyingOFT = underlyingOFT.toAddress();
        params.clusterName = _clusterName;
        params.underlyingSymbol = _underlyingSymbol;
        params.underlyingToken = getUnderlyingAsset(_underlyingSymbol);
        params.oAppOwner = getOAppOwner();
        params.oAppDelegate = getOAppDelegate();
        params.defaultAdmin = getAdmin();
        params.sharedDecimals = _sharedDecimals;

        // Prepare init calldata
        bytes memory initDataAccountingReceiver = abi.encodeWithSelector(
            IAccountingReceiver.initialize.selector,
            params
        );

        proxy = _deployContractType(
            ContractType.ACCOUNTING_RECEIVER,
            _clusterName,
            _underlyingSymbol,
            initDataAccountingReceiver,
            _fees
        );
    }
}
