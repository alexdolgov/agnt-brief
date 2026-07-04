// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { SystemComponent } from "src/SystemComponent.sol";
import { ContractTypes } from "src/libs/ContractTypes.sol";
import { IERC4626 } from "src/interfaces/vault/IERC4626.sol";
import { IBackingOracle } from "src/interfaces/stats/backing/IBackingOracle.sol";
import { BackingRootOracle } from "src/stats/backing/BackingRootOracle.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

/// @notice Backing oracle for 4626 assets who are valued via their underlying asset
contract ERC4626BackingOracle is SystemComponent, IBackingOracle {
    /// ================================================
    /// Functions - Construction
    /// ================================================

    constructor(
        ISystemRegistry _systemRegistry
    ) SystemComponent(_systemRegistry) { }

    /// ================================================
    /// Functions - External
    /// ================================================

    /// @inheritdoc IBackingOracle
    /// @dev Does not make state changes but isn't view due to oracle requirements
    function getAssetBackingPerShare(
        address vaultAddr
    ) external returns (uint256) {
        BackingRootOracle rootBackingOracle =
            BackingRootOracle(systemRegistry.getUniqueContract(ContractTypes.BACKING_ORACLE));

        IERC4626 vault = IERC4626(vaultAddr);

        address asset = vault.asset();
        uint256 assetsPerShare = vault.convertToAssets(10 ** vault.decimals());

        uint256 assetBacking = rootBackingOracle.getAssetBackingPerShare(asset);

        return assetsPerShare * assetBacking / 10 ** IERC20Metadata(asset).decimals();
    }
}
