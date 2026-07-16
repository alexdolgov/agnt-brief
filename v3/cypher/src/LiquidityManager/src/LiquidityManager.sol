// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

import {IAlgebraFactory} from "src/interfaces/IAlgebraFactory.sol";
import {IAlgebraPool} from "src/interfaces/IAlgebraPool.sol";
import {IPositionManager} from "src/interfaces/IPositionManager.sol";
import {ILiquidityManager} from "src/interfaces/ILiquidityManager.sol";
import {IBCToken} from "src/interfaces/IBCToken.sol";
import {IWETH} from "src/interfaces/IWETH.sol";
import {IAlgebraFeePluginFactory} from "src/interfaces/IAlgebraFeePluginFactory.sol";
import {IBCTokenFactory} from "src/interfaces/IBCTokenFactory.sol";

import {TickMath} from "src/math/TickMath.sol";

/**
 * @title LiquidityManager
 * @author Cypher Industries
 * @notice Creates, initialises, and seeds Algebra liquidity pools for BCTokens.
 */
contract LiquidityManager is Ownable, ILiquidityManager {
    /// @notice Default AlgebraFactory TICK_SPACING.
    int24 private constant TICK_SPACING = 60;

    /// @notice Percentage of liquidity seeded to the default (POL) pool in basis points.
    uint256 private constant POL_BPS = 500;

    /// @notice Address of the NFTPositionManager.
    address public immutable POSITION_MANAGER;

    /// @notice Address of WETH.
    address public immutable WETH;

    /// @notice Address of the BCTokenFactory.
    address public immutable TOKEN_FACTORY;

    /// @notice Address of the AlgebraFeePluginFactory.
    address public pluginFactory;

    /// @notice Tracks the pluginFactory that deployed the pool for each BCToken.
    mapping(address => address) public tokenDeployer;

    /// @notice Per-token flag indicating whether a usable default (POL) pool exists for liquidity seeding.
    /// @dev True when a default pool was either created at deployment or found uninitialized and initialized
    /// with the correct seed price. False when no default pool exists, when the feature is disabled, or when
    /// a pre-existing default pool was already initialized with an unknown price (unsafe to seed).
    mapping(address => bool) public hasUsableDefaultPool;

    /**
     * @notice Modifier to restrict function access to only registered BCTokens.
     */
    modifier onlyRegisteredToken() {
        if (!IBCTokenFactory(TOKEN_FACTORY).bcTokens(msg.sender)) 
            revert Unauthorized();
        _;
    }

    /**
     * @notice Initialises the liquidity manager.
     * @param _positionManager The address of the NFT Position Manager.
     * @param _weth The address of the WETH contract.
     * @param _tokenFactory The address of the BCTokenFactory.
     * @param _pluginFactory The address of the Algebra fee plugin factory.
     */
    constructor(
        address _positionManager,
        address _weth,
        address _tokenFactory,
        address _pluginFactory
    ) Ownable(msg.sender) {
        POSITION_MANAGER = _positionManager;
        WETH = _weth;
        TOKEN_FACTORY = _tokenFactory;
        pluginFactory = _pluginFactory;
    }

    /**
     * @notice Sets the plugin factory address.
     * @param _pluginFactory The new plugin factory address.
     */
    function setPluginFactory(address _pluginFactory) external onlyOwner {
        if (_pluginFactory == address(0)) revert InvalidPluginFactory();
        address oldFactory = pluginFactory;
        pluginFactory = _pluginFactory;
        emit PluginFactoryUpdated(oldFactory, _pluginFactory);
    }

    /**
     * @inheritdoc ILiquidityManager
     * @dev Use named return variables to avoid stack too deep.
     */
    function createAndInitializePools(
        ILiquidityManager.PoolConfig calldata config,
        IBCTokenFactory.StakingConfig calldata stakingConfig
    ) external onlyRegisteredToken returns(uint256 targetETH, address pool) {
        (address token0, address token1) =
            msg.sender < WETH ? (msg.sender, WETH) : (WETH, msg.sender);

        targetETH = (config.maxSupply * config.virtualReserves) / config.initialSupply;

        _checkIfLiquidityPoolExists(token0, token1);

        uint256 totalFeeBps = uint256(config.protocolFee) + uint256(config.creatorFee) + uint256(config.refundFee);
        uint160 seedSqrtX96Price = _computeAndValidateTicks(
            msg.sender, token0, config.virtualReserves, config.initialSupply, config.maxSupply, targetETH, totalFeeBps
        );

        pool = IAlgebraFeePluginFactory(pluginFactory).createCustomPool(
            config.creator, token0, token1, "", config.communityFeeRatio, stakingConfig
        );

        tokenDeployer[msg.sender] = pluginFactory;

        IAlgebraPool(pool).initialize(seedSqrtX96Price);

        // Create default pool for external LPs (only if enabled)
        if (IBCTokenFactory(TOKEN_FACTORY).defaultPoolEnabled()) {
            address algebraFactory = IPositionManager(POSITION_MANAGER).factory();
            address existingPool = IAlgebraFactory(algebraFactory).poolByPair(token0, token1);
            if (existingPool == address(0)) {
                hasUsableDefaultPool[msg.sender] = true;
                address polPool = IAlgebraFactory(algebraFactory).createPool(token0, token1, "");
                IAlgebraPool(polPool).initialize(seedSqrtX96Price);
            } else {
                // Default pool exists — only use it if uninitialized (safe to set our price)
                (uint160 price,,,,,) = IAlgebraPool(existingPool).globalState();
                if (price == 0) {
                    hasUsableDefaultPool[msg.sender] = true;
                    IAlgebraPool(existingPool).initialize(seedSqrtX96Price);
                }
            }
        }

        return (targetETH, pool);
    }

    /**
     * @notice Computes tick values and validates liquidity ranges.
     * @param coin The address of the BCToken.
     * @param token0 The address of the lower-sorted token.
     * @param virtualReserves The virtual reserves of the bonding curve.
     * @param initialSupply The initial token supply.
     * @param maxSupply The maximum token supply.
     * @param targetETH The target ETH amount for the pool.
     * @param totalFeeBps The total fees in basis points.
     * @return seedSqrtX96Price The computed sqrtX96 seed price.
     */
    function _computeAndValidateTicks(
        address coin,
        address token0,
        uint256 virtualReserves,
        uint256 initialSupply,
        uint256 maxSupply,
        uint256 targetETH,
        uint256 totalFeeBps
    ) internal pure returns (uint160 seedSqrtX96Price) {
        int24 seedTick;
        (seedSqrtX96Price, seedTick) = _computeSqrtPriceAndTick(
            coin, token0, _offsetByFees(targetETH, totalFeeBps), initialSupply
        );
        (, int24 initialTick) = _computeSqrtPriceAndTick(
            coin, token0, _offsetByFees(virtualReserves, totalFeeBps), maxSupply
        );

        // Check for validity of liquidity ranges before LP is created
        _configureLiquidityRanges(initialTick, seedTick);
    }

    /**
     * @inheritdoc ILiquidityManager
     */
    function seedLP(uint256 bcTokenBalance, uint256 wethBalance) external onlyRegisteredToken {
        address token = msg.sender;
        IBCToken coin = IBCToken(token);

        SafeERC20.safeTransferFrom(IERC20(token), token, address(this), bcTokenBalance);
        SafeERC20.safeTransferFrom(IERC20(WETH), token, address(this), wethBalance);

        IERC20(token).approve(POSITION_MANAGER, bcTokenBalance);
        IERC20(WETH).approve(POSITION_MANAGER, wethBalance);

        _seedPools(token, coin, bcTokenBalance, wethBalance);
    }

    /**
     * @notice Computes ticks, splits amounts, and seeds liquidity pools.
     * @dev If `hasUsableDefaultPool` is true, splits liquidity between custom (95%) and default (5%) pools.
     * Otherwise, all liquidity goes to the custom pool.
     * @param token The address of the BCToken.
     * @param coin The IBCToken interface instance.
     * @param bcTokenBalance The BCToken balance to seed.
     * @param wethBalance The WETH balance to seed.
     */
    function _seedPools(address token, IBCToken coin, uint256 bcTokenBalance, uint256 wethBalance) internal {
        SeedParams memory p;
        (p.token0, p.token1) = token < WETH ? (token, WETH) : (WETH, token);
        p.harvester = coin.harvester();

        (uint256 amount0, uint256 amount1) = token < WETH
            ? (bcTokenBalance, wethBalance)
            : (wethBalance, bcTokenBalance);

        {
            (, int24 seedTick,,,,) = IAlgebraPool(coin.lp()).globalState();
            uint256 totalFeeBps = uint256(coin.PROTOCOL_FEE()) + uint256(coin.CREATOR_FEE()) + uint256(coin.REFUND_FEE());
            (, int24 initialTick) = _computeSqrtPriceAndTick(
                token, p.token0, _offsetByFees(coin.VIRTUAL_BALANCE(), totalFeeBps), coin.MAX_SUPPLY()
            );
            (p.token0LowTick, p.token0HighTick, p.token1LowTick, p.token1HighTick) = _configureLiquidityRanges(initialTick, seedTick);
        }

        if (hasUsableDefaultPool[token]) {
            uint256 polAmount0 = amount0 * POL_BPS / 10_000;
            uint256 polAmount1 = amount1 * POL_BPS / 10_000;

            // Custom pool (95%)
            _seedPool(p, tokenDeployer[token], amount0 - polAmount0, amount1 - polAmount1);

            // Default POL pool (5%)
            _seedPool(p, address(0), polAmount0, polAmount1);
        } else {
            // All liquidity to custom pool (100%)
            _seedPool(p, tokenDeployer[token], amount0, amount1);
        }
    }

    /**
     * @notice Mints two positions (token0-range and token1-range) in a single pool.
     * @param p The seed parameters containing token addresses, ticks, and harvester.
     * @param deployer The plugin factory deployer address (address(0) for default pool).
     * @param amount0 The amount of token0 to provide.
     * @param amount1 The amount of token1 to provide.
     */
    function _seedPool(SeedParams memory p, address deployer, uint256 amount0, uint256 amount1) internal {
        _mintPosition(IPositionManager.MintParams({
            token0: p.token0,
            token1: p.token1,
            deployer: deployer,
            tickLower: p.token0LowTick,
            tickUpper: p.token0HighTick,
            amount0Desired: amount0,
            amount1Desired: 0,
            amount0Min: 0,
            amount1Min: 0,
            recipient: p.harvester,
            deadline: block.timestamp
        }));

        _mintPosition(IPositionManager.MintParams({
            token0: p.token0,
            token1: p.token1,
            deployer: deployer,
            tickLower: p.token1LowTick,
            tickUpper: p.token1HighTick,
            amount0Desired: 0,
            amount1Desired: amount1,
            amount0Min: 0,
            amount1Min: 0,
            recipient: p.harvester,
            deadline: block.timestamp
        }));
    }

    /**
     * @notice Given coin supply, marketcap in wei and LP token order, calculates sqrtX96Price and tick.
     * @dev In most cases, `_supply` is expected to be higher than `_marketcap` and within
     * reasonable proportions, but scaling is applied to increase ratio coverage.
     * @param coin The address of the BCToken.
     * @param token0 The address of the lower-sorted token.
     * @param _marketcap The market capitalisation in wei.
     * @param _supply The token supply.
     * @return The computed sqrtX96 price.
     * @return The corresponding tick value.
     */
    function _computeSqrtPriceAndTick(address coin, address token0, uint256 _marketcap, uint256 _supply)
        internal
        pure
        returns (uint160, int24)
    {
        uint256 precision = 10 ** 18;

        uint256 sqrtX96Price;
        if (token0 == coin) {
            if(_marketcap / _supply > precision) revert InvalidMarketcapSupplyRatio();

            sqrtX96Price = Math.sqrt((_marketcap * precision) / _supply) * (2 ** 96) / (10 ** 9);
        } else {
            if(_supply / _marketcap > precision) revert InvalidMarketcapSupplyRatio();

            sqrtX96Price = Math.sqrt((_supply * precision) / _marketcap) * (2 ** 96) / (10 ** 9);
        }

        int24 tick = TickMath.getTickAtSqrtRatio(uint160(sqrtX96Price));
        return (uint160(sqrtX96Price), tick);
    }

    /**
     * @notice Computes the four tick boundaries for the two-range liquidity layout.
     * @param initialTick The tick corresponding to the initial (fully-diluted) price.
     * @param seedTick The tick corresponding to the seed (launch) price.
     * @return token0LowTick Lower tick for the token0-only range.
     * @return token0HighTick Upper tick for the token0-only range.
     * @return token1LowTick Lower tick for the token1-only range.
     * @return token1HighTick Upper tick for the token1-only range.
     */
    function _configureLiquidityRanges(int24 initialTick, int24 seedTick) internal pure returns (int24, int24, int24, int24) {
        if (initialTick == seedTick) revert InvalidLiquidityRanges();

        int24 baseSeedTick = _modulateTick(seedTick);
        int24 token0LowTick;
        int24 token0HighTick;
        int24 token1LowTick;
        int24 token1HighTick;

        if (initialTick < seedTick) {
            // BCToken is token0
            token0LowTick = baseSeedTick;
            token0HighTick = _modulateTick(TickMath.MAX_TICK);
            token1LowTick = _modulateTick(initialTick);
            token1HighTick = baseSeedTick - TICK_SPACING;
        } else {
            // BCToken is token1
            token0LowTick = baseSeedTick + TICK_SPACING;
            token0HighTick = _modulateTick(initialTick);
            token1LowTick = _modulateTick(TickMath.MIN_TICK);
            token1HighTick = baseSeedTick;
        }

        if (token0LowTick >= token0HighTick || token1LowTick >= token1HighTick) {
            revert InvalidLiquidityRanges();
        }

        return (token0LowTick, token0HighTick, token1LowTick, token1HighTick);
    }

    /**
     * @notice Mints a new liquidity position via the Position Manager.
     * @param params The mint parameters forwarded to the Position Manager.
     */
    function _mintPosition(IPositionManager.MintParams memory params) internal {
        IPositionManager(POSITION_MANAGER).mint(params);
    }

    /**
     * @notice Rounds a tick down to the nearest TICK_SPACING multiple.
     * @param tick The raw tick value to modulate.
     * @return The tick rounded down to the nearest spacing boundary.
     */
    function _modulateTick(int24 tick) internal pure returns (int24) {
        return tick / TICK_SPACING * TICK_SPACING;
    }
    
    /**
     * @notice Applies fee offset to a value.
     * @param _value The value to offset.
     * @param _totalFeeBps Total fees in basis points.
     * @return The value after subtracting the fee portion.
     */
    function _offsetByFees(uint256 _value, uint256 _totalFeeBps) internal pure returns (uint256) {
        return _value - _value * _totalFeeBps / 10_000;
    }

    /**
     * @notice Reverts if a custom liquidity pool already exists for the given token pair.
     * @param token0 The address of the lower-sorted token.
     * @param token1 The address of the higher-sorted token.
     */
    function _checkIfLiquidityPoolExists(address token0, address token1) internal {
        address _liquidityPool = IAlgebraFactory(IPositionManager(POSITION_MANAGER).factory()).customPoolByPair(pluginFactory, token0, token1);
        if(_liquidityPool != address(0)) revert InvalidLiquidityPool();
    }
}
