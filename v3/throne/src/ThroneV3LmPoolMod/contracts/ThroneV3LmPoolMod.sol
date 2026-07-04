// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;

import '@openzeppelin/contracts/access/Ownable.sol';

import '@throneexchange/v3-core/contracts/libraries/LowGasSafeMath.sol';
import '@throneexchange/v3-core/contracts/libraries/SafeCast.sol';
import '@throneexchange/v3-core/contracts/libraries/FullMath.sol';
import '@throneexchange/v3-core/contracts/libraries/FixedPoint128.sol';
import '@throneexchange/v3-core/contracts/interfaces/IThroneV3Pool.sol';

import './libraries/LmTick.sol';

import './interfaces/IThroneV3LmPool.sol';
import './interfaces/IMasterChefV3.sol';

contract ThroneV3LmPoolMod is IThroneV3LmPool, Ownable {
    using LowGasSafeMath for uint256;
    using LowGasSafeMath for int256;
    using SafeCast for uint256;
    using SafeCast for int256;
    using LmTick for mapping(int24 => LmTick.Info);
    uint8 public immutable VERSION = 1;

    IThroneV3Pool public immutable pool;
    IMasterChefV3 public immutable masterChef;

    uint256 public rewardGrowthGlobalX128;

    mapping(int24 => LmTick.Info) public lmTicks;

    uint128 public lmLiquidity;

    uint32 public lastRewardTimestampActual;

    uint32 public nFactor = 3;

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

    constructor(address _pool, address _masterChef, uint32 rewardStartTimestamp) {
        pool = IThroneV3Pool(_pool);
        masterChef = IMasterChefV3(_masterChef);
        lastRewardTimestampActual = rewardStartTimestamp;
    }

    function updateNFactor(uint32 _nFactor) external onlyOwner {
        nFactor = _nFactor;
    }

    function lastRewardTimestamp() external view returns (uint32) {
        uint32 currentTimeStamp = uint32(block.timestamp);
        return lastRewardTimestampActual - (nFactor * (currentTimeStamp - lastRewardTimestampActual));
    }

    function accumulateReward(uint32 currTimestamp) external override onlyPoolOrMasterChef {
        if (currTimestamp <= lastRewardTimestampActual || msg.sender == address(pool)) {
            return;
        }

        if (lmLiquidity != 0) {
            uint256 rewardPerSecond = masterChef.getOathPerSecond(address(pool));

            uint32 duration = currTimestamp - lastRewardTimestampActual;

            if (duration != 0 && rewardPerSecond != 0) {
                rewardGrowthGlobalX128 += FullMath.mulDiv(
                    duration,
                    (rewardPerSecond * FixedPoint128.Q128),
                    lmLiquidity
                );
            }
        }

        lastRewardTimestampActual = currTimestamp;
    }

    function crossLmTick(int24 tick, bool zeroForOne) external override onlyPool {
        if (lmTicks[tick].liquidityGross == 0) {
            return;
        }

        int128 lmLiquidityNet = lmTicks.cross(tick, rewardGrowthGlobalX128);

        if (zeroForOne) {
            lmLiquidityNet = -lmLiquidityNet;
        }

        lmLiquidity = LiquidityMath.addDelta(lmLiquidity, lmLiquidityNet);
    }

    function updatePosition(int24 tickLower, int24 tickUpper, int128 liquidityDelta) external onlyMasterChef {
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
    }

    function getRewardGrowthInside(
        int24 tickLower,
        int24 tickUpper
    ) external view returns (uint256 rewardGrowthInsideX128) {
        (, int24 tick, , , , , ) = pool.slot0();
        return lmTicks.getRewardGrowthInside(tickLower, tickUpper, tick, rewardGrowthGlobalX128);
    }
}
