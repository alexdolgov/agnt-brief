// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {IRewardDistributor} from "./interfaces/IRewardDistributor.sol";

contract Lens {
    function getClaimableRewards(
        address rewardDistributor,
        address user,
        uint256 pageNumber,
        uint256 perPage
    )
        external
        view
        returns (
            uint256[] memory rewardDistributionIds,
            IRewardDistributor.ClaimInfo[] memory claimInfo
        )
    {
        if (perPage == 0) {
            return (rewardDistributionIds, claimInfo);
        }

        uint256 startId = pageNumber * perPage;
        uint256 rewardDistributionsLength = IRewardDistributor(
            rewardDistributor
        ).rewardDistributionsLength();
        if (startId >= rewardDistributionsLength) {
            return (rewardDistributionIds, claimInfo);
        }
        uint256 endId = startId + perPage;
        if (endId > rewardDistributionsLength) {
            endId = rewardDistributionsLength;
        }
        uint256 length = endId - startId;
        if (length == 0) {
            return (rewardDistributionIds, claimInfo);
        }

        rewardDistributionIds = new uint256[](length);
        claimInfo = new IRewardDistributor.ClaimInfo[](length);
        uint256 currentIndex = 0;

        uint256[] memory tempRewardDistributionIds = new uint256[](length);

        for (uint256 i = 0; i < length; ++i) {
            tempRewardDistributionIds[i] = startId + i;
        }

        IRewardDistributor.ClaimInfo[]
            memory tempClaimInfo = IRewardDistributor(rewardDistributor)
                .claimable(user, tempRewardDistributionIds);

        for (uint256 i = 0; i < length; ++i) {
            if (tempClaimInfo[i].amount == 0) {
                continue;
            }

            claimInfo[currentIndex] = tempClaimInfo[i];
            rewardDistributionIds[currentIndex] = startId + i;
            ++currentIndex;
        }

        assembly {
            mstore(claimInfo, currentIndex)
            mstore(rewardDistributionIds, currentIndex)
        }
    }
}
