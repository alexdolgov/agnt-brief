// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IStataTokenV2 } from "src/interfaces/external/aave/IStataTokenV2.sol";
import { ERC4626DestinationVault } from "src/vault/ERC4626DestinationVault.sol";
import { DestinationVault, IDestinationVault } from "src/vault/DestinationVault.sol";
import { EnumerableSet } from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";
import { IDistributor } from "src/interfaces/external/merkl/IDistributor.sol";
import { Roles } from "src/libs/Roles.sol";
import { Errors } from "src/utils/Errors.sol";

/// @title Destination Vault to proxy interactions with Aave V3 Stata tokens
contract AaveV3StataDestinationVault is ERC4626DestinationVault {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    string internal constant EXCHANGE_NAME = "aave";

    bool internal claimPerm;

    /// @dev Exposed via `getClaimableAssets()`
    EnumerableSet.AddressSet internal registeredClaimableAssets;

    event ClaimableAssetAddOrRemove(address[] assets, bool add);

    constructor(
        ISystemRegistry sysRegistry
    ) ERC4626DestinationVault(sysRegistry) { }

    /// @inheritdoc IDestinationVault
    function exchangeName() external pure override returns (string memory) {
        return EXCHANGE_NAME;
    }

    /// @inheritdoc IDestinationVault
    function poolType() external pure override returns (string memory) {
        return "aTokenStataV3";
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

            if (currentAssetToAdd == _underlying) {
                revert Errors.InvalidToken(currentAssetToAdd);
            }

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

    /// @inheritdoc DestinationVault
    function _collectRewards() internal override returns (uint256[] memory amounts, address[] memory tokens) {
        bool cp = claimPerm;
        bool permSent = false;
        if (cp) {
            (amounts, tokens, permSent) = _claimPermRewards();
        }

        if (!cp || !permSent) {
            // slither-disable-next-line unused-return
            (amounts, tokens) = _collectAaveRewards();
        }

        claimPerm = !cp;
    }

    function _collectAaveRewards() private returns (uint256[] memory amounts, address[] memory tokens) {
        // Get the reward tokens
        tokens = IStataTokenV2(_underlying).rewardTokens();
        uint256 nTokens = tokens.length;
        amounts = new uint256[](nTokens);

        if (nTokens == 0) {
            return (amounts, tokens);
        }

        // And their amounts before claiming
        uint256[] memory amountsBefore = new uint256[](nTokens);
        for (uint256 i = 0; i < nTokens; ++i) {
            amountsBefore[i] = _getRewardBalance(tokens[i]);
        }
        // Claim the rewards
        IStataTokenV2(_underlying).claimRewardsToSelf(tokens);

        // Get the amounts after claiming
        for (uint256 i = 0; i < nTokens; ++i) {
            address token = tokens[i];
            uint256 amount = _getRewardBalance(token) - amountsBefore[i];
            amounts[i] = amount;
            if (amount > 0) {
                // Transfer the rewards to the caller
                IERC20(token).safeTransfer(msg.sender, amount);
            }
        }
    }

    function _claimPermRewards() private returns (uint256[] memory amounts, address[] memory tokens, bool sent) {
        tokens = registeredClaimableAssets.values();
        uint256 numTokens = tokens.length;

        amounts = new uint256[](numTokens);

        for (uint256 i = 0; i < numTokens; ++i) {
            address token = tokens[i];
            uint256 amount = IERC20(token).balanceOf(address(this));
            amounts[i] = amount;
            if (amount > 0) {
                IERC20(token).safeTransfer(msg.sender, amount);
                sent = true;
            }
        }
    }

    ///@dev Guard function to prevent calling with address(0)
    function _getRewardBalance(
        address token
    ) internal view returns (uint256) {
        return token == address(0) ? 0 : IERC20(token).balanceOf(address(this));
    }
}
