// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;

import '@cronos-labs/vvs-v3-core/contracts/libraries/LowGasSafeMath.sol';
import '@cronos-labs/vvs-v3-core/contracts/libraries/SafeCast.sol';
import '@cronos-labs/vvs-v3-core/contracts/libraries/FullMath.sol';
import '@cronos-labs/vvs-v3-core/contracts/libraries/FixedPoint128.sol';
import '@cronos-labs/vvs-v3-core/contracts/interfaces/IVVSV3Pool.sol';
import '@cronos-labs/vvs-v3-core/contracts/interfaces/IVVSV3LmPool.sol';

import './libraries/LmTick.sol';
import './interfaces/IMasterChefV3.sol';

contract VVSV3LmPool is IVVSV3LmPool {
    using LowGasSafeMath for uint256;
    using LowGasSafeMath for int256;
    using SafeCast for uint256;
    using SafeCast for int256;
    using LmTick for mapping(int24 => LmTick.Info);

    // v3 pool address
    IVVSV3Pool public immutable pool;

    // v3 farm address
    IMasterChefV3 public immutable masterChef;

    // rewards accumulated per share of liquidity
    uint256 public rewardGrowthGlobalX128;

    // tick map data in the master chefV3
    mapping(int24 => LmTick.Info) public lmTicks;

    // the total liquidity within the current tick range in the master chefV3
    uint128 public lmLiquidity;

    uint32 public lastRewardTimestamp;

    modifier onlyPool() {
        require(msg.sender == address(pool), 'Not pool');
        _;
    }

    modifier onlyMasterChef() {
        require(msg.sender == address(masterChef), 'Not MC');
        _;
    }

    constructor(address _pool, address _masterChef, uint32 rewardStartTimestamp) {
        pool = IVVSV3Pool(_pool);
        masterChef = IMasterChefV3(_masterChef);
        lastRewardTimestamp = rewardStartTimestamp;
    }

    /// @dev it will be called in every swap. because the harvestVVSFromCraftsman method call costs a lot of gas.
    ///      so the method does nothing. In order to be able to display the user's pending rewards in real time,
    ///      call using the (masterChefV3).callStatic.harvest()
    function accumulateReward(uint32 currTimestamp) external override onlyPool {}

    function accumulateLmReward(uint32 currTimestamp) external onlyMasterChef {
        _accumulateReward(currTimestamp);
    }

    function _accumulateReward(uint32 currTimestamp) internal {
        if (currTimestamp <= lastRewardTimestamp) {
            return;
        }
        if (lmLiquidity != 0) {
            uint256 reward = masterChef.harvestVVSFromCraftsman(address(pool));
            if (reward != 0) {
                rewardGrowthGlobalX128 += FullMath.mulDiv(reward, FixedPoint128.Q128, lmLiquidity);
            }
        }
        lastRewardTimestamp = currTimestamp;
    }

    function crossLmTick(int24 tick, bool zeroForOne) external override onlyPool {
        // notify rewarders cross tick
        masterChef.onCrossTick(address(pool), tick, zeroForOne);

        // accumulate reward
        _accumulateReward(uint32(block.timestamp));

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
