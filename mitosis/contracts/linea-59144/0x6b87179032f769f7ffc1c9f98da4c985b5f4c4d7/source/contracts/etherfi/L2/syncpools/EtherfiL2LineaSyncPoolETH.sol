// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {L2LineaSyncPoolETHUpgradeable} from "../../../L2/syncPools/L2LineaSyncPoolETHUpgradeable.sol";

contract EtherfiL2LineaSyncPoolETH is L2LineaSyncPoolETHUpgradeable {
    constructor(address endpoint) L2LineaSyncPoolETHUpgradeable(endpoint) {
        _disableInitializers();
    }

    function initialize(
        address l2ExchangeRateProvider,
        address rateLimiter,
        address tokenOut,
        uint32 dstEid,
        address messenger,
        address receiver,
        address delegate
    ) external override initializer {
        __L2BaseSyncPool_init(l2ExchangeRateProvider, rateLimiter, tokenOut, dstEid, delegate);
        __BaseMessenger_init(messenger);
        __BaseReceiver_init(receiver);
        __Ownable_init(delegate);
    }
}
