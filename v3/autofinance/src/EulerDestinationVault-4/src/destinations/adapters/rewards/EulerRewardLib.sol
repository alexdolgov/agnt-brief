// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { EnumerableSet } from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";
import { IBalanceForwarder } from "src/interfaces/external/euler/IBalanceForwarder.sol";
import { ERC20WrapperLocked } from "src/interfaces/external/euler/ERC20WrapperLocked.sol";
import { IRewardStreams } from "src/interfaces/external/euler/IRewardStreams.sol";
import { IDistributor } from "src/interfaces/external/merkl/IDistributor.sol";
import { RewardAdapter } from "src/destinations/adapters/rewards/RewardAdapter.sol";
import { Errors } from "src/utils/Errors.sol";

struct EulerRewardsState {
    /// @notice Whitelist of allowed Merkle distributors
    /// @dev Only Merkle Distributors in this list can be used in `claimMerkleRewards()`
    /// @dev Can be managed via `addMerkleDistributor()` and `removeMerkleDistributor()`
    EnumerableSet.AddressSet merkleDistributorsWhitelist;
    /// @notice This is the list of token we claim from reward streams
    /// @dev Tokens from this list are used in `_collectRewards()`
    /// @dev Can be managed via `registerRewardTokens()` and `removeRewardTokens()`
    EnumerableSet.AddressSet rewardTokens;
    /// @notice Mapping of distributor to its reward tokens
    /// @dev Tokens from this mapping can be used in `_collectRewards()`
    mapping(address => EnumerableSet.AddressSet) distributorRewardTokens;
    /// @notice Mapping to track amounts claimed and transferred from each distributor
    /// @dev distributor => token => amount transferred away
    mapping(address => mapping(address => uint256)) transferredFromDistributor;
}

/// @title EulerRewardLib
/// @dev Library for managing Euler reward tokens and distributors registries
/// Handles operations for:
/// 1. Reward tokens registry
/// 2. Merkle distributors whitelist
/// 3. Distributor reward tokens mapping
library EulerRewardLib {
    using SafeERC20 for IERC20Metadata;
    using EnumerableSet for EnumerableSet.AddressSet;

    // keccak256(abi.encode(uint256(keccak256("autopilot.storage.EulerRewardLib")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant SLOT = 0x9d55ea5b7a7418c36503256759046f7115a07811ba5c4c0c21a8a405c9cbbc00;

    event RewardTokensRegistered(address[] tokens);
    event RewardTokensRemoved(address[] tokens);
    event MerkleDistributorsAdded(address[] distributors);
    event MerkleDistributorsRemoved(address[] distributors);
    event DistributorRewardTokensAdded(address indexed distributor, address[] tokens);
    event DistributorRewardTokensRemoved(address indexed distributor, address[] tokens);

    error DistributorNotWhitelisted(address distributor);

    function load() internal pure returns (EulerRewardsState storage $) {
        // slither-disable-start assembly
        // solhint-disable-next-line no-inline-assembly
        assembly {
            $.slot := SLOT
        }
        // slither-disable-end assembly
    }

    //--------------------------------------------------------------------------
    // Registry Management Functions
    //--------------------------------------------------------------------------

    /// @notice Register reward tokens
    /// @param underlying The underlying asset address
    /// @param tokens The tokens to register
    /// @param caller The address of the calling contract
    function registerRewardTokens(address underlying, address[] memory tokens, address caller) external {
        EnumerableSet.AddressSet storage rewardTokens = load().rewardTokens;

        IRewardStreams balanceTracker = IRewardStreams(IBalanceForwarder(underlying).balanceTrackerAddress());
        uint256 nTokens = tokens.length;

        for (uint256 i = 0; i < nTokens; ++i) {
            address token = tokens[i];

            bool enabledOrEarned = balanceTracker.isRewardEnabled(caller, underlying, token)
                || balanceTracker.earnedReward(caller, underlying, token, false) > 0;

            if (!(enabledOrEarned && rewardTokens.add(token))) {
                tokens[i] = address(0);
            }
        }

        emit RewardTokensRegistered(tokens);
    }

    /// @notice Remove reward tokens
    /// @param tokens The tokens to remove
    function removeRewardTokens(
        address[] memory tokens
    ) external {
        _removeFromSetAndZeroSkips(load().rewardTokens, tokens);
        emit RewardTokensRemoved(tokens);
    }

    /// @notice Add distributors to whitelist
    /// @param distributors The distributors to add
    function addMerkleDistributors(
        address[] memory distributors
    ) external {
        EnumerableSet.AddressSet storage merkleDistributorsWhitelist = load().merkleDistributorsWhitelist;
        uint256 nDistributors = distributors.length;
        for (uint256 i = 0; i < nDistributors; ++i) {
            Errors.verifyNotZero(distributors[i], "distributors");
            if (!merkleDistributorsWhitelist.add(distributors[i])) {
                distributors[i] = address(0);
            }
        }
        emit MerkleDistributorsAdded(distributors);
    }

    /// @notice Remove distributors from whitelist
    /// @param distributors The distributors to remove
    function removeMerkleDistributors(
        address[] memory distributors
    ) external {
        EulerRewardsState storage $ = load();

        uint256 nDistributors = distributors.length;
        for (uint256 i = 0; i < nDistributors; ++i) {
            address distributor = distributors[i];
            Errors.verifyNotZero(distributor, "distributors");

            // Remove distributor from whitelist
            // slither-disable-next-line unused-return
            $.merkleDistributorsWhitelist.remove(distributor);

            // Clear all tokens associated with this distributor
            address[] memory tokens = $.distributorRewardTokens[distributor].values();
            emit DistributorRewardTokensRemoved(distributor, tokens);

            delete $.distributorRewardTokens[distributor];
        }
        emit MerkleDistributorsRemoved(distributors);
    }

    /// @notice Add reward tokens for a specific distributor
    /// @param distributor The distributor address
    /// @param tokens The reward tokens to add
    function addDistributorRewardTokens(address distributor, address[] memory tokens) external {
        EulerRewardsState storage $ = load();

        _verifyValidDistributor($, distributor);

        uint256 nTokens = tokens.length;

        for (uint256 i = 0; i < nTokens; ++i) {
            Errors.verifyNotZero(tokens[i], "tokens");
            if (!$.distributorRewardTokens[distributor].add(tokens[i])) {
                tokens[i] = address(0);
            }
        }

        emit DistributorRewardTokensAdded(distributor, tokens);
    }

    /// @notice Remove reward tokens for a specific distributor
    /// @param distributor The distributor address
    /// @param tokens The reward tokens to remove
    function removeDistributorRewardTokens(address distributor, address[] memory tokens) external {
        EulerRewardsState storage $ = load();

        _verifyValidDistributor($, distributor);

        _removeFromSetAndZeroSkips($.distributorRewardTokens[distributor], tokens);

        emit DistributorRewardTokensRemoved(distributor, tokens);
    }

    /// @notice Check if a distributor is whitelisted
    /// @param distributor The distributor address to check
    /// @return isWhitelisted True if the distributor is whitelisted
    function isMerkleDistributorWhitelisted(
        address distributor
    ) external view returns (bool isWhitelisted) {
        return load().merkleDistributorsWhitelist.contains(distributor);
    }

    /// @notice Get the list of whitelisted distributors
    /// @return distributors Array of whitelisted distributor addresses
    function getMerkleDistributorsWhitelist() external view returns (address[] memory distributors) {
        return load().merkleDistributorsWhitelist.values();
    }

    /// @notice Get the list of reward tokens
    /// @return tokens Array of reward token addresses
    function getRewardTokens() external view returns (address[] memory tokens) {
        return load().rewardTokens.values();
    }

    /// @notice Get the list of reward tokens for a specific distributor
    /// @param distributor The distributor address
    /// @return tokens Array of reward token addresses
    function getDistributorRewardTokens(
        address distributor
    ) external view returns (address[] memory tokens) {
        return load().distributorRewardTokens[distributor].values();
    }

    //--------------------------------------------------------------------------
    // Reward Collection Functions
    //--------------------------------------------------------------------------

    /// @notice Claim rewards from the Merkle Distributor
    /// @param distributor The Merkle Distributor address
    /// @param tokens The reward tokens to claim
    /// @param amounts The amounts to claim
    /// @param proofs The merkle proofs
    function claimMerkleRewards(
        address distributor,
        address[] calldata tokens,
        uint256[] calldata amounts,
        bytes32[][] calldata proofs
    ) external {
        EulerRewardsState storage $ = load();

        _verifyValidDistributor($, distributor);

        // Distributor takes care of all non-zero and length validation
        uint256 nTokens = tokens.length;

        address[] memory users = new address[](nTokens);

        for (uint256 i = 0; i < nTokens; ++i) {
            if (!$.distributorRewardTokens[distributor].contains(tokens[i])) {
                revert Errors.InvalidToken(tokens[i]);
            }
            users[i] = address(this);
        }

        // Claim rewards
        IDistributor(distributor).claim(users, tokens, amounts, proofs);
    }

    /// @notice Collect rewards from both Reward Streams and Merkle Distributors
    /// @param underlying Address of the underlying asset
    /// @param rEulToken Address of the rEuler token
    /// @return collectedAmounts Amounts of rewards collected
    /// @return collectedTokens Addresses of reward tokens collected
    function collectRewards(
        address underlying,
        address rEulToken
    ) external returns (uint256[] memory collectedAmounts, address[] memory collectedTokens) {
        EulerRewardsState storage $ = load();

        // Calculate array sizes

        address[] memory rewardTokens = $.rewardTokens.values();
        uint256 rewardTokensLength = rewardTokens.length;
        uint256 distributorsRewardTokensLength = _getDistributorsRewardTokensLength($);
        uint256 totalLength = rewardTokensLength + distributorsRewardTokensLength;

        collectedTokens = new address[](totalLength + 1);
        collectedAmounts = new uint256[](totalLength + 1);

        // Collect Merkl Rewards

        bool haveREUL = _collectMerkleRewards($, rEulToken, collectedTokens, collectedAmounts);

        // Collect Stream Rewards

        IRewardStreams balanceTracker = IRewardStreams(IBalanceForwarder(underlying).balanceTrackerAddress());

        for (uint256 i = 0; i < rewardTokensLength; ++i) {
            // Claim to sender if we don't have to rEul unwrap
            uint256 amountClaimed = balanceTracker.claimReward(
                underlying, rewardTokens[i], rewardTokens[i] != rEulToken ? msg.sender : address(this), false
            );
            if (rewardTokens[i] != rEulToken) {
                collectedTokens[distributorsRewardTokensLength + i] = rewardTokens[i];
                collectedAmounts[distributorsRewardTokensLength + i] = amountClaimed;
            } else {
                if (amountClaimed > 0) {
                    haveREUL = true;
                }
            }
        }

        // Process rEUL

        if (haveREUL) {
            (collectedTokens[totalLength], collectedAmounts[totalLength]) = _unwrapREul(ERC20WrapperLocked(rEulToken));
        }

        RewardAdapter.emitRewardsClaimed(collectedTokens, collectedAmounts);
    }

    /// @notice Collect rewards from Merkle Distributors
    /// @param $ Data state
    /// @param collectedTokens Array to fill with collected token addresses - updated by reference
    /// @param collectedAmounts Array to fill with collected token amounts - updated by reference
    function _collectMerkleRewards(
        EulerRewardsState storage $,
        address rEULToken,
        address[] memory collectedTokens,
        uint256[] memory collectedAmounts
    ) private returns (bool haveREUL) {
        address[] memory distributors = $.merkleDistributorsWhitelist.values();
        uint256 nDistributors = distributors.length;
        uint256 count;

        for (uint256 i = 0; i < nDistributors; ++i) {
            address[] memory distributorTokens = $.distributorRewardTokens[distributors[i]].values();
            uint256 nDistributorTokens = distributorTokens.length;

            for (uint256 j = 0; j < nDistributorTokens; ++j) {
                IDistributor.Claim memory claim =
                    IDistributor(distributors[i]).claimed(address(this), distributorTokens[j]);

                uint256 untransferred = 0;
                if (claim.amount > 0) {
                    uint256 transferred = $.transferredFromDistributor[distributors[i]][distributorTokens[j]];

                    untransferred = claim.amount - transferred;
                    $.transferredFromDistributor[distributors[i]][distributorTokens[j]] = transferred + untransferred;
                }

                if (untransferred > 0) {
                    if (rEULToken != distributorTokens[j]) {
                        collectedTokens[count] = distributorTokens[j];
                        collectedAmounts[count] = untransferred;
                        IERC20Metadata(distributorTokens[j]).safeTransfer(msg.sender, untransferred);
                    } else {
                        haveREUL = true;
                    }
                }
                ++count;
            }
        }
    }

    /// @notice Unwrap rEUL to EUL
    /// @param rEulContract Address of the rEUL token
    /// @return eulToken The EUL token
    /// @return eulUnlocked Amount of EUL unlocked from rEUL
    function _unwrapREul(
        ERC20WrapperLocked rEulContract
    ) private returns (address eulToken, uint256 eulUnlocked) {
        eulToken = rEulContract.underlying();
        uint256 eulBalanceBefore = IERC20Metadata(eulToken).balanceOf(msg.sender);

        // we unlock all given lock timestamps, securing at least 20% of the R_EUL balance
        // Send directly to the caller
        // slither-disable-next-line unused-return
        rEulContract.withdrawToByLockTimestamps(
            msg.sender, rEulContract.getLockedAmountsLockTimestamps(address(this)), true
        );

        // Calculate the amount of EUL unlocked
        eulUnlocked = IERC20Metadata(eulToken).balanceOf(msg.sender) - eulBalanceBefore;
    }

    /// @notice Get the total length of reward tokens across all distributors
    /// @param $ Data state
    /// @return totalLength The total length of reward tokens across all distributors
    function _getDistributorsRewardTokensLength(
        EulerRewardsState storage $
    ) private view returns (uint256 totalLength) {
        uint256 nDistributors = $.merkleDistributorsWhitelist.length();
        for (uint256 i = 0; i < nDistributors; ++i) {
            totalLength += $.distributorRewardTokens[$.merkleDistributorsWhitelist.at(i)].length();
        }
    }

    /// @notice Remove the given items from the set zero'ing any items that were skipped in the original array
    function _removeFromSetAndZeroSkips(EnumerableSet.AddressSet storage set, address[] memory toRemove) private {
        uint256 nTokens = toRemove.length;

        for (uint256 i = 0; i < nTokens; ++i) {
            Errors.verifyNotZero(toRemove[i], "remove");
            if (!set.remove(toRemove[i])) {
                toRemove[i] = address(0);
            }
        }
    }

    /// @notice Reverts if distributor isn't in our list
    function _verifyValidDistributor(EulerRewardsState storage $, address distributor) private view {
        if (!$.merkleDistributorsWhitelist.contains(distributor)) {
            revert DistributorNotWhitelisted(distributor);
        }
    }
}
