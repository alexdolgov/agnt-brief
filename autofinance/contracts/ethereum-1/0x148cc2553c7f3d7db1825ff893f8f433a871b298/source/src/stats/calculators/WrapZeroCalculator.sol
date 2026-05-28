// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

// solhint-disable var-name-mixedcase

import { IDexLSTStats } from "src/interfaces/stats/IDexLSTStats.sol";
import { IDestinationVault } from "src/interfaces/vault/IDestinationVault.sol";

contract WrapZeroCalculator is IDexLSTStats {
    IDexLSTStats public immutable wrap;

    constructor(
        address _wrap
    ) {
        wrap = IDexLSTStats(_wrap);
    }

    /// @notice Returns an empty struct, all values default or zero
    function current() external override returns (DexLSTStatsData memory dexLSTStatsData) {
        dexLSTStatsData = wrap.current();
        dexLSTStatsData.feeApr = 0;

        uint256 lstLen = dexLSTStatsData.lstStatsData.length;
        for (uint256 i = 0; i < lstLen; ++i) {
            dexLSTStatsData.lstStatsData[i].baseApr = 0;
            dexLSTStatsData.lstStatsData[i].discount = 0;
            for (uint256 d = 0; d < 10; ++d) {
                dexLSTStatsData.lstStatsData[i].discountHistory[d] = 0;
            }
        }

        dexLSTStatsData.stakingIncentiveStats.rewardTokens = new address[](0);
        dexLSTStatsData.stakingIncentiveStats.annualizedRewardAmounts = new uint256[](0);
        dexLSTStatsData.stakingIncentiveStats.periodFinishForRewards = new uint40[](0);
    }

    function lpToken() external view returns (address) {
        return IDestinationVault(msg.sender).underlying();
    }

    function pool() external view returns (address) {
        return IDestinationVault(msg.sender).getPool();
    }

    function getAddressId() external view returns (address) {
        return IDestinationVault(msg.sender).underlying();
    }
}
