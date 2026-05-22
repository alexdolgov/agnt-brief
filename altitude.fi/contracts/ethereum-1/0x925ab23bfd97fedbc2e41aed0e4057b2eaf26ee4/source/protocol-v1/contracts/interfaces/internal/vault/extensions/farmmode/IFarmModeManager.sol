// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

interface IFarmModeManager {
    // Farm mode manager Errors
    error FM_V1_FARM_MODE_ALREADY_ENABLED();
    error FM_V1_FARM_MODE_ALREADY_DISABLED();

    function enableFarmMode() external;

    function disableFarmMode() external;
}
