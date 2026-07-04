// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {Factory} from "src/Factory.sol";
import {IAuraBooster} from "@interfaces/aura/IAuraBooster.sol";
import {IRewardVault} from "src/interfaces/IRewardVault.sol";
import {ISidecarFactory} from "src/interfaces/ISidecarFactory.sol";
import {IL2LiquidityGauge} from "@interfaces/curve/ILiquidityGauge.sol";
import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IChildChainGaugeFactory} from "@interfaces/balancer/IChildChainGaugeFactory.sol";

/// @title BalancerFactoryL2.
/// @author Stake DAO
/// @custom:github @stake-dao
/// @custom:contact contact@stakedao.org

/// @notice BalancerFactoryL2 is a specialized factory for deploying Balancer vaults on Layer 2 networks.
///
///         Key differences from mainnet BalancerFactory:
///         - Integrates with Aura BoosterLite for sidecar deployment
///         - Uses ChildLiquidityGaugeFactory array to validate gauges
///         - Ownable2Step for setChildChainGaugeFactories
contract BalancerFactoryL2 is Factory, Ownable2Step {
    /// @notice The bytes4 ID of the Balancer protocol
    /// @dev Used to identify the Balancer protocol in the registry
    bytes4 private constant BALANCER_PROTOCOL_ID = bytes4(keccak256("BALANCER"));

    /// @notice AURA token address.
    address public immutable AURA;

    /// @notice Aura Booster address.
    address public immutable AURA_BOOSTER;

    /// @notice Aura Sidecar Factory address.
    address public immutable AURA_SIDECAR_FACTORY;

    /// @notice The child liquidity gauge factories.
    IChildChainGaugeFactory[] public childChainGaugeFactories;

    /// @notice Error thrown when the set reward receiver fails.
    error SetRewardReceiverFailed();

    /// @notice Error thrown when the aura sidecar factory is not set.
    error AuraSidecarFactoryNotSet();

    /// @notice Error thrown when the child liquidity gauge factories are not set.
    error ChildChainGaugeFactoriesNotSet();

    /// @notice Event emitted when a vault is deployed with a sidecar.
    event VaultDeployedWithSidecar(address gauge, address vault, address rewardReceiver, address sidecar);

    constructor(
        address admin,
        address protocolController,
        address accountant,
        address vaultImplementation,
        address rewardReceiverImplementation,
        address locker,
        address gateway,
        address aura,
        address auraBooster,
        address auraSidecarFactory,
        address registrar
    )
        Factory(
            protocolController,
            accountant,
            vaultImplementation,
            rewardReceiverImplementation,
            address(0),
            address(0),
            BALANCER_PROTOCOL_ID,
            locker,
            gateway,
            registrar
        )
        Ownable(admin)
    {
        AURA = aura;
        AURA_BOOSTER = auraBooster;
        AURA_SIDECAR_FACTORY = auraSidecarFactory;
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
        require(childChainGaugeFactories.length > 0, ChildChainGaugeFactoriesNotSet());

        /// We already add AURA to the vault by default.
        if (_token == AURA) return false;

        /// If the token is available as an inflation receiver (a gauge), it's not valid.
        for (uint256 i = 0; i < childChainGaugeFactories.length; i++) {
            if (childChainGaugeFactories[i].isGaugeFromFactory(_token)) {
                return false;
            }
        }

        return true;
    }

    function _isValidGauge(address _gauge) internal view virtual override returns (bool) {
        require(childChainGaugeFactories.length > 0, ChildChainGaugeFactoriesNotSet());

        bool inFactory = false;
        bool isKilled = false;

        /// Check if the gauge is a valid candidate and available as an inflation receiver.
        for (uint256 i = 0; i < childChainGaugeFactories.length; i++) {
            if (childChainGaugeFactories[i].isGaugeFromFactory(_gauge)) {
                inFactory = true;
                break;
            }
        }

        /// Check if the gauge is killed.
        try IL2LiquidityGauge(_gauge).is_killed() returns (bool _isKilled) {
            isKilled = _isKilled;
        } catch {}

        /// Check whitelist
        bool whitelisted = REGISTRAR.isWhitelisted(PROTOCOL_ID, _gauge);

        /// Final condition: gauge must not be killed AND (in factory OR whitelisted)
        return !isKilled && (inFactory || whitelisted);
    }

    function _getAsset(address _gauge) internal view virtual override returns (address) {
        return IL2LiquidityGauge(_gauge).lp_token();
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
        for (uint8 i = 0; i < 8; i++) {
            /// Get the extra reward token address.
            address _extraRewardToken = IL2LiquidityGauge(_gauge).reward_tokens(i);

            /// If the address is 0, it means there are no more extra reward tokens.
            if (_extraRewardToken == address(0)) break;
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
        /// Set RewardReceiver as RewardReceiver on Gauge.
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

    /// @notice Set the child liquidity gauge factories.
    /// @param _childChainGaugeFactories The child liquidity gauge factories.
    function setChildChainGaugeFactories(IChildChainGaugeFactory[] memory _childChainGaugeFactories)
        external
        onlyOwner
    {
        childChainGaugeFactories = _childChainGaugeFactories;
    }
}
