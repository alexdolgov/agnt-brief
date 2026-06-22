// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;

import '@pancakeswap/v3-core/contracts/libraries/LowGasSafeMath.sol';
import '@pancakeswap/v3-core/contracts/libraries/SafeCast.sol';
import '@pancakeswap/v3-core/contracts/libraries/FullMath.sol';
import '@pancakeswap/v3-core/contracts/libraries/FixedPoint128.sol';
import '@pancakeswap/v3-core/contracts/interfaces/IDackieV3Pool.sol';

import './libraries/LmTick.sol';

import './interfaces/IDackieV3LmPool.sol';
import './interfaces/ILMPool.sol';
import './interfaces/IMasterChefV3.sol';
import './interfaces/IDackieV3LmPoolDeveloperV1.sol';

contract DackieV3LmPoolV1 is IDackieV3LmPool {
    using LowGasSafeMath for uint256;
    using LowGasSafeMath for int256;
    using SafeCast for uint256;
    using SafeCast for int256;
    using LmTick for mapping(int24 => LmTick.Info);

    uint256 public constant REWARD_PRECISION = 1e12;

    IDackieV3Pool public immutable pool;
    IMasterChefV3 public immutable masterChef;

    ILMPool public immutable OldLMPool;

    mapping(int24 => bool) public lmTicksFlag;

    uint256 public rewardGrowthGlobalX128;

    mapping(int24 => LmTick.Info) public lmTicks;

    uint128 public lmLiquidity;

    uint32 public lastRewardTimestamp;

    // Need to initialize the LMPool when first call from v3 pool or MCV3.
    bool public initialization;

    // Check whether rewardGrowthInside is negative at first.
    mapping(int24 => mapping(int24 => bool)) public negativeRewardGrowthInsideFlag;
    // Record the first negative RewardGrowthInside value.
    mapping(int24 => mapping(int24 => uint256)) public negativeRewardGrowthInsideInitValue;
    // To save gas , only need to check negativeRewardGrowthInsideFlag once.
    mapping(int24 => mapping(int24 => bool)) public checkNegativeFlag;

    modifier onlyPool() {
        require(msg.sender == address(pool), 'Not pool');
        _;
    }

    modifier onlyMasterChef() {
        require(msg.sender == address(masterChef), 'Not MC');
        _;
    }

    modifier onlyPoolOrMasterChef() {
        require(msg.sender == address(pool) || msg.sender == address(masterChef), 'Not pool or MC');
        _;
    }

    constructor() {
        (address poolAddress, address masterChefAddress, address oldLMPoolAddress) = IPancakeV3LmPoolDeveloperV1(
            msg.sender
        ).parameters();
        pool = IDackieV3Pool(poolAddress);
        masterChef = IMasterChefV3(masterChefAddress);
        lastRewardTimestamp = uint32(block.timestamp);
        OldLMPool = ILMPool(oldLMPoolAddress);
    }

    function _getLMTicks(int24 tick) internal view returns (LmTick.Info memory info) {
        (info.liquidityGross, info.liquidityNet, info.rewardGrowthOutsideX128) = OldLMPool.lmTicks(tick);
    }

    /// @notice Update tick information from old LMPool when need to update the tick information at the first time.
    /// @dev Old LMPool ticks information can be compatible.
    function _updateLMTicks(int24 tick) internal {
        if (!lmTicksFlag[tick]) {
            lmTicksFlag[tick] = true;
            lmTicks[tick] = _getLMTicks(tick);
        }
    }

    /// @notice Will trigger this once when the first call from MasterChefV3 or V3 pool,
    /// this will update the latest global information from old LMPool.
    function _initialize() internal {
        if (!initialization) {
            initialization = true;
            rewardGrowthGlobalX128 = OldLMPool.rewardGrowthGlobalX128();
            lmLiquidity = OldLMPool.lmLiquidity();
            lastRewardTimestamp = OldLMPool.lastRewardTimestamp();
        }
    }

    function accumulateReward(uint32 currTimestamp) external override onlyPoolOrMasterChef {
        _initialize();
        if (currTimestamp <= lastRewardTimestamp) {
            return;
        }

        if (lmLiquidity != 0) {
            (uint256 rewardPerSecond, uint256 endTime) = masterChef.getLatestPeriodInfo(address(pool));

            uint32 endTimestamp = uint32(endTime);
            uint32 duration;
            if (endTimestamp > currTimestamp) {
                duration = currTimestamp - lastRewardTimestamp;
            } else if (endTimestamp > lastRewardTimestamp) {
                duration = endTimestamp - lastRewardTimestamp;
            }

            if (duration != 0) {
                rewardGrowthGlobalX128 += FullMath.mulDiv(
                    duration,
                    FullMath.mulDiv(rewardPerSecond, FixedPoint128.Q128, REWARD_PRECISION),
                    lmLiquidity
                );
            }
        }

        lastRewardTimestamp = currTimestamp;
    }

    function crossLmTick(int24 tick, bool zeroForOne) external override onlyPool {
        _initialize();
        // Update the lmTicks state from the OldLMPool.
        _updateLMTicks(tick);

        if (lmTicks[tick].liquidityGross == 0) {
            return;
        }

        int128 lmLiquidityNet = lmTicks.cross(tick, rewardGrowthGlobalX128);

        if (zeroForOne) {
            lmLiquidityNet = -lmLiquidityNet;
        }

        lmLiquidity = LiquidityMath.addDelta(lmLiquidity, lmLiquidityNet);
    }

    /// @notice This will check the whether the range RewardGrowthInside is negative when the range ticks were initialized.
    /// @dev This is for fixing the issues that rewardGrowthInsideX128 can be underflow on purpose.
    /// If the rewardGrowthInsideX128 is negative , we will process it as a positive number.
    /// Because the RewardGrowthInside is self-incrementing, so we record the initial value as zero point.
    function _checkNegativeRewardGrowthInside(int24 tickLower, int24 tickUpper) internal {
        if (!checkNegativeFlag[tickLower][tickUpper]) {
            checkNegativeFlag[tickLower][tickUpper] = true;
            (uint256 rewardGrowthInsideX128, bool isNegative) = _getRewardGrowthInsideInternal(tickLower, tickUpper);
            if (isNegative) {
                negativeRewardGrowthInsideFlag[tickLower][tickUpper] = true;
                negativeRewardGrowthInsideInitValue[tickLower][tickUpper] = rewardGrowthInsideX128;
            }
        }
    }

    function updatePosition(int24 tickLower, int24 tickUpper, int128 liquidityDelta) external onlyMasterChef {
        _initialize();
        // Update the lmTicks state from the OldLMPool.
        _updateLMTicks(tickLower);
        _updateLMTicks(tickUpper);
        (, int24 tick, , , , , ) = pool.slot0();
        uint128 maxLiquidityPerTick = pool.maxLiquidityPerTick();
        uint256 _rewardGrowthGlobalX128 = rewardGrowthGlobalX128;

        bool flippedLower;
        bool flippedUpper;
        if (liquidityDelta != 0) {
            flippedLower = lmTicks.update(
                tickLower,
                tick,
                liquidityDelta,
                _rewardGrowthGlobalX128,
                false,
                maxLiquidityPerTick
            );
            flippedUpper = lmTicks.update(
                tickUpper,
                tick,
                liquidityDelta,
                _rewardGrowthGlobalX128,
                true,
                maxLiquidityPerTick
            );
        }

        if (tick >= tickLower && tick < tickUpper) {
            lmLiquidity = LiquidityMath.addDelta(lmLiquidity, liquidityDelta);
        }

        if (liquidityDelta < 0) {
            if (flippedLower) {
                lmTicks.clear(tickLower);
            }
            if (flippedUpper) {
                lmTicks.clear(tickUpper);
            }
        }
        _checkNegativeRewardGrowthInside(tickLower, tickUpper);
    }

    function getRewardGrowthInside(
        int24 tickLower,
        int24 tickUpper
    ) external view returns (uint256 rewardGrowthInsideX128) {
        (rewardGrowthInsideX128, ) = _getRewardGrowthInsideInternal(tickLower, tickUpper);
        if (negativeRewardGrowthInsideFlag[tickLower][tickUpper]) {
            rewardGrowthInsideX128 = rewardGrowthInsideX128 - negativeRewardGrowthInsideInitValue[tickLower][tickUpper];
        }
    }

    function _getRewardGrowthInsideInternal(
        int24 tickLower,
        int24 tickUpper
    ) internal view returns (uint256 rewardGrowthInsideX128, bool isNegative) {
        if (initialization) {
            (, int24 tick, , , , , ) = pool.slot0();
            LmTick.Info memory lower;
            if (lmTicksFlag[tickLower]) {
                lower = lmTicks[tickLower];
            } else {
                lower = _getLMTicks(tickLower);
            }
            LmTick.Info memory upper;
            if (lmTicksFlag[tickUpper]) {
                upper = lmTicks[tickUpper];
            } else {
                upper = _getLMTicks(tickUpper);
            }

            // calculate reward growth below
            uint256 rewardGrowthBelowX128;
            if (tick >= tickLower) {
                rewardGrowthBelowX128 = lower.rewardGrowthOutsideX128;
            } else {
                rewardGrowthBelowX128 = rewardGrowthGlobalX128 - lower.rewardGrowthOutsideX128;
            }

            // calculate reward growth above
            uint256 rewardGrowthAboveX128;
            if (tick < tickUpper) {
                rewardGrowthAboveX128 = upper.rewardGrowthOutsideX128;
            } else {
                rewardGrowthAboveX128 = rewardGrowthGlobalX128 - upper.rewardGrowthOutsideX128;
            }

            rewardGrowthInsideX128 = rewardGrowthGlobalX128 - rewardGrowthBelowX128 - rewardGrowthAboveX128;
            isNegative = (rewardGrowthBelowX128 + rewardGrowthAboveX128) > rewardGrowthGlobalX128;
        } else {
            rewardGrowthInsideX128 = OldLMPool.getRewardGrowthInside(tickLower, tickUpper);
            // Do NOT care if it is negative or not
        }
    }
}