// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@cryptoalgebra/integral-core/contracts/libraries/FullMath.sol";
import "@cryptoalgebra/integral-farming/contracts/interfaces/IFarmingCenter.sol";
import "@cryptoalgebra/integral-farming/contracts/interfaces/IAlgebraEternalVirtualPool.sol";
import "../interfaces/IHypervisorState.sol";
import "@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraPool.sol";

library RewardCalculations {
    uint256 private constant PRECISION = 1e36;
    uint256 private constant Q128 = 1 << 128;

    function getRewardsForPosition(
        uint256 tokenId,
        IFarmingCenter farmingCenter,
        IAlgebraPool pool
    ) internal view returns (uint256 reward, uint256 bonusReward) {
        if (tokenId != 0) {
            bytes32 incentiveId = farmingCenter.deposits(tokenId);
            IAlgebraEternalVirtualPool virtualPool = IAlgebraEternalVirtualPool(farmingCenter.virtualPoolAddresses(address(pool)));
            
            // Get farm info directly from farming contract
            (uint128 liquidity, int24 tickLower, int24 tickUpper, uint256 innerRewardGrowth0Last, uint256 innerRewardGrowth1Last) = farmingCenter.eternalFarming().farms(tokenId, incentiveId);

            // Get simulated inner rewards growth
            (uint256 innerRewardGrowth0, uint256 innerRewardGrowth1) = simulateRewardsAndGrowth(
                virtualPool,
                tickLower,
                tickUpper
            );
            unchecked {
                // Calculate rewards
                if (innerRewardGrowth0 != innerRewardGrowth0Last) {
                    reward = FullMath.mulDiv(innerRewardGrowth0 - innerRewardGrowth0Last, liquidity, Q128);
                }
                if (innerRewardGrowth1 != innerRewardGrowth1Last) {
                    bonusReward = FullMath.mulDiv(innerRewardGrowth1 - innerRewardGrowth1Last, liquidity, Q128);
                }
            }
        }
    }

    function simulateRewardsAndGrowth(
        IAlgebraEternalVirtualPool virtualPool,
        int24 bottomTick,
        int24 topTick
    ) internal view returns (
        uint256 rewardGrowthInside0,
        uint256 rewardGrowthInside1
    ) {
        uint256 timeDelta = block.timestamp - virtualPool.prevTimestamp();
        
        // Get initial values
        (uint256 totalRewardGrowth0, uint256 totalRewardGrowth1) = virtualPool.totalRewardGrowth();
        int24 _globalTick = virtualPool.globalTick();

        if (timeDelta > 0) {
            uint128 currentLiquidity = virtualPool.currentLiquidity();
            if (currentLiquidity > 0) {
                (uint128 rewardRate0, uint128 rewardRate1) = virtualPool.rewardRates();
                (uint128 rewardReserve0, uint128 rewardReserve1) = virtualPool.rewardReserves();

                uint256 reward0 = uint256(rewardRate0) * timeDelta;
                uint256 reward1 = uint256(rewardRate1) * timeDelta;

                if (reward0 > rewardReserve0) reward0 = rewardReserve0;
                if (reward1 > rewardReserve1) reward1 = rewardReserve1;

                if (reward0 > 0) totalRewardGrowth0 += FullMath.mulDiv(reward0, Q128, currentLiquidity);
                if (reward1 > 0) totalRewardGrowth1 += FullMath.mulDiv(reward1, Q128, currentLiquidity);
            }
        }
        
        return getVirtualFeeGrowthInside(
            virtualPool,
            bottomTick,
            topTick,
            _globalTick,
            totalRewardGrowth0,
            totalRewardGrowth1
        );
    }

    function getVirtualFeeGrowthInside(
        IAlgebraEternalVirtualPool virtualPool,
        int24 bottomTick,
        int24 topTick,
        int24 currentTick,
        uint256 totalRewardGrowth0,
        uint256 totalRewardGrowth1
    ) internal view returns (uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) {
        (,,,, uint256 outerFeeGrowth0TokenLower, uint256 outerFeeGrowth1TokenLower) = virtualPool.ticks(bottomTick);
        (,,,, uint256 outerFeeGrowth0TokenUpper, uint256 outerFeeGrowth1TokenUpper) = virtualPool.ticks(topTick);

        unchecked {
            if (currentTick < bottomTick) {
                feeGrowthInside0X128 = outerFeeGrowth0TokenLower - outerFeeGrowth0TokenUpper;
                feeGrowthInside1X128 = outerFeeGrowth1TokenLower - outerFeeGrowth1TokenUpper;
            } else if (currentTick < topTick) {
                feeGrowthInside0X128 = totalRewardGrowth0 - outerFeeGrowth0TokenLower - outerFeeGrowth0TokenUpper;
                feeGrowthInside1X128 = totalRewardGrowth1 - outerFeeGrowth1TokenLower - outerFeeGrowth1TokenUpper;
            } else {
                feeGrowthInside0X128 = outerFeeGrowth0TokenUpper - outerFeeGrowth0TokenLower;
                feeGrowthInside1X128 = outerFeeGrowth1TokenUpper - outerFeeGrowth1TokenLower;
            }
        }
    }

    function getLastSecondRewards(
        uint256 tokenId,
        IFarmingCenter farmingCenter,
        IAlgebraPool pool
    ) internal view returns (uint256 reward, uint256 bonusReward) {
        if (tokenId != 0) {
            bytes32 incentiveId = farmingCenter.deposits(tokenId);
            IAlgebraEternalVirtualPool virtualPool = IAlgebraEternalVirtualPool(farmingCenter.virtualPoolAddresses(address(pool)));
            
            // Get farm info
            (uint128 liquidity, int24 tickLower, int24 tickUpper, , ) = 
                farmingCenter.eternalFarming().farms(tokenId, incentiveId);

            // Only proceed if position has liquidity
            if (liquidity > 0) {
                uint128 currentLiquidity = virtualPool.currentLiquidity();
                if (currentLiquidity > 0) {
                    (uint128 rewardRate0, uint128 rewardRate1) = virtualPool.rewardRates();
                    int24 _globalTick = virtualPool.globalTick();

                    // Check if position is in range to receive rewards
                    if (_globalTick >= tickLower && _globalTick < tickUpper) {
                        // Calculate reward per second for this position
                        reward = FullMath.mulDiv(uint256(rewardRate0), liquidity, currentLiquidity);
                        bonusReward = FullMath.mulDiv(uint256(rewardRate1), liquidity, currentLiquidity);
                        
                        // Cap by available reserves
                        (uint128 rewardReserve0, uint128 rewardReserve1) = virtualPool.rewardReserves();
                        if (reward > rewardReserve0) reward = rewardReserve0;
                        if (bonusReward > rewardReserve1) bonusReward = rewardReserve1;
                    }
                }
            }
        }
    }

    function simulateOneSecondGrowth(
        IAlgebraEternalVirtualPool virtualPool,
        int24 bottomTick,
        int24 topTick
    ) internal view returns (uint256 rewardGrowthInside0, uint256 rewardGrowthInside1) {
        // Force timeDelta to be exactly 1 second
        uint256 timeDelta = 1;
        
        // Get initial values
        (uint256 totalRewardGrowth0, uint256 totalRewardGrowth1) = virtualPool.totalRewardGrowth();
        int24 _globalTick = virtualPool.globalTick();

        uint128 currentLiquidity = virtualPool.currentLiquidity();
        if (currentLiquidity > 0) {
            (uint128 rewardRate0, uint128 rewardRate1) = virtualPool.rewardRates();
            (uint128 rewardReserve0, uint128 rewardReserve1) = virtualPool.rewardReserves();

            uint256 reward0 = uint256(rewardRate0) * timeDelta;
            uint256 reward1 = uint256(rewardRate1) * timeDelta;

            if (reward0 > rewardReserve0) reward0 = rewardReserve0;
            if (reward1 > rewardReserve1) reward1 = rewardReserve1;

            if (reward0 > 0) totalRewardGrowth0 += FullMath.mulDiv(reward0, Q128, currentLiquidity);
            if (reward1 > 0) totalRewardGrowth1 += FullMath.mulDiv(reward1, Q128, currentLiquidity);
        }
        
        return getVirtualFeeGrowthInside(
            virtualPool,
            bottomTick,
            topTick,
            _globalTick,
            totalRewardGrowth0,
            totalRewardGrowth1
        );
    }
}