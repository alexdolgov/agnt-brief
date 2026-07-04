// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

// solhint-disable var-name-mixedcase

import { IDexLSTStats } from "src/interfaces/stats/IDexLSTStats.sol";
import { IDestinationVault } from "src/interfaces/vault/IDestinationVault.sol";

contract ZeroCalculator is IDexLSTStats {
    constructor() { }

    /// @notice Returns an empty struct, all values default or zero
    function current() external view override returns (DexLSTStatsData memory dexLSTStatsData) {
        dexLSTStatsData.lastSnapshotTimestamp = block.timestamp;
    }

    function lpToken() external view returns (address) {
        return IDestinationVault(msg.sender).underlying();
    }

    function pool() external view returns (address) {
        return IDestinationVault(msg.sender).getPool();
    }

    function getAddressId() external view returns (address) {
        return IDestinationVault(msg.sender).underlying();
    }
}
