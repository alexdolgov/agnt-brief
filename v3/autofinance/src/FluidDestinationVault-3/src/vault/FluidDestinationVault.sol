// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { Errors } from "src/utils/Errors.sol";

import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

import { DestinationVault, IDestinationVault } from "src/vault/DestinationVault.sol";
import { ERC4626DestinationVault } from "src/vault/ERC4626DestinationVault.sol";
import { RewardAdapter } from "src/destinations/adapters/rewards/RewardAdapter.sol";
import { IFluidMerkleDistributor } from "src/interfaces/external/fluid/IFluidMerkleDistributor.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { Roles } from "src/libs/Roles.sol";
import { EnumerableSet } from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";
import { IDistributor } from "src/interfaces/external/merkl/IDistributor.sol";

/**
 * @title Destination Vault to proxy a Fluid 4626 Lending Vault
 *
 * @dev
 *
 * FLUID overview:
 * - Rewards are calculated off-chain and start accruing as soon as assets are deposited in the vault
 * - There is no need of staking to earn rewards
 * - Rewards are claimed from a Merkle Distributor
 * - Claiming rewards params are retrieved off-chain from the FLUID API
 *
 * @dev As the liquidator can't retrieve the off-chain data, we need to manually claim rewards
 * We expose the `claimFromFluidMerkleDistributor` function to allow an external process to claim rewards
 *
 * `collectRewards()` will then return the current balance of TOKEN tokens claimed
 */
contract FluidDestinationVault is ERC4626DestinationVault {
    using SafeERC20 for IERC20Metadata;
    using EnumerableSet for EnumerableSet.AddressSet;

    event RewardTokenAdded(address indexed token);
    event RewardTokensCleared();
    event MerkleDistributorsAdded(address[] distributors);
    event MerkleDistributorsRemoved(address[] distributors);

    error DistributorNotWhitelisted();

    /// @notice Set of reward tokens claimed from merkle distributors
    /// @dev Only tokens that have a balance are added to the array in `claimFromFluidMerkleDistributor()`
    /// @dev Tokens are removed from the array when they are collected in `collectRewards()`
    /// @dev Exposed via `getRewardTokensClaimed()`
    /// @dev Stored as an array to minimize storage reads/writes, as the list is expected to be small.
    address[] private _rewardTokensClaimed;

    /// @notice Whitelist of allowed Merkle distributors
    /// @dev Only Merkle Distributors in this list can be used in `claimFromFluidMerkleDistributor()`
    /// @dev Can be managed via `addMerkleDistributor()` and `removeMerkleDistributor()`
    mapping(address => bool) public merkleDistributorsWhitelist;

    /// @dev Reward tokens that never get cleared, we try every time
    EnumerableSet.AddressSet internal _permRewardTokens;

    constructor(
        ISystemRegistry sysRegistry
    ) ERC4626DestinationVault(sysRegistry) { }

    function getRewardTokensClaimed() public view returns (address[] memory) {
        return _rewardTokensClaimed;
    }

    /// @notice Add Merkle distributors to the whitelist
    /// @dev Allows rewriting the same value
    /// @param distributors The addresses of the Merkle distributors to add
    function addMerkleDistributors(
        address[] calldata distributors
    ) external {
        _ensureCallerIsManager();
        uint256 length = distributors.length;
        for (uint256 i = 0; i < length; ++i) {
            Errors.verifyNotZero(distributors[i], "distributors");
            merkleDistributorsWhitelist[distributors[i]] = true;
        }
        emit MerkleDistributorsAdded(distributors);
    }

    /// @notice Remove Merkle distributors from the whitelist
    /// @dev Allows rewriting the same value
    /// @param distributors The addresses of the Merkle distributors to remove
    function removeMerkleDistributors(
        address[] calldata distributors
    ) external {
        _ensureCallerIsManager();
        uint256 length = distributors.length;
        for (uint256 i = 0; i < length; ++i) {
            Errors.verifyNotZero(distributors[i], "distributors");
            merkleDistributorsWhitelist[distributors[i]] = false;
        }
        emit MerkleDistributorsRemoved(distributors);
    }

    /// @notice Add/remove a token that is permanently claimable
    /// @dev Does not emit state change events.
    /// @dev If a tracked token is later added its on us to remove it from here.
    function togglePermReward(
        address token
    ) external {
        _ensureCallerIsManager();
        if (isTrackedToken(token)) {
            revert Errors.InvalidToken(token);
        }
        Errors.verifyNotZero(token, "token");
        if (!_permRewardTokens.add(token)) {
            // slither-disable-next-line unused-return
            _permRewardTokens.remove(token);
        }
    }

    /// @notice Allow a trusted operator to claim on behalf of this account
    /// @dev Does not emit state change events
    /// @param distributor Token distributor we'll call the fn on
    /// @param trustedOperator Account allowed to claim on behalf of the Destination
    function toggleMerklOperator(address distributor, address trustedOperator) external {
        _ensureCallerIsManager();
        IDistributor(distributor).toggleOperator(address(this), trustedOperator);
    }

    /// @notice Claim TOKEN from the Fluid Merkle Distributor
    /// @dev Params come from the FLUID API (off-chain)
    /// @dev We only check that we claimed something
    /// @dev Rest of params aren't checked and MerkleDistributor will revert if they are invalid
    /// @param distributor_ The FLUID Merkle Distributor address
    /// @param cumulativeAmount_ The cumulative amount of TOKEN to claim
    /// @param positionType_ The position type
    /// @param positionId_ The position ID
    /// @param cycle_ The cycle
    /// @param merkleProof_ The merkle proof
    function claimFromFluidMerkleDistributor(
        address distributor_,
        uint256 cumulativeAmount_,
        uint8 positionType_,
        bytes32 positionId_,
        uint256 cycle_,
        bytes32[] calldata merkleProof_,
        bytes memory metadata_
    ) external {
        if (!merkleDistributorsWhitelist[distributor_]) {
            revert DistributorNotWhitelisted();
        }
        Errors.verifyNotZero(cumulativeAmount_, "cumulativeAmount_");

        IERC20Metadata rewardToken = IERC20Metadata(IFluidMerkleDistributor(distributor_).TOKEN());
        Errors.verifyNotZero(address(rewardToken), "rewardToken");

        _validateAndAddRewardToken(address(rewardToken));

        uint256 tokenBalanceBefore = rewardToken.balanceOf(address(this));
        // purposely ignore returned value here as we will check the balance after the claim
        IFluidMerkleDistributor(distributor_).claim(
            address(this), cumulativeAmount_, positionType_, positionId_, cycle_, merkleProof_, metadata_
        );
        uint256 tokenBalanceAfter = rewardToken.balanceOf(address(this));

        // slither-disable-next-line incorrect-equality
        if (tokenBalanceAfter - tokenBalanceBefore == 0) {
            revert Errors.InsufficientBalance(address(rewardToken));
        }
    }

    /// @notice Returns reward tokens that are attempted claim each time
    function getPermRewardTokens() external view returns (address[] memory) {
        return _permRewardTokens.values();
    }

    /// @inheritdoc IDestinationVault
    function exchangeName() external pure override returns (string memory) {
        return "fluid";
    }

    /// @inheritdoc IDestinationVault
    function poolType() external pure override returns (string memory) {
        return "fToken";
    }

    /// @inheritdoc IDestinationVault
    function destType() external pure override returns (string memory) {
        return "hold";
    }

    /// @inheritdoc DestinationVault
    function _collectRewards() internal virtual override returns (uint256[] memory amounts, address[] memory tokens) {
        address[] memory merklClaimed = _rewardTokensClaimed;
        address[] memory permClaimed = _permRewardTokens.values();

        // Clear the reward tokens array in storage
        delete _rewardTokensClaimed;
        emit RewardTokensCleared();

        uint256 merklNum = merklClaimed.length;
        uint256 permNum = permClaimed.length;

        amounts = new uint256[](merklNum + permNum);
        tokens = new address[](merklNum + permNum);

        _collectTokenArray(0, merklNum, merklClaimed, amounts, tokens);
        _collectTokenArray(merklNum, permNum, permClaimed, amounts, tokens);

        RewardAdapter.emitRewardsClaimed(tokens, amounts);
    }

    function _collectTokenArray(
        uint256 startWriteIx,
        uint256 numTokens,
        address[] memory claimTokens,
        uint256[] memory retAmounts,
        address[] memory retTokens
    ) private {
        for (uint256 i = 0; i < numTokens; ++i) {
            address token = claimTokens[i];
            uint256 amount = IERC20Metadata(token).balanceOf(address(this));
            retTokens[i + startWriteIx] = token;
            retAmounts[i + startWriteIx] = amount;
            if (amount > 0) {
                IERC20Metadata(token).safeTransfer(msg.sender, amount);
            }
        }
    }

    /// @notice Adds a reward token to the list if it's not a tracked token and not already present
    /// @dev These are the "trackedTokens" from the DestinationVault and usually just include the LP token
    /// @dev It would be odd for the LP token to also be a reward token but still have to check
    /// @param rewardToken The address of the reward token to add
    function _validateAndAddRewardToken(
        address rewardToken
    ) private {
        // Skip if the reward token is a tracked token
        if (isTrackedToken(rewardToken)) {
            return;
        }

        uint256 length = _rewardTokensClaimed.length;
        for (uint256 i = 0; i < length; ++i) {
            if (_rewardTokensClaimed[i] == rewardToken) {
                return; // Token already exists, no need to add again
            }
        }
        // Token not found, add it
        _rewardTokensClaimed.push(rewardToken);
        emit RewardTokenAdded(rewardToken);
    }

    function _ensureCallerIsManager() private view {
        if (!accessController.hasRole(Roles.FLUID_DESTINATION_VAULT_MANAGER, msg.sender)) revert Errors.AccessDenied();
    }
}
