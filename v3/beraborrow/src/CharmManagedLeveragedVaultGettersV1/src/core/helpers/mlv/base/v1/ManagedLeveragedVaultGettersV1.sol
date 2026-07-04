// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IBaseManagedLeveragedVault} from "src/interfaces/core/mlv/base/IBaseManagedLeveragedVault.sol";
import {ManagedLeveragedVaultStorageLib, BaseManagedLeveragedVaultGetters} from "src/core/helpers/mlv/base/BaseManagedLeveragedVaultGetters.sol";

abstract contract ManagedLeveragedVaultGettersV1 is BaseManagedLeveragedVaultGetters {
    constructor(IBaseManagedLeveragedVault _vault) BaseManagedLeveragedVaultGetters(_vault) {}
}