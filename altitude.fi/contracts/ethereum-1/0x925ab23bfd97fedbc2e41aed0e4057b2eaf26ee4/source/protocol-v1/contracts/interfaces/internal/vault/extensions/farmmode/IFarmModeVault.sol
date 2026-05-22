// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

import "./IFarmModeManager.sol";
import "../../../../../libraries/types/VaultTypes.sol";

interface IFarmModeVaultV1 is IFarmModeManager {
    function setFarmModeConfig(
        VaultTypes.FarmModeConfig memory config
    ) external;

    function getFarmModeConfig()
        external
        view
        returns (bool, uint256, address, address);
}
