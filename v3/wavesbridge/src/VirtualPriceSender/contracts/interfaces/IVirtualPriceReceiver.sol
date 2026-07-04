// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity 0.8.17;


interface IVirtualPriceReceiver {
    
    function receiveVirtualPrice(uint256 _virtualPriceStable, uint256 _virtualPriceCrypto, uint64 chainIdFrom) external;
}
