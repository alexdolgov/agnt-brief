// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { Errors } from "src/utils/Errors.sol";
import { BalancerV3DestinationVault } from "src/vault/BalancerV3DestinationVault.sol";
import { EnumerableSet } from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";
import { IDistributor } from "src/interfaces/external/merkl/IDistributor.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import { Roles } from "src/libs/Roles.sol";

contract BalancerV3MerklDestinationVault is BalancerV3DestinationVault {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    constructor(
        ISystemRegistry _systemRegistry
    ) BalancerV3DestinationVault(_systemRegistry) { }

    /// @dev Exposed via `getClaimableAssets()`
    EnumerableSet.AddressSet internal registeredClaimableAssets;

    event ClaimableAssetAddOrRemove(address[] assets, bool add);

    /// @notice Add assets that we can claim via merkle claiming
    /// @param assets Addresses of assets to add
    function addClaimableAssets(
        address[] memory assets
    ) external hasRole(Roles.DESTINATION_VAULT_MANAGER) {
        uint256 length = assets.length;
        for (uint256 i = 0; i < length; ++i) {
            address currentAssetToAdd = assets[i];
            Errors.verifyNotZero(currentAssetToAdd, "currentAssetToAdd");

            if (!registeredClaimableAssets.add(currentAssetToAdd)) revert Errors.ItemExists();
        }

        emit ClaimableAssetAddOrRemove(assets, true);
    }

    /// @notice Remove assets that we can claim via merkle claiming
    /// @param assets Addresses of assets to remove
    function removeClaimableAssets(
        address[] memory assets
    ) external hasRole(Roles.DESTINATION_VAULT_MANAGER) {
        uint256 length = assets.length;
        for (uint256 i = 0; i < length; ++i) {
            address currentAssetToRemove = assets[i];
            Errors.verifyNotZero(currentAssetToRemove, "currentAssetToRemove");

            if (!registeredClaimableAssets.remove(currentAssetToRemove)) revert Errors.ItemNotFound();
        }

        emit ClaimableAssetAddOrRemove(assets, false);
    }

    /// @notice Returns all registered claimable assets
    function getClaimableAssets() external view returns (address[] memory claimable) {
        claimable = registeredClaimableAssets.values();
    }

    /// @notice Allow a trusted operator to claim on behalf of this account
    /// @dev Does not emit state change events
    /// @param distributor Token distributor we'll call the fn on
    /// @param trustedOperator Account allowed to claim on behalf of the Destination
    function toggleMerklOperator(
        address distributor,
        address trustedOperator
    ) external hasRole(Roles.DESTINATION_MERKLE_CLAIM_MANAGER) {
        IDistributor(distributor).toggleOperator(address(this), trustedOperator);
    }

    function _collectRewards() internal override returns (uint256[] memory amounts, address[] memory tokens) {
        address[] memory allClaimableTokens = registeredClaimableAssets.values();
        uint256 length = allClaimableTokens.length;

        amounts = new uint256[](length);
        tokens = new address[](length);
        for (uint256 i = 0; i < length; ++i) {
            IERC20 token = IERC20(allClaimableTokens[i]);
            uint256 amount = token.balanceOf(address(this));

            if (!isTrackedToken(address(token))) {
                tokens[i] = address(token);
                if (amount > 0) {
                    token.safeTransfer(msg.sender, amount);
                    amounts[i] = amount;
                }
            }
        }
    }
}
