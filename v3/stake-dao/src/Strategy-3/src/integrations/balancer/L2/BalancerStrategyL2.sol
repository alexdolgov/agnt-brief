// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {ILiquidityGauge, IL2LiquidityGauge} from "@interfaces/curve/ILiquidityGauge.sol";
import {IMinter} from "@interfaces/curve/IMinter.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";

import "src/Strategy.sol";

import {IRewardVault} from "src/interfaces/IRewardVault.sol";
import {IRewardReceiver} from "src/interfaces/IRewardReceiver.sol";
import {IFactory} from "src/interfaces/IFactory.sol";

/// @title BalancerStrategyL2.
/// @author Stake DAO
/// @custom:github @stake-dao
/// @custom:contact contact@stakedao.org

/// @notice BalancerStrategyL2 is a specialized implementation for interacting with Balancer protocol gauges on Layer 2 networks.
///
///         Key differences from mainnet BalancerStrategy:
///         - No MINTER immutable - uses gauge.factory() as the minter
///         - Includes extra rewards claiming functionality via claim_rewards()
///         - Auto-claims extra rewards in _harvest() instead of separate claimExtraRewards()
contract BalancerStrategyL2 is Strategy {
    using SafeCast for uint256;

    //////////////////////////////////////////////////////
    // --- CONSTANTS & IMMUTABLES
    //////////////////////////////////////////////////////

    /// @notice The bytes4 ID of the Balancer protocol
    /// @dev Used to identify the Balancer protocol in the registry
    bytes4 private constant BALANCER_PROTOCOL_ID = bytes4(keccak256("BALANCER"));

    /// @notice Error thrown when the mint fails.
    error MintFailed();

    /// @notice Error thrown when the checkpoint fails.
    error CheckpointFailed();

    /// @notice Error thrown when the extra rewards claim fails.
    error ClaimExtraRewards();

    //////////////////////////////////////////////////////
    // --- CONSTRUCTOR
    //////////////////////////////////////////////////////

    /// @notice Initializes the BalancerStrategyL2 contract
    /// @param _registry The address of the protocol controller registry
    /// @param _accountant The address of the accountant contract
    /// @param _locker The address of the locker contract
    /// @param _gateway The address of the gateway contract
    constructor(address _registry, address _accountant, address _locker, address _gateway)
        Strategy(_registry, BALANCER_PROTOCOL_ID, _accountant, _locker, _gateway)
    {}

    //////////////////////////////////////////////////////
    // --- INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////

    /// @notice Syncs and calculates pending rewards from a Balancer gauge
    /// @dev Retrieves allocation targets and calculates pending rewards for each target
    /// @param gauge The address of the Balancer gauge to sync
    /// @return pendingRewards A struct containing the total and fee subject pending rewards
    function _checkpointRewards(address gauge) internal override returns (PendingRewards memory pendingRewards) {
        /// On Balancer L2s, the minter is the bal_pseudo_minter.
        address minter = IL2LiquidityGauge(gauge).bal_pseudo_minter();
        address allocator = PROTOCOL_CONTROLLER.allocator(PROTOCOL_ID);

        address[] memory targets = IAllocator(allocator).getAllocationTargets(gauge);

        /// @dev Checkpoint the locker
        require(
            _executeTransaction(gauge, abi.encodeWithSignature("user_checkpoint(address)", LOCKER)), CheckpointFailed()
        );

        uint256 pendingRewardsAmount;
        for (uint256 i = 0; i < targets.length; i++) {
            address target = targets[i];

            if (target == LOCKER) {
                // Calculate pending rewards for the locker by comparing  total earned by gauge with already minted tokens
                pendingRewardsAmount =
                    ILiquidityGauge(gauge).integrate_fraction(LOCKER) - IMinter(minter).minted(LOCKER, gauge);

                pendingRewards.feeSubjectAmount += pendingRewardsAmount.toUint128();
            } else {
                // For sidecar contracts, use their getPendingRewards() function
                pendingRewardsAmount = ISidecar(target).getPendingRewards();
            }

            pendingRewards.totalAmount += pendingRewardsAmount.toUint128();
        }
    }

    /// @notice Deposits tokens into a Balancer gauge
    /// @dev Executes a deposit transaction through the gateway/module manager
    /// @param gauge The address of the Balancer gauge to deposit into
    /// @param amount The amount of tokens to deposit
    function _deposit(address, address gauge, uint256 amount) internal override {
        bytes memory data = abi.encodeWithSignature("deposit(uint256)", amount);
        require(_executeTransaction(gauge, data), DepositFailed());
    }

    /// @notice Withdraws tokens from a Balancer gauge
    /// @dev Executes a withdraw transaction through the gateway/module manager
    /// @param gauge The address of the Balancer gauge to withdraw from
    /// @param amount The amount of tokens to withdraw
    /// @param receiver The address that will receive the withdrawn tokens
    function _withdraw(address asset, address gauge, uint256 amount, address receiver) internal override {
        bytes memory data = abi.encodeWithSignature("withdraw(uint256)", amount);
        require(_executeTransaction(gauge, data), WithdrawFailed());

        // 2. Transfer the LP tokens to receiver
        data = abi.encodeWithSignature("transfer(address,uint256)", receiver, amount);
        require(_executeTransaction(asset, data), TransferFailed());
    }

    /// @notice Harvests rewards from a Balancer gauge
    /// @param gauge The address of the Balancer gauge to harvest from
    function _harvestLocker(address gauge, bytes memory) internal override returns (uint256 rewardAmount) {
        /// On Balancer L2s, the minter is the bal_pseudo_minter.
        address minter = IL2LiquidityGauge(gauge).bal_pseudo_minter();

        /// 1. Snapshot the balance before minting.
        uint256 _before = IERC20(REWARD_TOKEN).balanceOf(address(LOCKER));

        /// @dev Locker is deployed on mainnet.
        /// @dev If the locker is the gateway, we need to mint the rewards via the gateway
        /// as it means the strategy is deployed on sidechain.
        if (LOCKER != GATEWAY) {
            /// 2. Mint the rewards of the gauge to the locker.
            IMinter(minter).mint_for(gauge, address(LOCKER));
        } else {
            /// 2. Mint the rewards of the gauge to the locker via the gateway.
            /// @dev On Balancer L2, mint() may revert when there are no pending rewards.
            ///      We don't require success — just check the balance diff below.
            bytes memory data = abi.encodeWithSignature("mint(address)", gauge);
            _executeTransaction(minter, data);
        }

        /// 3. Calculate the reward amount.
        rewardAmount = IERC20(REWARD_TOKEN).balanceOf(address(LOCKER)) - _before;
    }

    /// @notice Override base _harvest to trigger reward distribution after all claims
    /// @dev This ensures both gauge and sidecar rewards are distributed together on L2s
    function _harvest(address gauge, bytes memory extraData, bool deferRewards)
        internal
        override
        returns (IStrategy.PendingRewards memory pendingRewards)
    {
        // Sync reward tokens if new ones were added to the gauge
        _syncRewardTokensIfNeeded(gauge);

        // Call parent harvest which handles both locker and sidecar claims
        pendingRewards = super._harvest(gauge, extraData, deferRewards);

        /// Claim extra rewards from the gauge on Locker side.
        _claimExtraRewards(gauge);

        return pendingRewards;
    }

    /// @notice Claims extra rewards from a Balancer gauge
    /// @dev This function is called after the main rewards have been claimed
    function _claimExtraRewards(address gauge) internal {
        /// 1. Get the reward receiver address.
        address rewardReceiver = PROTOCOL_CONTROLLER.rewardReceiver(gauge);

        /// 2. Claim extra rewards from the gauge to the reward receiver.
        /// @dev On Balancer L2, claim_rewards may fail when there are no claimable rewards.
        bytes memory data =
            abi.encodeWithSignature("claim_rewards(address,address)", address(LOCKER), address(rewardReceiver));
        _executeTransaction(gauge, data);

        address rewardVault = PROTOCOL_CONTROLLER.vault(gauge);
        address[] memory rewardTokens = IRewardVault(rewardVault).getRewardTokens();

        if (rewardTokens.length == 0) {
            return;
        }

        /// 4. Trigger distribute in the reward receiver.
        IRewardReceiver(rewardReceiver).distributeRewards();
    }

    /// @notice Syncs reward tokens with the factory if needed
    /// @dev Calls the factory to check and add any new reward tokens from the gauge
    function _syncRewardTokensIfNeeded(address gauge) internal {
        address factoryAddress = PROTOCOL_CONTROLLER.factory(PROTOCOL_ID);

        // Only sync if factory is set
        if (factoryAddress != address(0)) {
            IFactory(factoryAddress).syncRewardTokens(gauge);
        }
    }
}
