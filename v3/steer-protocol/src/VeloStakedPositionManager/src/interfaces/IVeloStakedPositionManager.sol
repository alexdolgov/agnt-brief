// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import { IERC20 } from "@openzeppelin/openzeppelin-contracts/token/ERC20/IERC20.sol";
import { ICLPool } from "../imported/SlipstreamWrappers/ICLPool.sol";

/**
 * @title IAeroStakedPositionManager
 * @dev Interface for the AeroStakedPositionManager contract that manages liquidity positions
 * in Aerodrome CLMMs with automated staking functionality.
 */
interface IVeloStakedPositionManager {
    //  is IERC721Receiver, ICLMintCallback, ICLSwapCallback {
    /**
     * @dev Struct to organize position data during liquidity operations
     */
    struct PositionData {
        uint256[] positionT0Requested;
        uint256[] positionT1Requested;
        uint256 totalT0Requested;
        uint256 totalT1Requested;
        uint256 positionCount;
    }

    /**
     * @dev Parameters for minting new positions
     */
    struct MintParams {
        uint160 sqrtPriceX96;
        uint256 t0ToDeposit;
        uint256 t1ToDeposit;
        int256 swapAmount;
    }

    /**
     * @dev The vault's position data. At any given moment this represents
     *      all active positions inside the pool.
     *      Each lowerTick is the lower bound of the position at that index.
     *      Each upperTick is the upper bound of the position at that index.
     *      Each relativeWeight is the relative weight of the position at that index,
     *      relative to the other positions.
     *      So for example if LiquidityPositions is
     *        {
     *            lowerTicks: [0, 20, 40],
     *            upperTicks: [10, 30, 50],
     *            relativeWeights: [1, 2, 3]
     *        }
     *        then that means the vault has 3 positions:
     *            1. 0-10 with relative weight 1
     *            2. 20-30 with relative weight 2
     *            3. 40-50 with relative weight 3
     */
    struct LiquidityPositions {
        int24[] lowerTick;
        int24[] upperTick;
        uint16[] relativeWeight;
    }

    /**
     * @notice Initializes the vault
     * @param _vaultManager Address which will manage the vault
     * @param _orchestrator Orchestrator address (not used in the current implementation)
     * @param _steer The steer multisig address for governance functions
     * @param _params All other parameters this vault will use
     */
    function initialize(
        address _vaultManager,
        address _orchestrator,
        address _steer,
        bytes memory _params
    ) external;

    /**
     * @notice Deposits tokens into the vault
     * @param amount0Desired The desired amount of token0 to deposit
     * @param amount1Desired The desired amount of token1 to deposit
     * @param amount0Min The minimum amount of token0 to deposit
     * @param amount1Min The minimum amount of token1 to deposit
     * @param to The recipient of the vault shares
     * @return shares The number of shares minted
     * @return amount0Used The amount of token0 actually used
     * @return amount1Used The amount of token1 actually used
     */
    function deposit(
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min,
        address to
    ) external returns (uint256 shares, uint256 amount0Used, uint256 amount1Used);

    /**
     * @notice Withdraws tokens from the vault
     * @param shares The number of shares to burn
     * @param amount0Min The minimum amount of token0 to withdraw
     * @param amount1Min The minimum amount of token1 to withdraw
     * @param to The recipient of the withdrawn tokens
     * @return amount0 The amount of token0 withdrawn
     * @return amount1 The amount of token1 withdrawn
     * @return rewards The amount of rewards claimed
     */
    function withdraw(
        uint256 shares,
        uint256 amount0Min,
        uint256 amount1Min,
        address to
    ) external returns (uint256 amount0, uint256 amount1, uint256 rewards);

    /**
     * @notice Rebalances the vault's liquidity positions
     * @param totalWeight The total weight for deposit (0-10000)
     * @param newPositions The new liquidity positions to create
     * @param timeSensitiveData Encoded swap parameters
     */
    function tend(
        uint256 totalWeight,
        LiquidityPositions memory newPositions,
        bytes calldata timeSensitiveData
    ) external;

    /**
     * @notice Claim user rewards
     * @return Amount of rewards claimed
     */
    function claimUserRewards() external returns (uint256);

    /**
     * @notice Claim strategist fees
     * @return stratFee Amount of fees claimed by strategist
     */
    function claimStrategistFees() external returns (uint256 stratFee);

    /**
     * @notice Claim Steer fees
     * @return steerFee Amount of fees claimed by Steer
     */
    function claimSteerFees() external returns (uint256 steerFee);


    /**
     * @notice Get current positions held by the vault
     * @return lowerTicks The lower ticks of the positions
     * @return upperTicks The upper ticks of the positions
     * @return relativeWeights The relative weights of the positions
     */
    function getPositions() external view returns (int24[] memory, int24[] memory, uint16[] memory);

    /**
     * @notice Calculates the vault's total holdings of token0 and token1
     * @return total0 The total amount of token0 the vault would hold if it withdrew all liquidity
     * @return total1 The total amount of token1 the vault would hold if it withdrew all liquidity
     */
    function getTotalAmounts() external view returns (uint256 total0, uint256 total1);

    /**
     * @notice Pauses the vault operations
     */
    function pause() external;

    /**
     * @notice Unpauses the vault operations
     */
    function unpause() external;

    // Read-only state variables
    function token0() external view returns (IERC20);
    function token1() external view returns (IERC20);
    function rewardToken() external view returns (IERC20);
    function pool() external view returns (ICLPool);
    function maxTickChange() external view returns (int24);
    function twapInterval() external view returns (uint32);
    function rewardIsPoolToken() external view returns (bool);
    function rewardIsToken0() external view returns (bool);
    function accruedSteerFees() external view returns (uint256);
    function claimedSteerFees() external view returns (uint256);
    function accruedStrategistFees() external view returns (uint256);
    function claimedStrategistFees() external view returns (uint256);
}