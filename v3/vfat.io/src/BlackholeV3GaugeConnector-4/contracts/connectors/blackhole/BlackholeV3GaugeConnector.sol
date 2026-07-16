// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { ThenaIncentiveMakerConnector } from
    "contracts/connectors/thena/ThenaIncentiveMakerConnector.sol";
import {
    IIncentiveMaker,
    IncentiveKey
} from "contracts/interfaces/external/thena/IIncentiveMaker.sol";
import { IFarmingCenter } from
    "contracts/interfaces/external/thena/IFarmingCenter.sol";
import { NftPosition } from "contracts/interfaces/INftFarmConnector.sol";
import { IThenaNonfungiblePositionManager } from
    "contracts/interfaces/external/thena/IThenaNonfungiblePositionManager.sol";

interface IBlackholeGauge {
    function poolAddress() external view returns (address);
    function farmingCenter() external view returns (address);
}

interface IBlackholeFarmingCenter {
    function eternalFarming() external view returns (address);
}

interface IBlackholeEternalFarming {
    function incentiveKeys(
        address pool
    )
        external
        view
        returns (
            address rewardToken,
            address bonusRewardToken,
            address poolAddress,
            uint256 nonce
        );
}

contract BlackholeV3GaugeConnector is ThenaIncentiveMakerConnector {
    function _get_incentive_key_and_farming_center(
        NftPosition calldata position
    )
        internal
        view
        virtual
        override
        returns (IncentiveKey memory, IFarmingCenter)
    {
        IBlackholeGauge gauge = IBlackholeGauge(position.farm.stakingContract);
        IBlackholeFarmingCenter farmingCenter =
            IBlackholeFarmingCenter(gauge.farmingCenter());
        address eternalFarming = farmingCenter.eternalFarming();
        address pool = gauge.poolAddress();
        (address rewardToken, address bonusRewardToken,, uint256 nonce) =
            IBlackholeEternalFarming(eternalFarming).incentiveKeys(pool);
        return (
            IncentiveKey({
                rewardToken: rewardToken,
                bonusRewardToken: bonusRewardToken,
                pool: pool,
                nonce: nonce
            }),
            IFarmingCenter(gauge.farmingCenter())
        );
    }
}
