// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IDistributionManager } from "./IDistributionManager.sol";

// solhint-disable func-name-mixedcase

struct AccruedRewards {
    uint256 amount;
    bytes32 programId;
    address rewardToken;
}

interface ISiloIncentivesControllerCL is IDistributionManager {
    function SILO_INCENTIVES_CONTROLLER() external view returns (address);

    /**
     * @dev Claims reward for an user to the desired address, on all the assets of the lending pool,
     * accumulating the pending rewards
     * @param _to Address that will be receiving the rewards
     * @return accruedRewards
     */
    function claimRewards(
        address _to
    ) external returns (AccruedRewards[] memory accruedRewards);

    /**
     * @dev Claims reward for an user to the desired address, on all the assets of the lending pool,
     * accumulating the pending rewards
     * @param _to Address that will be receiving the rewards
     * @param _programNames The incentives program names
     * @return accruedRewards
     */
    function claimRewards(
        address _to,
        string[] calldata _programNames
    ) external returns (AccruedRewards[] memory accruedRewards);
}
