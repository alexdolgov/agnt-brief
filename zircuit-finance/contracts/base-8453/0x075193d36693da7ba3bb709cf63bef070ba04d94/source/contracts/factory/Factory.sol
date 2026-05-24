// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { AddressLib } from "../common/AddressLib.sol";
import { ContractType, ProxyInfo } from "../common/Types.sol";
import { Errors } from "../common/Errors.sol";

import { OAppFactory } from "./base/OAppFactory.sol";
import { VaultFactory } from "./factories/VaultFactory.sol";
import { VaultTokenFactory } from "./factories/VaultTokenFactory.sol";
import { VaultComposerFactory } from "./factories/VaultComposerFactory.sol";
import { UnderlyingOFTFactory } from "./factories/UnderlyingOFTFactory.sol";
import { UnderlyingOFTAdapterFactory } from "./factories/UnderlyingOFTAdapterFactory.sol";
import { StrategyManagerFactory } from "./factories/StrategyManagerFactory.sol";
import { AccountingReceiverFactory } from "./factories/AccountingReceiverFactory.sol";
import { ProxyRegistryLib } from "./base/ProxyRegistryLib.sol";
import { BaseFactory } from "./base/BaseFactory.sol";

/// @title Omnichain Factory
/// @notice Aggregates vault, receipt-token, and rate-oracle deployment flows behind a single entry point.
/// @dev Layers the concrete factories on top of {OAppFactory} so LayerZero peer  and role plumbing
///      are reused across every deployment.
contract Factory is
    VaultFactory,
    VaultTokenFactory,
    VaultComposerFactory,
    UnderlyingOFTFactory,
    UnderlyingOFTAdapterFactory,
    StrategyManagerFactory,
    AccountingReceiverFactory
{
    using AddressLib for address;

    /// @notice Initializes the factory with LayerZero endpoint metadata, admin role, and optional seed data.
    /// @dev
    /// - Grants `DEFAULT_ADMIN_ROLE` to `_admin`.
    /// - Forwards optional `(_contractTypes, _entries)` to the base to support bootstrapping
    ///   a freshly deployed factory with already-deployed proxies.
    /// @param _lzEndpoint LayerZero endpoint address on the current chain.
    /// @param _oAppOwner Address installed as owner for deployed OApp components.
    /// @param _oAppDelegate LayerZero delegate allowed to configure factory peers.
    /// @param _admin Account granted `DEFAULT_ADMIN_ROLE`, enabling role management across modules.
    /// @param _contractTypes Optional contract types for each seed entry (aligned with `_entries`).
    /// @param _entries Optional proxy metadata entries used to pre-populate the registry.
    constructor(
        address _lzEndpoint,
        address _oAppOwner,
        address _oAppDelegate,
        address _admin,
        ContractType[] memory _contractTypes,
        ProxyInfo[] memory _entries
    )
        OAppFactory(_lzEndpoint, _oAppOwner, _oAppDelegate)
        BaseFactory(_contractTypes, _entries)
    {
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    }

    // Helper function used by the bridge routers to authorise bridge transfers
    function isAuthorizedBridgeAddress(
        address _caller,
        uint256 _chainId
    ) external view returns (bool) {
        bytes32 callerB32 = _caller.toBytes32();
        uint32 eid = getEid(_chainId);
        bool status;
        (status, ) = getProxyInfo(
            ContractType.UNDERLYING_OFT_ADAPTER,
            callerB32,
            eid
        );
        if (status) return true;
        (status, ) = getProxyInfo(ContractType.UNDERLYING_OFT, callerB32, eid);
        if (status) return true;
        (status, ) = getProxyInfo(
            ContractType.STRATEGY_MANAGER,
            callerB32,
            eid
        );
        return status;
    }
}
