// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {
    INftFarmConnector,
    NftPosition
} from "contracts/interfaces/INftFarmConnector.sol";
import { IThenaNonfungiblePositionManager } from
    "contracts/interfaces/external/thena/IThenaNonfungiblePositionManager.sol";
import { IThenaAlgebraFactory } from
    "contracts/interfaces/external/thena/IThenaAlgebraFactory.sol";
import {
    IIncentiveMaker,
    IncentiveKey
} from "contracts/interfaces/external/thena/IIncentiveMaker.sol";
import { IFarmingCenter } from
    "contracts/interfaces/external/thena/IFarmingCenter.sol";
import { IAlgebraEternalFarming } from
    "contracts/interfaces/external/thena/IAlgebraEternalFarming.sol";
import { IVirtualFarmingPool } from
    "contracts/interfaces/external/thena/IVirtualFarmingPool.sol";
import { FullMath } from
    "contracts/interfaces/external/uniswap/v3/libraries/FullMath.sol";
import { FixedPoint128 } from
    "contracts/interfaces/external/uniswap/v3/libraries/FixedPoint128.sol";

contract ThenaIncentiveMakerConnector is INftFarmConnector {
    function depositExistingNft(
        NftPosition calldata position,
        bytes calldata // extraData
    ) external payable override {
        (IncentiveKey memory incentiveKey, IFarmingCenter farmingCenter) =
            _get_incentive_key_and_farming_center(position);
        IThenaNonfungiblePositionManager(address(position.nft))
            .approveForFarming(position.tokenId, true, address(farmingCenter));
        farmingCenter.enterFarming(incentiveKey, position.tokenId);
    }

    function withdrawNft(
        NftPosition calldata position,
        bytes calldata // extraData
    ) external payable override {
        (IncentiveKey memory incentiveKey, IFarmingCenter farmingCenter) =
            _get_incentive_key_and_farming_center(position);
        farmingCenter.exitFarming(incentiveKey, position.tokenId);
    }

    function claim(
        NftPosition calldata position,
        address[] memory, // rewardTokens
        uint128, // maxAmount0
        uint128, // maxAmount1
        bytes calldata // extraData
    ) external payable override {
        (IncentiveKey memory incentiveKey, IFarmingCenter farmingCenter) =
            _get_incentive_key_and_farming_center(position);
        (uint256 reward, uint256 bonusReward) =
            farmingCenter.collectRewards(incentiveKey, position.tokenId);
        if (reward > 0) {
            farmingCenter.claimReward(
                incentiveKey.rewardToken, address(this), reward
            );
        }
        if (bonusReward > 0) {
            farmingCenter.claimReward(
                incentiveKey.bonusRewardToken, address(this), bonusReward
            );
        }
    }

    function isStaked(
        address, // user
        NftPosition calldata position
    ) external view override returns (bool) {
        IIncentiveMaker incentiveMaker =
            IIncentiveMaker(position.farm.stakingContract);
        IFarmingCenter farmingCenter =
            IFarmingCenter(incentiveMaker.farmingCenter());
        return farmingCenter.deposits(position.tokenId) != bytes32(0);
    }

    function earned(
        address, // user
        NftPosition calldata position,
        address[] memory // rewardTokens
    ) external view override returns (uint256[] memory) {
        (IncentiveKey memory incentiveKey, IFarmingCenter farmingCenter) =
            _get_incentive_key_and_farming_center(position);

        // Get the virtual pool address
        address virtualPool = IIncentiveMaker(position.farm.stakingContract)
            .poolToVirtualPool(incentiveKey.pool);

        IVirtualFarmingPool vPool = IVirtualFarmingPool(virtualPool);

        (uint256 pendingReward0, uint256 pendingReward1) =
        _calculatePendingRewards(position, vPool, farmingCenter, incentiveKey);

        (uint256 reward, uint256 bonusReward) = IAlgebraEternalFarming(
            farmingCenter.eternalFarming()
        ).getRewardInfo(incentiveKey, position.tokenId);

        uint256[] memory rewards = new uint256[](2);
        rewards[0] = reward + pendingReward0;
        rewards[1] = bonusReward + pendingReward1;

        return rewards;
    }

    function _calculatePendingRewards(
        NftPosition calldata position,
        IVirtualFarmingPool vPool,
        IFarmingCenter farmingCenter,
        IncentiveKey memory incentiveKey
    ) internal view returns (uint256 pendingReward0, uint256 pendingReward1) {
        // Calculate updated reward growth
        (uint256 totalRewardGrowth0, uint256 totalRewardGrowth1) =
            _calculateUpdatedRewardGrowth(vPool);

        // Get position info and calculate reward growth inside
        (uint256 rewardGrowthInside0, uint256 rewardGrowthInside1) =
        _calculateRewardGrowthInside(
            position, vPool, totalRewardGrowth0, totalRewardGrowth1
        );

        // Get position liquidity and calculate pending rewards
        uint128 positionLiquidity =
            _getPositionLiquidity(position, farmingCenter, incentiveKey);

        pendingReward0 = FullMath.mulDiv(
            rewardGrowthInside0, positionLiquidity, FixedPoint128.Q128
        );
        pendingReward1 = FullMath.mulDiv(
            rewardGrowthInside1, positionLiquidity, FixedPoint128.Q128
        );
    }

    function _calculateUpdatedRewardGrowth(
        IVirtualFarmingPool vPool
    )
        internal
        view
        returns (uint256 totalRewardGrowth0, uint256 totalRewardGrowth1)
    {
        // Get current timestamp and virtual pool state
        uint32 currTimestamp = uint32(block.timestamp);
        uint32 prevTimestamp = vPool.prevTimestamp();
        uint128 currentLiquidity = vPool.currentLiquidity();
        (totalRewardGrowth0, totalRewardGrowth1) = vPool.totalRewardGrowth();
        (uint128 rewardRate0, uint128 rewardRate1) = vPool.rewardRates();
        (uint128 rewardReserve0, uint128 rewardReserve1) =
            vPool.rewardReserves();

        // Calculate new reward growth if there's liquidity
        if (currentLiquidity > 0) {
            uint256 timeDelta = currTimestamp - prevTimestamp;

            if (timeDelta > 0) {
                uint256 reward0 = rewardRate0 * timeDelta;
                uint256 reward1 = rewardRate1 * timeDelta;

                // Cap rewards by available reserves
                if (reward0 > rewardReserve0) reward0 = rewardReserve0;
                if (reward1 > rewardReserve1) reward1 = rewardReserve1;

                // Update reward growth
                if (reward0 > 0) {
                    totalRewardGrowth0 += FullMath.mulDiv(
                        reward0, FixedPoint128.Q128, currentLiquidity
                    );
                }
                if (reward1 > 0) {
                    totalRewardGrowth1 += FullMath.mulDiv(
                        reward1, FixedPoint128.Q128, currentLiquidity
                    );
                }
            }
        }
    }

    function _calculateRewardGrowthInside(
        NftPosition calldata position,
        IVirtualFarmingPool vPool,
        uint256 totalRewardGrowth0,
        uint256 totalRewardGrowth1
    )
        internal
        view
        returns (uint256 rewardGrowthInside0, uint256 rewardGrowthInside1)
    {
        // Get current tick from the virtual pool
        int24 globalTick = vPool.globalTick();

        // Get position info to determine tick range
        (,,,,, int24 tickLower, int24 tickUpper,,,,,) =
        IThenaNonfungiblePositionManager(address(position.nft)).positions(
            position.tokenId
        );

        // Calculate reward growth inside the position's tick range
        (rewardGrowthInside0, rewardGrowthInside1) = _getRewardGrowthInside(
            vPool,
            tickLower,
            tickUpper,
            globalTick,
            totalRewardGrowth0,
            totalRewardGrowth1
        );
    }

    function _getPositionLiquidity(
        NftPosition calldata position,
        IFarmingCenter farmingCenter,
        IncentiveKey memory incentiveKey
    ) internal view returns (uint128 positionLiquidity) {
        // Try to get position liquidity from the farming center
        // This would typically be stored in the farming center
        // For now, we'll use a placeholder - this should be the actual position
        // liquidity
        positionLiquidity = 0; // TODO: Get actual position liquidity from
            // farming center

        // Alternative approach: try to get from eternal farming contract
        try IAlgebraEternalFarming(farmingCenter.eternalFarming()).farms(
            position.tokenId,
            keccak256(
                abi.encodePacked(
                    incentiveKey.rewardToken,
                    incentiveKey.bonusRewardToken,
                    incentiveKey.pool,
                    incentiveKey.nonce
                )
            )
        ) returns (uint128 liquidity, int24, int24, uint256, uint256) {
            positionLiquidity = liquidity;
        } catch {
            // If that fails, keep positionLiquidity as 0
        }
    }

    function _getRewardGrowthInside(
        IVirtualFarmingPool vPool,
        int24 tickLower,
        int24 tickUpper,
        int24 tickCurrent,
        uint256 totalRewardGrowth0,
        uint256 totalRewardGrowth1
    )
        internal
        view
        returns (uint256 rewardGrowthInside0, uint256 rewardGrowthInside1)
    {
        // Get tick information for lower and upper ticks
        (
            ,
            ,
            ,
            ,
            uint256 outerFeeGrowth0TokenLower,
            uint256 outerFeeGrowth1TokenLower
        ) = vPool.ticks(tickLower);
        (
            ,
            ,
            ,
            ,
            uint256 outerFeeGrowth0TokenUpper,
            uint256 outerFeeGrowth1TokenUpper
        ) = vPool.ticks(tickUpper);

        // Calculate reward growth below for token0
        uint256 rewardGrowthBelow0;
        if (tickCurrent >= tickLower) {
            rewardGrowthBelow0 = outerFeeGrowth0TokenLower;
        } else {
            rewardGrowthBelow0 = totalRewardGrowth0 - outerFeeGrowth0TokenLower;
        }

        // Calculate reward growth above for token0
        uint256 rewardGrowthAbove0;
        if (tickCurrent < tickUpper) {
            rewardGrowthAbove0 = outerFeeGrowth0TokenUpper;
        } else {
            rewardGrowthAbove0 = totalRewardGrowth0 - outerFeeGrowth0TokenUpper;
        }

        // Calculate reward growth below for token1
        uint256 rewardGrowthBelow1;
        if (tickCurrent >= tickLower) {
            rewardGrowthBelow1 = outerFeeGrowth1TokenLower;
        } else {
            rewardGrowthBelow1 = totalRewardGrowth1 - outerFeeGrowth1TokenLower;
        }

        // Calculate reward growth above for token1
        uint256 rewardGrowthAbove1;
        if (tickCurrent < tickUpper) {
            rewardGrowthAbove1 = outerFeeGrowth1TokenUpper;
        } else {
            rewardGrowthAbove1 = totalRewardGrowth1 - outerFeeGrowth1TokenUpper;
        }

        rewardGrowthInside0 =
            totalRewardGrowth0 - rewardGrowthBelow0 - rewardGrowthAbove0;
        rewardGrowthInside1 =
            totalRewardGrowth1 - rewardGrowthBelow1 - rewardGrowthAbove1;
    }

    function _get_incentive_key_and_farming_center(
        NftPosition calldata position
    ) internal view virtual returns (IncentiveKey memory, IFarmingCenter) {
        IIncentiveMaker incentiveMaker =
            IIncentiveMaker(position.farm.stakingContract);
        IThenaNonfungiblePositionManager nonfungiblePositionManager =
            IThenaNonfungiblePositionManager(address(position.nft));
        (,, address token0, address token1,,,,,,,,) =
            nonfungiblePositionManager.positions(position.tokenId);
        address pool = IThenaAlgebraFactory(
            nonfungiblePositionManager.factory()
        ).poolByPair(token0, token1);
        (address rewardToken, address bonusRewardToken,, uint256 nonce) =
            incentiveMaker.poolToKey(pool);
        return (
            IncentiveKey({
                rewardToken: rewardToken,
                bonusRewardToken: bonusRewardToken,
                pool: pool,
                nonce: nonce
            }),
            IFarmingCenter(incentiveMaker.farmingCenter())
        );
    }
}
