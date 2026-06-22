// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

interface IBigFarm {
    struct Farmer {
        uint256 stakeAmount;
        uint256 rewardPerStakeWithBuffer;
        address initiator;
    }

    function getFarmer(uint256 farmId, address beneficiary)
        external
        view
        returns (
            Farmer memory farmer,
            uint256 totalPendingReward,
            uint256 currentBlock
        );
}
