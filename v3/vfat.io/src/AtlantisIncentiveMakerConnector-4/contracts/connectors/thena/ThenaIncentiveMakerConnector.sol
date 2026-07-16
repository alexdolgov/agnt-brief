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

    function earned(
        NftPosition calldata position,
        address[] memory // rewardTokens
    ) external view override returns (uint256[] memory) {
        (IncentiveKey memory incentiveKey, IFarmingCenter farmingCenter) =
            _get_incentive_key_and_farming_center(position);
        (bool success, bytes memory result) = address(farmingCenter).staticcall(
            abi.encodeCall(
                IFarmingCenter.collectRewards, (incentiveKey, position.tokenId)
            )
        );
        if (!success || result.length != 64) revert();
        (uint256 reward, uint256 bonusReward) =
            abi.decode(result, (uint256, uint256));
        uint256[] memory rewards = new uint256[](2);
        rewards[0] = reward;
        rewards[1] = bonusReward;
        return rewards;
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
