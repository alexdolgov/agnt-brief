// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { IDestinationVault } from "src/interfaces/vault/IDestinationVault.sol";
import { IUniversalRewardsDistributor } from "src/interfaces/external/morpho/IUniversalRewardsDistributor.sol";

import { Roles } from "src/libs/Roles.sol";
import { Errors } from "src/utils/Errors.sol";
import { ERC4626DestinationVault } from "src/vault/ERC4626DestinationVault.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import { EnumerableSet } from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";

/// @title Destination Vault to interact with Morpho 4626 vaults
contract MorphoDestinationVault is ERC4626DestinationVault {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    string internal constant EXCHANGE_NAME = "morpho";

    /// @dev Exposed via `getClaimableAssets()`
    EnumerableSet.AddressSet internal registeredClaimableAssets;

    // ------------------- //
    // Events
    // ------------------- //

    event MerkleRewardsClaimed(address[] values);
    event ClaimableAssetAddOrRemove(address[] assets, bool add);

    // ------------------- //
    // Errors
    // ------------------- //

    error InvalidArrayLengths(string info);
    error ClaimableAssetNotRegistered(address asset);
    error InvalidClaimAmount();

    // ------------------- //
    // Constructor
    // ------------------- //

    constructor(
        ISystemRegistry sysRegistry
    ) ERC4626DestinationVault(sysRegistry) { }

    // ------------------- //
    // External functions
    // ------------------- //

    /// @inheritdoc IDestinationVault
    function exchangeName() external pure override returns (string memory) {
        return EXCHANGE_NAME;
    }

    /// @inheritdoc IDestinationVault
    function poolType() external pure override returns (string memory) {
        return "metaMorpho";
    }

    /// @inheritdoc IDestinationVault
    function destType() external pure override returns (string memory) {
        return "hold";
    }

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

    /// @notice Used to claim rewards distributed via merkle root for Morpho
    /// @param rewardTokens tokens to be claimed. Must be registered on this contract first
    /// @param rewardDistributors contracts distributing the rewards
    /// @param cumulativeClaimable cumulative amount claimed
    /// @param proofs merkle proof by claim
    function collectMerkleRewards(
        address[] memory rewardTokens,
        address[] memory rewardDistributors,
        uint256[] memory cumulativeClaimable,
        bytes32[][] memory proofs
    ) external hasRole(Roles.DESTINATION_MERKLE_CLAIM_MANAGER) {
        uint256 length = rewardTokens.length;
        if (length != rewardDistributors.length || length != cumulativeClaimable.length || length != proofs.length) {
            revert InvalidArrayLengths("rewardTokens+rewardDistributors+cumulativeClaimable+proofs");
        }

        emit MerkleRewardsClaimed(rewardTokens);

        for (uint256 i = 0; i < length; ++i) {
            address rewardToken = rewardTokens[i];
            address rewardDistributor = rewardDistributors[i];
            uint256 cumulative = cumulativeClaimable[i];
            bytes32[] memory proof = proofs[i];

            // Below check will catch a zero address for reward token. We check for zero address on registration
            if (!registeredClaimableAssets.contains(rewardToken)) revert ClaimableAssetNotRegistered(rewardToken);

            Errors.verifyNotZero(rewardDistributor, "rewardDistributor");
            Errors.verifyNotZero(cumulative, "cumulative");
            Errors.verifyNotZero(proof.length, "proof.length");

            uint256 rewardTokenBalanceBefore = IERC20(rewardToken).balanceOf(address(this));

            uint256 amountClaimed =
                IUniversalRewardsDistributor(rewardDistributor).claim(address(this), rewardToken, cumulative, proof);

            uint256 rewardTokenBalanceAfter = IERC20(rewardToken).balanceOf(address(this));

            // Checking that a reward is claimed, and that amounts make sense
            if (amountClaimed == 0 || rewardTokenBalanceAfter != rewardTokenBalanceBefore + amountClaimed) {
                revert InvalidClaimAmount();
            }
        }
    }

    // ------------------- //
    // Internal functions
    // ------------------- //

    /// @dev Has potential to return zero amounts
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
