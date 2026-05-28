// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { AutopoolETH } from "src/vault/AutopoolETH.sol";

contract TopWithdrawMonitor {
    function getTopWithdrawDest(
        address autopool
    ) external view returns (address) {
        address[] memory dests = AutopoolETH(autopool).getWithdrawalQueue();
        if (dests.length > 0) {
            return dests[0];
        }
        return address(0);
    }
}
