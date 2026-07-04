// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "./CommonTypes.sol";

/**
 * @title HarvestTypes
 * @notice Harvest storage types
 * @author Altitude Labs
 **/

library HarvestTypes {
    /// @notice track the commitable position for a user
    struct CommitPosition {
        uint256 blockNumber;
        uint256 harvestIndex;
        uint256 userClaimableEarnings;
        uint256 userHarvestJoiningBlock;
        uint256 userHarvestUncommitedInterest;
        uint256 userHarvestUncommittedCosts;
        uint256 userHarvestUncommittedEarnings;
        uint256 vaultReserveUncommitted;
        CommonTypes.UserPosition up;
    }

    /// @notice track data for a harvest
    struct HarvestData {
        uint256 harvestIndex;
        uint256 lenderRewards;
        uint256 farmEarnings;
        uint256 farmLoss;
        uint256 activeAssetsThreshold;
        uint256 divertEarningsThreshold;
        uint256 vaultActiveAssets;
        uint256 supplyIndex;
        uint256 borrowIndex;
        uint256 price;
        uint256 blockNumber;
    }

    /// @notice track data for a user's harvest
    struct UserHarvestData {
        uint256 harvestIndex;
        uint256 harvestEarnings;
        uint256 harvestCosts;
        uint256 harvestJoiningBlock;
        uint256 claimableEarnings;
        uint256 uncommitedInterest;
        uint256 uncommittedCosts;
        uint256 uncommittedEarnings;
        uint256 vaultReserveUncommitted;
    }

    /// @notice harvest storage
    struct HarvestStorage {
        uint256 vaultReserve;
        uint256 uncommittedEarnings;
        // This is at the last harvest's borrow index
        uint256 uncommittedCosts;
        uint256 userClaimableEarnings;
        // Real means money actually present in the farm. Not owed by negative active asset users.
        uint256 realClaimableEarnings;
        uint256 realUncommittedEarnings;
        HarvestData[] harvests;
        uint256 reserveFactor;
        mapping(address => UserHarvestData) userHarvest; // user => userHarvestData
    }
}
