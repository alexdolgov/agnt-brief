// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IBCTokenFactory} from "src/interfaces/IBCTokenFactory.sol";

/**
 * @title ILiquidityManager
 * @author Cypher Industries
 * @notice Interface for the liquidity manager that creates, initialises, and seeds Algebra pools for BCTokens.
 */
interface ILiquidityManager {
    /**
     * @notice Invalid plugin factory address.
     */
    error InvalidPluginFactory();

    /**
     * @notice Caller is not an authorized BCToken.
     */
    error Unauthorized();

    /**
     * @notice Invalid marketcap / supply ratio when computing sqrtPrice and tick.
     */
    error InvalidMarketcapSupplyRatio();

    /**
     * @notice Liquidity pool already exists or sqrtX96Price is invalid.
     */
    error InvalidLiquidityPool();

    /**
     * @notice TickMath calculation returns invalid tick calculation and seeding the LP would be impossible.
     */
    error InvalidLiquidityRanges();

    /**
     * @notice Emitted when the plugin factory is updated.
     */
    event PluginFactoryUpdated(address indexed oldFactory, address indexed newFactory);

    /**
     * @notice Packed seed parameters passed between internal seeding functions.
     * @param token0 Lower-address token in the pair.
     * @param token1 Higher-address token in the pair.
     * @param harvester Recipient of minted LP positions.
     * @param token0LowTick Lower tick for token0-range position.
     * @param token0HighTick Upper tick for token0-range position.
     * @param token1LowTick Lower tick for token1-range position.
     * @param token1HighTick Upper tick for token1-range position.
     */
    struct SeedParams {
        address token0;
        address token1;
        address harvester;
        int24 token0LowTick;
        int24 token0HighTick;
        int24 token1LowTick;
        int24 token1HighTick;
    }

    /**
     * @notice Pool configuration parameters.
     * @param virtualReserves Virtual reserves of coin.
     * @param initialSupply Initial supply of coin.
     * @param maxSupply Max supply of coin.
     * @param protocolFee Protocol fee in basis points.
     * @param creatorFee Creator fee in basis points.
     * @param refundFee Refund fee in basis points paid to graduation caller.
     * @param communityFeeRatio Community fee ratio of the coin.
     * @param creator Address of the creator of the coin.
     */
    struct PoolConfig {
        uint256 virtualReserves;
        uint256 initialSupply;
        uint256 maxSupply;
        uint80 protocolFee;
        uint80 creatorFee;
        uint80 refundFee;
        uint8 communityFeeRatio;
        address creator;
    }

    /**
     * @notice Creates and initializes a token / WETH Cypher liquidity pool given the coin initial configuration.
     * @param config Pool configuration parameters.
     * @param stakingConfig Staking vault configuration.
     * @return targetETH The amount of ETH needed to seed liquidity pool.
     * @return liquidityPool Address of the created liquidity pool.
     */
    function createAndInitializePools(
        PoolConfig calldata config,
        IBCTokenFactory.StakingConfig calldata stakingConfig
    ) external returns(uint256 targetETH, address liquidityPool);

    /**
     * @notice Seed coin LP and create liquidity positions.
     * @dev LiquidityManager MUST be approved to transfer `bcBalance` and `wethBalance` from msg.sender.
     * @dev Uses current tick of created liquidity pool as seedTick.
     * @param bcBalance Amount of token to seed LP with.
     * @param wethBalance Amount of WETH to seed LP with.
     */
    function seedLP(uint256 bcBalance, uint256 wethBalance) external;

    /**
     * @notice Returns whether a usable default (POL) pool exists for liquidity seeding.
     * @dev True when the default pool was created or found uninitialized and initialized with the correct
     * seed price. False when no default pool exists, the feature is disabled, or a pre-existing pool was
     * already initialized with an unknown price.
     * @param token The address of the BCToken.
     * @return True if a default pool is available for POL liquidity seeding.
     */
    function hasUsableDefaultPool(address token) external view returns (bool);
}
