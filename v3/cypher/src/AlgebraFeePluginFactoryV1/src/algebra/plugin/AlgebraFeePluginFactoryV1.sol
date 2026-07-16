// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraPool.sol";
import "@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraFactory.sol";

import "src/interfaces/IAlgebraCustomPoolEntryPoint.sol";

import "./AlgebraFeePluginV1.sol";

import {IStakingVaultFactory} from "src/interfaces/IStakingVaultFactory.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IBCTokenFactory} from "src/interfaces/IBCTokenFactory.sol";

/**
 * @notice Simplified interface for accessing the BCToken factory owner and liquidity manager.
 */
interface ISimplifiedTokenFactory {
    function owner() external view returns (address);
    function liquidityManager() external view returns (address);
}

/**
 * @title AlgebraFeePluginFactoryV1
 * @author Camelot
 * @notice Factory that creates {AlgebraFeePluginV1} sliding-fee plugins for
 *         Algebra liquidity pools and optionally deploys associated staking vaults.
 * @dev This plugin factory can only be used for Algebra base pools. It acts as
 *      the `IAlgebraPluginFactory` hook called by the Algebra custom pool entry
 *      point during pool creation. Ownership and access control are delegated to
 *      the {BC_TOKEN_FACTORY} owner.
 */
contract AlgebraFeePluginFactoryV1 is IBasePluginV2Factory {
    /// @notice Role hash used to gate administrator-only operations on the Algebra factory.
    /// @inheritdoc IBasePluginV2Factory
    bytes32 public constant override ALGEBRA_BASE_PLUGIN_FACTORY_ADMINISTRATOR =
        keccak256("ALGEBRA_BASE_PLUGIN_FACTORY_ADMINISTRATOR");

    /// @notice Farming address is unused; always returns `address(0)`.
    address public constant override farmingAddress = address(0);

    /// @notice The Algebra factory used for role and pool management.
    /// @inheritdoc IBasePluginV2Factory
    address public immutable override algebraFactory;

    /// @notice The Algebra custom pool entry point that invokes the plugin hooks.
    address public immutable algebraCustomPoolEntryPoint;

    /// @notice The canonical WETH address used to identify the ETH side of each pool.
    address public immutable WETH;

    /// @notice The BCToken factory whose owner is treated as the protocol admin.
    address public immutable BC_TOKEN_FACTORY;

    /// @notice Hard ceiling for `defaultBaseFee` to prevent misconfiguration.
    uint16 public constant MAX_DEFAULT_BASE_FEE = 30_000;

    /// @notice The base fee (in hundredths of a bip) applied to newly created plugins.
    /// @inheritdoc IBasePluginV2Factory
    uint16 public override defaultBaseFee = 10_000;

    /// @dev The community fee ratio for the plugin being created. Resets to zero
    ///      after pool creation via `afterCreatePoolHook`.
    uint8 private communityFeeRatio;

    /// @notice The percentage (0-100) of WETH-side fees directed to the protocol owner.
    uint8 public protocolFeeRatio;

    /// @dev The fee receiver for the plugin being created. Resets to `address(0)`
    ///      after pool creation via `afterCreatePoolHook`.
    address private feeReceiver;

    /// @dev Whether to deploy a staking vault for the plugin being created.
    ///      Resets to `true` after pool creation via `afterCreatePoolHook`.
    bool private deployStaking = true;

    /// @notice The liquidity manager authorised to call `createCustomPool`.
    address public liquidityManager;

    /// @notice Factory used to deploy staking vaults for newly created pools.
    IStakingVaultFactory public stakingVaultFactory;

    /// @notice Mapping from Algebra pool address to its deployed plugin address.
    /// @inheritdoc IBasePluginV2Factory
    mapping(address poolAddress => address pluginAddress) public override pluginByPool;

    /**
     * @notice Thrown when the pool already has a plugin deployed.
     */
    error PoolAlreadyCreated();

    /**
     * @notice Thrown when the caller does not hold the administrator role.
     */
    error OnlyAdministrator();

    /**
     * @notice Thrown when the caller is not the liquidity manager.
     */
    error OnlyLiquidityManager();

    /**
     * @notice Thrown when a referenced pool does not exist.
     */
    error PoolDoesNotExist();

    /**
     * @notice Thrown when the caller is not the expected entry point or deployer.
     */
    error InvalidCaller();

    /**
     * @notice Thrown when neither pool token is WETH.
     */
    error InvalidToken();

    /**
     * @notice Thrown when the caller is not the BC token factory owner.
     */
    error OnlyFactoryOwner();

    /**
     * @notice Thrown when `protocolFeeRatio` exceeds 100.
     */
    error InvalidProtocolFeeRatio();

    /**
     * @notice Thrown when `defaultBaseFee` exceeds the hard cap or is unchanged.
     */
    error InvalidDefaultBaseFee();

    /**
     * @notice Thrown for intentionally disabled functions.
     */
    error NotImplemented();

    /**
     * @notice Restricts access to addresses holding the plugin factory administrator role.
     */
    modifier onlyAdministrator() {
        if (
            !IAlgebraFactory(algebraFactory).hasRoleOrOwner(
                ALGEBRA_BASE_PLUGIN_FACTORY_ADMINISTRATOR, msg.sender
            )
        ) revert OnlyAdministrator();
        _;
    }

    /**
     * @notice Restricts access to the BC token factory owner.
     */
    modifier onlyFactoryOwner() {
        if (msg.sender != ISimplifiedTokenFactory(BC_TOKEN_FACTORY).owner()) revert OnlyFactoryOwner();
        _;
    }

    /**
     * @notice Restricts access to the current liquidity manager.
     */
    modifier onlyLiquidityManager() {
        if (msg.sender != ISimplifiedTokenFactory(BC_TOKEN_FACTORY).liquidityManager()) {
            revert OnlyLiquidityManager();
        }
        _;
    }

    // ──────────────────────────────────────────────
    //  Constructor
    // ──────────────────────────────────────────────

    /**
     * @notice Deploys the plugin factory with references to external infrastructure.
     * @param _stakingVaultFactory        The factory used to deploy staking vaults.
     * @param _algebraFactory             The Algebra factory for role lookups.
     * @param _algebraCustomPoolEntryPoint The entry point that triggers plugin hooks.
     * @param _weth                       The canonical WETH address.
     * @param _tokenFactory               The BCToken factory whose owner serves as admin.
     */
    constructor(
        IStakingVaultFactory _stakingVaultFactory,
        address _algebraFactory,
        address _algebraCustomPoolEntryPoint,
        address _weth,
        address _tokenFactory
    ) {
        stakingVaultFactory = _stakingVaultFactory;
        algebraFactory = _algebraFactory;
        algebraCustomPoolEntryPoint = _algebraCustomPoolEntryPoint;
        WETH = _weth;
        BC_TOKEN_FACTORY = _tokenFactory;
    }

    // ──────────────────────────────────────────────
    //  External (state-changing)
    // ──────────────────────────────────────────────

    /**
     * @notice Updates the protocol fee ratio applied to WETH-side fees.
     * @dev Only callable by the BC token factory owner. Reverts if the ratio exceeds 100.
     * @param _protocolFeeRatio The new protocol fee ratio (0-100).
     */
    function setProtocolFeeRatio(uint8 _protocolFeeRatio) external onlyFactoryOwner {
        if (_protocolFeeRatio > 100) revert InvalidProtocolFeeRatio();

        protocolFeeRatio = _protocolFeeRatio;
    }

    /**
     * @notice Replaces the staking vault factory used for new pool deployments.
     * @dev Only callable by the BC token factory owner.
     * @param _stakingVaultFactory The new staking vault factory address.
     */
    function setStakingVaultFactory(IStakingVaultFactory _stakingVaultFactory) external onlyFactoryOwner {
        stakingVaultFactory = _stakingVaultFactory;
    }

    /**
     * @notice Disabled -- farming is not supported by this plugin factory.
     * @inheritdoc IBasePluginV2Factory
     */
    function setFarmingAddress(address newFarmingAddress) external override onlyAdministrator {
        revert NotImplemented();
    }

    /**
     * @notice Hook called by the Algebra custom pool entry point before a pool is created.
     * @dev Validates that one of the pool tokens is WETH and deploys a new plugin.
     * @inheritdoc IAlgebraPluginFactory
     * @param pool   The address of the pool being created.
     * @param token0 The pool's token0 address.
     * @param token1 The pool's token1 address.
     * @return The address of the newly deployed plugin.
     */
    function beforeCreatePoolHook(
        address pool,
        address,
        address,
        address token0,
        address token1,
        bytes calldata
    ) external override returns (address) {
        if (msg.sender != algebraCustomPoolEntryPoint) revert InvalidCaller();
        address weth = WETH;
        if (token0 != weth && token1 != weth) revert InvalidToken();

        return _createPlugin(pool, token0, token1);
    }

    /**
     * @notice Hook called by the Algebra custom pool entry point after a pool is created.
     * @dev Resets transient deployment state (`communityFeeRatio`, `feeReceiver`,
     * `deployStaking`) so the next pool creation starts from defaults.
     * @inheritdoc IAlgebraPluginFactory
     */
    function afterCreatePoolHook(address, address, address deployer) external override {
        if (msg.sender != algebraCustomPoolEntryPoint || deployer != address(this)) {
            revert InvalidCaller();
        }

        communityFeeRatio = 0;
        feeReceiver = address(0);
        deployStaking = true;
    }

    /**
     * @notice Not implemented -- use `createCustomPool` instead.
     * @inheritdoc IBasePluginV2Factory
     */
    function createPluginForExistingPool(address token0, address token1)
        external
        override
        returns (address)
    {
        revert("Not implemented");
    }

    /**
     * @notice Creates a custom Algebra pool with an associated fee plugin and
     * optional staking vault.
     * @param creator The address credited as the pool/token creator.
     * @param tokenA One of the pool's tokens.
     * @param tokenB The other pool token.
     * @param data Arbitrary data forwarded to the entry point.
     * @param _communityFeeRatio The community fee ratio (0-100) for BCToken-side fees.
     * @param stakingConfig Whether to deploy a staking vault for this pool.
     * @return The address of the newly created Algebra pool.
     */
    function createCustomPool(
        address creator,
        address tokenA,
        address tokenB,
        bytes calldata data,
        uint8 _communityFeeRatio,
        IBCTokenFactory.StakingConfig calldata stakingConfig
    ) external onlyLiquidityManager returns (address) {
        if (feeReceiver != address(0)) revert();

        feeReceiver = creator;
        communityFeeRatio = _communityFeeRatio;
        deployStaking = stakingConfig.deployStaking;

        return IAlgebraCustomPoolEntryPoint(algebraCustomPoolEntryPoint).createCustomPool(
            address(this), creator, tokenA, tokenB, data
        );
    }

    /**
     * @notice Updates the default base fee applied to newly created plugins.
     * @dev Only callable by an administrator. Reverts if the new fee exceeds
     * `MAX_DEFAULT_BASE_FEE` or equals the current value.
     * @inheritdoc IBasePluginV2Factory
     * @param newDefaultBaseFee The new default base fee (in hundredths of a bip).
     */
    function setDefaultBaseFee(uint16 newDefaultBaseFee) external override onlyAdministrator {
        if (newDefaultBaseFee > MAX_DEFAULT_BASE_FEE || defaultBaseFee == newDefaultBaseFee) {
            revert InvalidDefaultBaseFee();
        }
        defaultBaseFee = newDefaultBaseFee;
        emit DefaultBaseFee(newDefaultBaseFee);
    }

    // ──────────────────────────────────────────────
    //  External (view)
    // ──────────────────────────────────────────────

    /**
     * @notice Returns the current owner of the BC token factory.
     * @return The owner address of {BC_TOKEN_FACTORY}.
     */
    function factoryOwner() external view returns (address) {
        return ISimplifiedTokenFactory(BC_TOKEN_FACTORY).owner();
    }

    // ──────────────────────────────────────────────
    //  Internal
    // ──────────────────────────────────────────────

    /**
     * @dev Deploys a new {AlgebraFeePluginV1} for the given pool and optionally
     * creates a staking vault via {stakingVaultFactory}.
     * @param pool   The Algebra pool to attach the plugin to.
     * @param token0 The pool's token0 address.
     * @param token1 The pool's token1 address.
     * @return The address of the newly deployed plugin.
     */
    function _createPlugin(address pool, address token0, address token1)
        internal
        returns (address)
    {
        if (pluginByPool[pool] != address(0)) revert PoolAlreadyCreated();
        address weth = WETH;
        address coin = token0 == weth ? token1 : token0;

        // Deploy plugin with bcToken reference for dynamic fee recipient resolution
        AlgebraFeePluginV1 plugin = new AlgebraFeePluginV1(
            pool,
            algebraFactory,
            address(this),
            weth,
            token0,
            token1,
            coin,
            defaultBaseFee,
            communityFeeRatio
        );

        // If deployStaking is true, deploy a staking vault and set it on the plugin.
        // Otherwise staking remains address(0) and coin fees are split between
        // protocol owner and feeReceiver using protocolFeeRatio.
        if (deployStaking) {
            address staking = stakingVaultFactory.deployVault(IERC20(coin));
            plugin.setStakingAddress(staking);
        }

        pluginByPool[pool] = address(plugin);
        return address(plugin);
    }
}
