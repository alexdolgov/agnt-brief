// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { IERC4626 } from "src/interfaces/vault/IERC4626.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IPriceOracle } from "src/interfaces/oracles/IPriceOracle.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

import { SystemComponent } from "src/SystemComponent.sol";
import { AutopilotErrors } from "src/utils/AutopilotErrors.sol";

import { Address } from "openzeppelin-contracts/utils/Address.sol";

/// @title Gets the price of a 4626 vault share in Eth
contract ERC4626VaultShareEthOracle is SystemComponent, IPriceOracle {
    using Address for address;

    /// @notice Thrown when token to be priced is not 4626 compliant
    error Not4626Vault();

    constructor(
        ISystemRegistry _systemRegistry
    ) SystemComponent(_systemRegistry) {
        AutopilotErrors.verifyNotZero(address(_systemRegistry.rootPriceOracle()), "rootPriceOracle");
    }

    /// @inheritdoc IPriceOracle
    function getDescription() external pure override returns (string memory) {
        return "4626 share oracle";
    }

    /// @inheritdoc IPriceOracle
    function getPriceInEth(
        address token
    ) external returns (uint256) {
        // This catches failure and the address being called not being a contract.  Also works as zero address check
        // for vault address
        bytes memory data = token.functionStaticCall(abi.encodeCall(IERC4626.asset, ()), "Not4626Vault");

        // slither-disable-start uninitialized-local
        IERC20Metadata vaultAsset;
        IERC4626 vault;
        // slither-disable-end uninitialized-local

        // Address.sol does not check data length being > 0, only that target is not a contract if data is zero length
        // We need data to be > 0, so check here
        if (data.length != 0) {
            vaultAsset = IERC20Metadata(abi.decode(data, (address)));

            AutopilotErrors.verifyNotZero(address(vaultAsset), "vaultAsset");
            vault = IERC4626(token);
        } else {
            revert Not4626Vault();
        }

        // Must return here in 18 decimals. `getPriceInEth()` always returns in e18. `convertToAssets()` returns in
        // decimals of the vault asset. Divide by asset decimals to return e18
        return vault.convertToAssets(10 ** vault.decimals())
            * systemRegistry.rootPriceOracle().getPriceInEth(address(vaultAsset)) / 10 ** vaultAsset.decimals();
    }
}
