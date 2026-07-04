// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {StorageLocations} from "@src/Utils/StorageSlotAllocator.sol";

import {IRewardHandler} from "@src/Interfaces/IRewardHandler.sol";
import {IICNProtocolMini} from "@src/Interfaces/IICNProtocolMini.sol";
import {IPool} from "@src/Interfaces/IPool.sol";

contract PoolStore {
    // ERC-7201: Namespaced Storage
    bytes32 private constant POOL_STORAGE_LOCATION = StorageLocations.POOL;

    struct PoolStorage {
        /// admin controlled parameters
        // the ICN delegation contract
        IICNProtocolMini icnp;
        // the token that is being staked
        IERC20 asset;
        // the reward handler
        IRewardHandler rewardHandler;
        // address of the treasury where rewards will be farmed
        address treasury;
        // array of vault configs that define the composition of the portfolio
        IPool.VaultConfig[] portfolioConfig;
        // array of scalar node IDs that we can stake to
        uint256[] scalarNodeIDs;
        // the minimum size deposit for a single network collateral delegation
        uint256 minPortfolioDelegationSize;
        // the maximum size deposit for a single network collateral delegation
        uint256 maxPortfolioDelegationSize;
        // this is the number of seconds that must pass before we delegate again, this limits the rate at which we delegate to limit the number of total positions, even if we're over the trigger point
        uint256 delegationThrottleSeconds;
        // the amount of unclaimed rewards that must be available in any position before we will initiate a reward claim
        uint256 triggerInitiateRewardClaimAbs;
        // the max number of outstanding reward claims that can be initiated
        uint256 maxOutstandingRewardClaims;
        // the % of rewards to restake vs forward on to the reward handler - 1e18 = 100% restaked
        uint256 restakePercentage;
        // treasury fee is the take rate from claimed rewards - 1e18 = 100%
        uint256 treasuryFee;
        /// contract controlled variables
        // the total number of positions that have been created
        uint256 _totalPositions;
        // the total amount of assets that have been delegated to ICN
        uint256 _delegatedAssets;
        // the total amount of assets that are currently in pending reward claims, excluding treasury fees
        uint256 _pendingLPRewards;
        // the total amount of rewards that have been claimed from ICN
        uint256 _claimedLPRewards;
        // the total number of outstanding reward claims that have been initiated
        uint256 _totalOutstandingRewardClaims;
        // this is the last timestamp that we made a delegation
        uint256 _lastTimeStampCheckpoint;
        // the index in the scalarNodeIDs array of the next node ID to delegate to
        uint256 _nextNodeIndexToDelegateTo;
        // the total weight of all the vaults
        uint256 _totalPortfolioWeight;
        // emergency withdrawn assets
        uint256 _emergencyWithdrawnAssets;
        /// PoolV2 storage
        // percentage of the pool's total assets that should be kept in the reserve - 1e18 = 100%
        uint256 exitReservePercentage;
        // withdrawal fee to discourage flash-loan-style attacks - 1e18 = 100%
        uint256 exitFeePercentage;
    }

    /// @custom:storage-location erc7201:glif.storage.Pool
    function _getStorage() internal pure returns (PoolStorage storage $) {
        bytes32 position = POOL_STORAGE_LOCATION;
        assembly {
            $.slot := position
        }
    }
}
