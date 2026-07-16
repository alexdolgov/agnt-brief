// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IERC721Enumerable } from
    "@openzeppelin/contracts/interfaces/IERC721Enumerable.sol";

import { NftPosition } from "contracts/interfaces/INftFarmConnector.sol";
import { INonfungiblePositionManager } from
    "contracts/interfaces/external/uniswap/INonfungiblePositionManager.sol";
import { IMasterchefV3 } from "contracts/interfaces/external/IMasterchefV3.sol";
import { PancakeV3Connector } from
    "contracts/connectors/pancake/PancakeV3Connector.sol";
import { IPancakeV3LmPool } from
    "contracts/interfaces/external/pancake/IPancakeV3LmPool.sol";
import { IPancakeV3Pool } from
    "contracts/interfaces/external/pancake/IPancakeV3Pool.sol";
import { FullMath } from
    "contracts/interfaces/external/uniswap/v3/libraries/FullMath.sol";
import { FixedPoint128 } from
    "contracts/interfaces/external/uniswap/v3/libraries/FixedPoint128.sol";

contract PancakeMasterchefV3Connector is PancakeV3Connector {
    // Constants for reward calculation
    uint256 private constant REWARD_PRECISION = 1e12;
    uint256 private constant Q128 = 2 ** 128;

    function depositExistingNft(
        NftPosition calldata position,
        bytes calldata // extraData
    ) external payable override {
        IERC721Enumerable(position.nft).safeTransferFrom(
            address(this), position.farm.stakingContract, position.tokenId
        );
    }

    function withdrawNft(
        NftPosition calldata position,
        bytes calldata // extraData
    ) external payable override {
        IMasterchefV3(position.farm.stakingContract).withdraw(
            position.tokenId, address(this)
        );
    }

    function claim(
        NftPosition calldata position,
        address[] memory, // rewardTokens
        uint128 amount0Max,
        uint128 amount1Max,
        bytes calldata // extraData
    ) external payable override {
        IMasterchefV3(position.farm.stakingContract).harvest(
            position.tokenId, address(this)
        );
        if (amount0Max > 0 || amount1Max > 0) {
            INonfungiblePositionManager.CollectParams memory params =
            INonfungiblePositionManager.CollectParams({
                tokenId: position.tokenId,
                recipient: address(this),
                amount0Max: amount0Max,
                amount1Max: amount1Max
            });
            INonfungiblePositionManager(position.farm.stakingContract).collect(
                params
            );
        }
    }

    function isStaked(
        address user,
        NftPosition calldata position
    ) external view override returns (bool) {
        return IMasterchefV3(position.farm.stakingContract).userPositionInfos(
            position.tokenId
        ).user == user;
    }

    function earned(
        address, // user
        NftPosition calldata position,
        address[] calldata // rewardTokens
    ) external view override returns (uint256[] memory) {
        uint256[] memory rewardAmounts = new uint256[](1);

        // Get position info from MasterChef V3
        IMasterchefV3.UserPositionInfo memory userInfo = IMasterchefV3(
            position.farm.stakingContract
        ).userPositionInfos(position.tokenId);

        IMasterchefV3.PoolInfo memory poolInfo =
            IMasterchefV3(position.farm.stakingContract).poolInfo(userInfo.pid);

        IPancakeV3LmPool lmPool =
            IPancakeV3LmPool(IPancakeV3Pool(poolInfo.v3Pool).lmPool());

        // Get current timestamp and LM pool state
        uint32 currTimestamp = uint32(block.timestamp);
        uint32 lastRewardTimestamp = lmPool.lastRewardTimestamp();
        uint128 lmLiquidity = lmPool.lmLiquidity();
        uint256 rewardGrowthGlobalX128 = lmPool.rewardGrowthGlobalX128();

        // Calculate new reward growth global if there's liquidity
        if (lmLiquidity != 0) {
            (uint256 rewardPerSecond, uint256 endTime) = IMasterchefV3(
                position.farm.stakingContract
            ).getLatestPeriodInfo(poolInfo.v3Pool);

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
                    FullMath.mulDiv(
                        rewardPerSecond, FixedPoint128.Q128, REWARD_PRECISION
                    ),
                    lmLiquidity
                );
            }
        }

        // Get current tick from the pool
        (, int24 tickCurrent,,,,,) = IPancakeV3Pool(poolInfo.v3Pool).slot0();

        // Calculate reward growth inside the position's tick range
        uint256 rewardGrowthInsideX128 = getRewardGrowthInside(
            lmPool,
            userInfo.tickLower,
            userInfo.tickUpper,
            tickCurrent,
            rewardGrowthGlobalX128
        );

        // Calculate the difference in reward growth since last update
        uint256 rewardGrowthDelta =
            rewardGrowthInsideX128 - userInfo.rewardGrowthInside;

        // Calculate pending rewards based on liquidity and reward growth
        uint256 pendingRewards =
            FullMath.mulDiv(rewardGrowthDelta, userInfo.liquidity, Q128);

        rewardAmounts[0] = userInfo.reward + pendingRewards;

        return rewardAmounts;
    }

    function getRewardGrowthInside(
        IPancakeV3LmPool lmPool,
        int24 tickLower,
        int24 tickUpper,
        int24 tickCurrent,
        uint256 rewardGrowthGlobalX128
    ) internal view returns (uint256 rewardGrowthInsideX128) {
        // Get LM tick information for lower and upper ticks
        (,, uint256 rewardGrowthOutsideX128Lower) = lmPool.lmTicks(tickLower);
        (,, uint256 rewardGrowthOutsideX128Upper) = lmPool.lmTicks(tickUpper);

        if (tickCurrent < tickLower) {
            unchecked {
                rewardGrowthInsideX128 =
                    rewardGrowthOutsideX128Lower - rewardGrowthOutsideX128Upper;
            }
        } else if (tickCurrent < tickUpper) {
            unchecked {
                rewardGrowthInsideX128 = rewardGrowthGlobalX128
                    - rewardGrowthOutsideX128Lower - rewardGrowthOutsideX128Upper;
            }
        } else {
            unchecked {
                rewardGrowthInsideX128 =
                    rewardGrowthOutsideX128Upper - rewardGrowthOutsideX128Lower;
            }
        }
    }
}
