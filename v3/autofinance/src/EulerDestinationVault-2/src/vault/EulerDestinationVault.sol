// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { EnumerableSet } from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IMainRewarder } from "src/interfaces/rewarders/IMainRewarder.sol";
import { IBalanceForwarder } from "src/interfaces/external/euler/IBalanceForwarder.sol";
import { ERC4626DestinationVault } from "src/vault/ERC4626DestinationVault.sol";
import { DestinationVault, IDestinationVault } from "src/vault/DestinationVault.sol";
import { Roles } from "src/libs/Roles.sol";
import { Errors } from "src/utils/Errors.sol";
import { EulerRewardLib } from "src/destinations/adapters/rewards/EulerRewardLib.sol";
import { IDistributor } from "src/interfaces/external/merkl/IDistributor.sol";

/// @title EulerDestinationVault
/// @dev This contract integrates with Euler protocol and handles rewards via EulerRewardLib
/// @dev Utilizes EulerRewardLib for reward collection mechanisms:
///      1. Reward Streams: Direct rewards from Euler vault's balanceTracker
///      2. Merkle Distributors: Off-chain verified rewards through Merkle proofs
///
/// @dev Rewards:
///      1. Reward Streams:
///         - Tokens must be registered in `_rewardTokens`
///         - Claims rewards directly from Euler's balanceTracker
///         - Rewards are claimed to the vault address
///
///      2. Merkle Distributors:
///         - Distributors must be whitelisted in `_merkleDistributorsWhitelist`
///         - Each distributor has its own set of whitelisted tokens in `_distributorRewardTokens`
///         - Claims are verified off-chain and executed via `claimMerkleRewards()`
///         - Tracks claimed amounts per distributor/token to prevent double-claiming
///
/// @dev Collection Process:
///      1. `_collectRewards()` collects rewards from both sources:
///         - Collects untransferred rewards from Merkle Distributors
///         - Claims rewards from Reward Streams
///         - Returns arrays containing all rewards (potentially with duplicates)
///         - Handles rEUL unwrapping (with ~80% haircut)
///         - Transfers final amounts to caller
///
/// @dev ⚠️ Important: The reward collection process assumes that the distributor and token lists
///      remain unchanged between `claimMerkleRewards()` and `collectRewards()` calls. Modifying
///      these lists between these calls could lead to:
///      - Missed rewards if distributors/tokens are removed
///      - Incomplete reward collection if new distributors/tokens are added
///      - Potential inconsistencies in the reward tracking
///
/// @dev ⚠️ Important: R_EUL Unwrapping Process
///      - ALL R_EUL balance (both initial and collected) will be unwrapped to EUL
contract EulerDestinationVault is ERC4626DestinationVault {
    using SafeERC20 for IERC20Metadata;
    using EnumerableSet for EnumerableSet.AddressSet;

    event RewardTokensRegistered(address[] tokens);
    event RewardTokensRemoved(address[] tokens);
    event MerkleDistributorsAdded(address[] distributors);
    event MerkleDistributorsRemoved(address[] distributors);
    event DistributorRewardTokensAdded(address indexed distributor, address[] tokens);
    event DistributorRewardTokensRemoved(address indexed distributor, address[] tokens);

    error DistributorNotWhitelisted(address distributor);

    /// @notice Address of the rEuler token for unwrapping
    address public rEulToken;

    /// @notice True if claiming permanent rewards on next cycle or euler merkl/stream
    bool public claimPerm;

    /// @dev Reward tokens that never get cleared, we try every time
    EnumerableSet.AddressSet internal _permRewardTokens;

    struct InitEulerParams {
        /// @notice Address of the rEuler token
        address rEulToken;
    }

    modifier hasEitherRole() {
        if (!_hasRole(Roles.EULER_REWARD_MANAGER, msg.sender) && !_hasRole(Roles.EULER_REWARD_EXECUTOR, msg.sender)) {
            revert Errors.AccessDenied();
        }
        _;
    }

    constructor(
        ISystemRegistry sysRegistry
    ) ERC4626DestinationVault(sysRegistry) { }

    /// @inheritdoc DestinationVault
    function initialize(
        IERC20Metadata baseAsset_,
        IERC20Metadata underlyer_,
        IMainRewarder rewarder_,
        address incentiveCalculator_,
        address[] memory additionalTrackedTokens_,
        bytes memory params_
    ) public virtual override {
        // Enable balance forwarder for the DestinationVault
        IBalanceForwarder(address(underlyer_)).enableBalanceForwarder();

        InitEulerParams memory initParams = abi.decode(params_, (InitEulerParams));
        rEulToken = initParams.rEulToken;
        Errors.verifyNotZero(initParams.rEulToken, "rEulToken");

        // Base class has the initializer() modifier to prevent double-setup
        // If you don't call the base initialize, make sure you protect this call
        super.initialize(baseAsset_, underlyer_, rewarder_, incentiveCalculator_, additionalTrackedTokens_, params_);

        // We can't unwrap partial amounts of rEul so we have to assume whatever our balance is,
        // that entire amount is going towards rewards. Means we can't track and prevent transfer
        if (isTrackedToken(initParams.rEulToken)) {
            revert Errors.InvalidToken(initParams.rEulToken);
        }
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

    /// @inheritdoc IDestinationVault
    function exchangeName() external pure override returns (string memory) {
        return "euler";
    }

    /// @inheritdoc IDestinationVault
    function poolType() external pure override returns (string memory) {
        return "eVault";
    }

    /// @notice Get the list of registered reward tokens
    /// @return tokens Array of registered reward token addresses
    function rewardTokens() external view returns (address[] memory tokens) {
        return EulerRewardLib.getRewardTokens();
    }

    /// @notice Get the amount claimed and transferred from each distributor
    function transferredFromDistributor(address distributor, address token) external view returns (uint256) {
        return EulerRewardLib.load().transferredFromDistributor[distributor][token];
    }

    /// @notice Get the list of reward tokens for a specific distributor
    /// @param distributor The distributor address
    /// @return tokens Array of reward token addresses
    function distributorRewardTokens(
        address distributor
    ) external view returns (address[] memory tokens) {
        return EulerRewardLib.getDistributorRewardTokens(distributor);
    }

    /// @notice Register a new reward tokens
    /// @param tokens The addresses of the reward tokens to register
    function registerRewardTokens(
        address[] memory tokens
    ) external {
        _ensureCallerIsManager();
        EulerRewardLib.registerRewardTokens(_underlying, tokens, address(this));
    }

    /// @notice Remove a reward token
    /// @param tokens The addresses of the reward tokens to remove
    function removeRewardTokens(
        address[] memory tokens
    ) external {
        _ensureCallerIsManager();
        EulerRewardLib.removeRewardTokens(tokens);
    }

    /// @notice Add Merkle distributors to the whitelist
    /// @dev Allows rewriting the same value
    /// @param distributors The addresses of the Merkle distributors to add
    function addMerkleDistributors(
        address[] calldata distributors
    ) external {
        _ensureCallerIsManager();
        EulerRewardLib.addMerkleDistributors(distributors);
    }

    /// @notice Remove Merkle distributors from the whitelist
    /// @dev Allows rewriting the same value
    /// @param distributors The addresses of the Merkle distributors to remove
    function removeMerkleDistributors(
        address[] calldata distributors
    ) external {
        _ensureCallerIsManager();
        EulerRewardLib.removeMerkleDistributors(distributors);
    }

    /// @notice Get the list of whitelisted Merkle distributors
    /// @return distributors Array of whitelisted distributor addresses
    function merkleDistributorsWhitelist() external view returns (address[] memory distributors) {
        return EulerRewardLib.getMerkleDistributorsWhitelist();
    }

    /// @notice Check if a distributor is whitelisted
    /// @param distributor The distributor address to check
    /// @return isWhitelisted True if the distributor is whitelisted
    function isMerkleDistributorWhitelisted(
        address distributor
    ) external view returns (bool isWhitelisted) {
        return EulerRewardLib.isMerkleDistributorWhitelisted(distributor);
    }

    /// @notice Add reward tokens for a specific distributor
    /// @param distributor The distributor address
    /// @param tokens The reward tokens to add
    function addDistributorRewardTokens(address distributor, address[] calldata tokens) external hasEitherRole {
        EulerRewardLib.addDistributorRewardTokens(distributor, tokens);
    }

    /// @notice Remove reward tokens for a specific distributor
    /// @param distributor The distributor address
    /// @param tokens The reward tokens to remove
    function removeDistributorRewardTokens(address distributor, address[] calldata tokens) external hasEitherRole {
        EulerRewardLib.removeDistributorRewardTokens(distributor, tokens);
    }

    /// @notice Claim given rewards from the Merkle Distributor
    /// @dev Params come off-chain
    /// @dev We only check that we claimed something
    /// @dev Rest of params aren't checked and Merkle Distributor will revert if they are invalid
    /// @param distributor The Merkle Distributor address
    /// @param tokens The reward tokens to claim
    /// @param amounts The amounts to claim
    /// @param proofs The merkle proofs
    function claimMerkleRewards(
        address distributor,
        address[] calldata tokens,
        uint256[] calldata amounts,
        bytes32[][] calldata proofs
    ) external hasRole(Roles.EULER_REWARD_EXECUTOR) {
        EulerRewardLib.claimMerkleRewards(distributor, tokens, amounts, proofs);
    }

    /// @notice Returns reward tokens that are attempted claim each time
    function getPermRewardTokens() external view returns (address[] memory) {
        return _permRewardTokens.values();
    }

    /// @inheritdoc DestinationVault
    /// @dev Permanent rewards are just tokens we always try to claim because we get them from Merkl
    /// @dev We toggle between claiming permanent rewards and euler-merkl/stream rewards.
    /// @dev In the event we try to claim permanent rewards and we don't sent send anything, try euler-merkl/stream
    function _collectRewards() internal override returns (uint256[] memory amounts, address[] memory tokens) {
        bool cp = claimPerm;
        bool permSent = false;
        if (cp) {
            (amounts, tokens, permSent) = _claimPermRewards();
        }

        if (!cp || !permSent) {
            // slither-disable-next-line unused-return
            (amounts, tokens) = EulerRewardLib.collectRewards(_underlying, rEulToken);
        }

        claimPerm = !cp;
    }

    function _claimPermRewards() private returns (uint256[] memory amounts, address[] memory tokens, bool sent) {
        tokens = _permRewardTokens.values();
        uint256 numTokens = tokens.length;

        amounts = new uint256[](numTokens);

        for (uint256 i = 0; i < numTokens; ++i) {
            address token = tokens[i];
            uint256 amount = IERC20Metadata(token).balanceOf(address(this));
            amounts[i] = amount;
            if (amount > 0) {
                IERC20Metadata(token).safeTransfer(msg.sender, amount);
                sent = true;
            }
        }
    }

    /// @dev Revert if caller isn't EULER_REWARD_MANAGER
    function _ensureCallerIsManager() private view {
        if (!accessController.hasRole(Roles.EULER_REWARD_MANAGER, msg.sender)) revert Errors.AccessDenied();
    }
}
