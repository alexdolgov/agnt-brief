// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {Clones} from "@openzeppelin/contracts/proxy/Clones.sol";
import {ILiquidityGauge} from "@interfaces/curve/ILiquidityGauge.sol";

import {ProtocolContext} from "src/ProtocolContext.sol";

import {IStrategy} from "@interfaces/stake-dao/IStrategyV2.sol";
import {IRewardReceiver} from "src/interfaces/IRewardReceiver.sol";
import {ICurveFactory} from "src/interfaces/IFactoryWithSidecar.sol";
import {ConvexSidecar} from "src/integrations/curve/ConvexSidecar.sol";
import {OnlyBoostAllocator} from "src/integrations/curve/OnlyBoostAllocator.sol";
import {ConvexSidecarFactory} from "src/integrations/curve/ConvexSidecarFactory.sol";

/// @title RewardReceiverMigrationModule.
/// @author Stake DAO
/// @custom:github @stake-dao
/// @custom:contact contact@stakedao.org

/// @notice RewardReceiverMigrationModule is a module that migrates the reward receiver from a legacy reward receiver to a new reward receiver.
contract RewardReceiverMigrationModule is ProtocolContext {
    /// @notice Cache struct to avoid stack too deep errors.
    struct Cache {
        address vault;
        address strategy;
        address allocator;
        address rewardReceiver;
        address sidecarFactory;
        address sidecar;
        address asset;
        address factory;
        address newRewardReceiverImplementation;
    }

    /// @notice The reward router address.
    address public immutable REWARD_ROUTER;

    /// @notice The old Convex sidecar factory address.
    address public immutable OLD_SIDECAR_FACTORY;

    /// @notice The new Convex sidecar factory address.
    address public immutable NEW_SIDECAR_FACTORY;

    /// @notice Error thrown when the set reward receiver fails.
    error SetRewardReceiverFailed();

    /// @notice Error thrown when the set locker only fails.
    error SetLockerOnlyFailed();

    /// @notice Error thrown when the curve factory does not point to the expected sidecar factory.
    error UnexpectedSidecarFactory(address expected, address actual);

    /// @notice Emitted when the migration is completed.
    event MigrationCompleted(
        address indexed vault, address indexed gauge, address newSidecar, address newRewardReceiver
    );

    constructor(
        bytes4 _protocolId,
        address _protocolController,
        address _accountant,
        address _locker,
        address _gateway,
        address _rewardRouter,
        address _oldSidecarFactory,
        address _newSidecarFactory
    ) ProtocolContext(_protocolId, _protocolController, _accountant, _locker, _gateway) {
        REWARD_ROUTER = _rewardRouter;
        OLD_SIDECAR_FACTORY = _oldSidecarFactory;
        NEW_SIDECAR_FACTORY = _newSidecarFactory;
    }

    /// @notice Migrates the reward receiver for a given gauge.
    /// @dev Because the old ConvexSidecar implementation use reward receiver address as immutable argument, we need to migrate sidecar as well.
    function migrate(address gauge) external {
        /// 0a. Cache the required addresses to avoid stack too deep errors.
        address factory = PROTOCOL_CONTROLLER.factory(PROTOCOL_ID);
        Cache memory cache = Cache({
            vault: PROTOCOL_CONTROLLER.vault(gauge),
            strategy: PROTOCOL_CONTROLLER.strategy(PROTOCOL_ID),
            allocator: PROTOCOL_CONTROLLER.allocator(PROTOCOL_ID),
            rewardReceiver: PROTOCOL_CONTROLLER.rewardReceiver(gauge),
            sidecarFactory: ICurveFactory(factory).CONVEX_SIDECAR_FACTORY(),
            sidecar: ConvexSidecarFactory(OLD_SIDECAR_FACTORY).sidecar(gauge),
            asset: PROTOCOL_CONTROLLER.asset(gauge),
            factory: factory,
            newRewardReceiverImplementation: ICurveFactory(factory).REWARD_RECEIVER_IMPLEMENTATION()
        });

        require(
            cache.sidecarFactory == NEW_SIDECAR_FACTORY,
            UnexpectedSidecarFactory(NEW_SIDECAR_FACTORY, cache.sidecarFactory)
        );

        address legacyRewardReceiver = _getLegacyRewardReceiver(cache.rewardReceiver);
        bytes memory data = abi.encodePacked(cache.vault, legacyRewardReceiver, REWARD_ROUTER);

        /// 0b. Check if the migration is possible.
        if (_isAlreadyMigrated(gauge, cache.factory, cache.newRewardReceiverImplementation, data)) return;

        /// 1a. Flush residual rewards if the old sidecar is not zero address.
        uint256 pid;
        address newSidecar;
        if (cache.sidecar != address(0)) {
            /// 1b. Flush residual rewards using `ConvexSidecar.claimExtraRewards()`
            ConvexSidecar(cache.sidecar).claimExtraRewards();

            /// 1c. Cache the pid.
            pid = ConvexSidecar(cache.sidecar).pid();

            /// 1d. Freeze Convex allocations using `OnlyBoostAllocator.setLockerOnly(gauge, true)`
            require(
                _executeTransaction(
                    address(cache.allocator),
                    abi.encodeWithSelector(OnlyBoostAllocator.setLockerOnly.selector, gauge, true)
                ),
                SetLockerOnlyFailed()
            );

            /// 1e. Rebalance the strategy to drain the old sidecar.
            IStrategy(cache.strategy).rebalance(gauge);

            /// 1f. Disable old sidecar in the ProtocolController using `removeValidAllocationTarget(gauge, oldSidecar)`
            PROTOCOL_CONTROLLER.removeValidAllocationTarget(gauge, cache.sidecar);

            /// 1g. Deploy new sidecar using `ConvexSidecarFactory.create(gauge, abi.encode(pid))` using the new ConvexSidecarFactory contract
            newSidecar = ConvexSidecarFactory(cache.sidecarFactory).sidecar(gauge);

            if (newSidecar == address(0)) {
                newSidecar = ConvexSidecarFactory(cache.sidecarFactory).create(gauge, abi.encode(pid));
            }

            /// 1i. Reenable Convex allocations using `OnlyBoostAllocator.setLockerOnly(gauge, false)`
            require(
                _executeTransaction(
                    address(cache.allocator),
                    abi.encodeWithSelector(OnlyBoostAllocator.setLockerOnly.selector, gauge, false)
                ),
                SetLockerOnlyFailed()
            );

            /// 1j. Repopulate the new sidecar using `Strategy.rebalance(gauge)`
            IStrategy(cache.strategy).rebalance(gauge);
        }

        /// 2 Generate a deterministic salt based on the initialization data.
        bytes32 salt = keccak256(data);

        /// 2b. Clone the reward receiver implementation with the initialization data.
        address newRewardReceiver =
            Clones.cloneDeterministicWithImmutableArgs(cache.newRewardReceiverImplementation, data, salt);

        /// 3. Update the reward receiver in the ProtocolController.
        PROTOCOL_CONTROLLER.registerVault(gauge, cache.vault, cache.asset, newRewardReceiver, PROTOCOL_ID);

        /// 4. Set the reward receiver for the gauge.
        _setRewardReceiver(gauge, newRewardReceiver);

        /// 5. Emit the migration completed event.
        emit MigrationCompleted(cache.vault, gauge, newSidecar, newRewardReceiver);
    }

    /// @notice Checks if the migration is possible.
    /// @dev The migration is onlu possible if the gauge was not already migrated.
    /// It should not revert. This function is used in the Factory to migrate before syncing extra rewards.
    function _isAlreadyMigrated(
        address gauge,
        address factory,
        address newRewardReceiverImplementation,
        bytes memory data
    ) internal view returns (bool) {
        return PROTOCOL_CONTROLLER.rewardReceiver(gauge)
                == getRewardReceiverAddress(newRewardReceiverImplementation, factory, data)
            || PROTOCOL_CONTROLLER.rewardReceiver(gauge)
                == getRewardReceiverAddress(newRewardReceiverImplementation, address(this), data);
    }

    /// @notice Computes the reward receiver address for a given deployer and data.
    /// @param deployer The deployer of the reward receiver (factory or module).
    /// @return rewardReceiver The address of the reward receiver.
    function getRewardReceiverAddress(address newRewardReceiverImplementation, address deployer, bytes memory data)
        internal
        pure
        returns (address rewardReceiver)
    {
        bytes32 salt = keccak256(data);
        return
            Clones.predictDeterministicAddressWithImmutableArgs(newRewardReceiverImplementation, data, salt, deployer);
    }

    /// @notice Computes the legacy reward receiver address for a given current reward receiver.
    /// @param current The current reward receiver address.
    /// @return legacy The legacy reward receiver address.
    function _getLegacyRewardReceiver(address current) internal view returns (address legacy) {
        if (current == address(0)) return current;

        try IRewardReceiver(current).legacyRewardReceiver() returns (address _legacy) {
            legacy = _legacy;
        } catch {
            return current;
        }
    }

    /// @notice Sets the reward receiver for a gauge.
    /// @param _gauge The gauge to set the reward receiver for.
    /// @param _rewardReceiver The reward receiver to set.
    function _setRewardReceiver(address _gauge, address _rewardReceiver) internal {
        /// Set _rewardReceiver as the reward receiver on the gauge.
        bytes memory data = abi.encodeWithSignature("set_rewards_receiver(address)", _rewardReceiver);
        require(_executeTransaction(_gauge, data), SetRewardReceiverFailed());
    }
}
