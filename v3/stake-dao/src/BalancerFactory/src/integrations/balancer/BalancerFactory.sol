// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IStrategy as IStrategyV1} from "@interfaces/stake-dao/IStrategy.sol";
import {ILiquidityGauge} from "@interfaces/curve/ILiquidityGauge.sol";
import {IGaugeController} from "@interfaces/curve/IGaugeController.sol";
import {IAuraBooster} from "@interfaces/aura/IAuraBooster.sol";
import {BalancerLocker, BalancerProtocol} from "@address-book/src/BalancerEthereum.sol";

import {Factory} from "src/Factory.sol";
import {IRewardVault} from "src/interfaces/IRewardVault.sol";
import {ISidecarFactory} from "src/interfaces/ISidecarFactory.sol";

/// @title BalancerFactory.
/// @author Stake DAO
/// @custom:github @stake-dao
/// @custom:contact contact@stakedao.org

/// @notice Factory contract for deploying Balancer vaults with locker-only strategy.
contract BalancerFactory is Factory {
    /// @notice The bytes4 ID of the Balancer protocol
    /// @dev Used to identify the Balancer protocol in the registry
    bytes4 private constant BALANCER_PROTOCOL_ID = bytes4(keccak256("BALANCER"));

    /// @notice Balancer Gauge Controller.
    address public immutable GAUGE_CONTROLLER;

    /// @notice AURA token address.
    address public immutable AURA;

    /// @notice Aura Booster address.
    address public immutable AURA_BOOSTER;

    /// @notice Aura Sidecar Factory address.
    address public immutable AURA_SIDECAR_FACTORY;

    /// @notice Error thrown when the set reward receiver fails.
    error SetRewardReceiverFailed();

    /// @notice Error thrown when the aura sidecar factory is not set.
    error AuraSidecarFactoryNotSet();

    /// @notice Event emitted when a vault is deployed with a sidecar.
    event VaultDeployedWithSidecar(address gauge, address vault, address rewardReceiver, address sidecar);

    /// @notice Constructor parameters to avoid stack too deep errors.
    struct ConstructorParams {
        address gaugeController;
        address aura;
        address auraBooster;
        address protocolController;
        address accountant;
        address vaultImplementation;
        address rewardReceiverImplementation;
        address rewardReceiverMigrationModule;
        address rewardRouter;
        address locker;
        address gateway;
        address auraSidecarFactory;
        address registrar;
    }

    constructor(ConstructorParams memory params)
        Factory(
            params.protocolController,
            params.accountant,
            params.vaultImplementation,
            params.rewardReceiverImplementation,
            params.rewardReceiverMigrationModule,
            params.rewardRouter,
            BALANCER_PROTOCOL_ID,
            params.locker,
            params.gateway,
            params.registrar
        )
    {
        GAUGE_CONTROLLER = params.gaugeController;
        AURA = params.aura;
        AURA_BOOSTER = params.auraBooster;
        AURA_SIDECAR_FACTORY = params.auraSidecarFactory;
    }

    /// @notice Create a new vault for a gauge.
    /// @param _gauge The gauge address to create a vault for.
    /// @return vault The deployed vault address.
    /// @return rewardReceiver The deployed reward receiver address.
    function create(address _gauge) external returns (address vault, address rewardReceiver) {
        /// 1. Create the vault (base Factory emits VaultDeployed event).
        (vault, rewardReceiver) = createVault(_gauge);
    }

    /// @notice Create a new vault with Aura sidecar.
    /// @param _pid Aura pool id.
    /// @return vault The deployed vault address.
    /// @return rewardReceiver The deployed reward receiver address.
    /// @return sidecar The deployed sidecar address.
    function create(uint256 _pid) external returns (address vault, address rewardReceiver, address sidecar) {
        require(AURA_SIDECAR_FACTORY != address(0), AuraSidecarFactoryNotSet());

        // Get gauge from Aura Booster
        (,, address gauge,,,) = IAuraBooster(AURA_BOOSTER).poolInfo(_pid);

        // 1. Create the vault
        (vault, rewardReceiver) = createVault(gauge);

        // 2. Attach the sidecar
        sidecar = ISidecarFactory(AURA_SIDECAR_FACTORY).create(gauge, abi.encode(_pid));

        // 3. Emit the event
        emit VaultDeployedWithSidecar(gauge, vault, rewardReceiver, sidecar);
    }

    function _isValidToken(address _token) internal view virtual override returns (bool) {
        /// If the token is not valid, return false.
        if (!super._isValidToken(_token)) return false;

        /// We already add AURA to the vault by default.
        if (_token == AURA) return false;

        /// If the token is available as an inflation receiver (a gauge), it's not valid.
        try IGaugeController(GAUGE_CONTROLLER).gauge_types(_token) {
            return false;
        } catch {
            return true;
        }
    }

    function _isValidGauge(address _gauge) internal view virtual override returns (bool) {
        bool inController = false;
        bool isKilled = false;

        // Check if gauge is in controller
        try IGaugeController(GAUGE_CONTROLLER).gauge_types(_gauge) {
            inController = true;
        } catch {}

        // Check if gauge is killed
        try ILiquidityGauge(_gauge).is_killed() returns (bool _isKilled) {
            isKilled = _isKilled;
        } catch {}

        // Check whitelist
        bool whitelisted = REGISTRAR.isWhitelisted(PROTOCOL_ID, _gauge);

        // Final condition
        return !isKilled && (inController || whitelisted);
    }

    function _getAsset(address _gauge) internal view virtual override returns (address) {
        return ILiquidityGauge(_gauge).lp_token();
    }

    function _setupRewardTokens(address _vault, address _gauge, address _rewardReceiver) internal virtual override {
        /// Add AURA to the vault if it's set and not already there.
        if (AURA != address(0) && !IRewardVault(_vault).isRewardToken(AURA)) {
            IRewardVault(_vault).addRewardToken(AURA, _rewardReceiver);
        }

        /// Check if the gauge supports extra rewards.
        /// This function is not supported on all gauges, depending on when they were deployed.
        bytes memory data = abi.encodeWithSignature("reward_tokens(uint256)", 0);

        (bool success,) = _gauge.call(data);
        if (!success) return;

        /// Loop through the extra reward tokens.
        /// 8 is the maximum number of extra reward tokens supported by the gauges.
        uint256 periodFinish;
        address _extraRewardToken;
        for (uint8 i = 0; i < 8; i++) {
            /// Get the extra reward token address.
            _extraRewardToken = ILiquidityGauge(_gauge).reward_tokens(i);

            /// If the address is 0, it means there are no more extra reward tokens.
            if (_extraRewardToken == address(0)) break;

            (,, periodFinish,,,) = ILiquidityGauge(_gauge).reward_data(_extraRewardToken);
            /// If the reward data is not active, skip. We allow for 30 days of inactivity.
            if (periodFinish + 30 days < block.timestamp) continue;
            /// If the extra reward token is already in the vault, skip.
            if (IRewardVault(_vault).isRewardToken(_extraRewardToken)) continue;
            /// Performs checks on the extra reward token.
            /// Checks like if the token is also an lp token that can be staked in the locker, these tokens are not supported.
            if (_isValidToken(_extraRewardToken)) {
                /// Then we add the extra reward token to the reward distributor through the strategy.
                IRewardVault(_vault).addRewardToken(_extraRewardToken, _rewardReceiver);
            }
        }
    }

    function _setRewardReceiver(address _gauge, address _rewardReceiver) internal override {
        /// Set _rewardReceiver as the reward receiver on the gauge.
        bytes memory data = abi.encodeWithSignature("set_rewards_receiver(address)", _rewardReceiver);
        require(_executeTransaction(_gauge, data), SetRewardReceiverFailed());
    }

    function _initializeVault(address, address _asset, address _gauge) internal override {
        /// Initialize the vault.
        /// We need to approve the asset to the gauge using the Locker.
        bytes memory data = abi.encodeWithSignature("approve(address,uint256)", _gauge, type(uint256).max);

        /// Execute the transaction.
        require(_executeTransaction(_asset, data), ApproveFailed());
    }
}
