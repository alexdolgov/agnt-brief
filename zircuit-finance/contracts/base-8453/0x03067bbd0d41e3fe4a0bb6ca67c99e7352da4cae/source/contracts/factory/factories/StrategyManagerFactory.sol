// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { MessagingFee } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";

import { ProxyRegistryLib } from "../base/ProxyRegistryLib.sol";
import { OAppFactory } from "../base/OAppFactory.sol";
import { ContractType, StrategyManagerParams } from "../../common/Types.sol";
import { AddressLib } from "../../common/AddressLib.sol";
import { IStrategyManager } from "../../interfaces/IStrategyManager.sol";

/// @title StrategyManagerFactory
/// @notice Deploys  StrategyManager proxies and exposes deterministic registry lookups.
/// @dev Combines registry-sourced configuration (receipt token address, oracle metadata, bridge router, etc.)
///      to assemble the initializer payload for each StrategyManager deployment.
abstract contract StrategyManagerFactory is OAppFactory {
    function deployStrategyManager(
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        uint8 _sharedDecimals,
        MessagingFee[] calldata _fees
    ) external payable returns (address proxy) {
        StrategyManagerParams memory params;
        (
            params.accountingReceiver,
            params.accountingReceiverEid
        ) = getDeployedOrRevert(
            ContractType.ACCOUNTING_RECEIVER,
            _clusterName,
            _underlyingSymbol,
            ProxyRegistryLib.PLACEHOLDER_EID
        );

        params.clusterName = _clusterName;
        params.underlyingSymbol = _underlyingSymbol;
        params.underlyingToken = getUnderlyingAsset(_underlyingSymbol);
        params.bridgeRouter = getBridgeRouter();

        params.sharedDecimals = _sharedDecimals;
        params.oAppOwner = getOAppOwner();
        params.oAppDelegate = getOAppDelegate();
        params.defaultAdmin = getAdmin();

        bytes memory initDataStrategyManager = abi.encodeWithSelector(
            IStrategyManager.initialize.selector,
            params
        );

        proxy = _deployContractType(
            ContractType.STRATEGY_MANAGER,
            _clusterName,
            _underlyingSymbol,
            initDataStrategyManager,
            _fees
        );
    }
}
