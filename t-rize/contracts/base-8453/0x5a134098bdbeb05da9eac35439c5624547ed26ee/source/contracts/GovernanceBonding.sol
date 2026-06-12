// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {WeightedBonds, Pool} from "./WeightedBonds.sol";
import {AccessRestricted} from "contracts/configuration/AccessRestricted.sol";

contract GovernanceBonding is WeightedBonds, AccessRestricted {
    error IllegalWarmupRelease();

    constructor(
        address bondNft,
        address accessList
    ) WeightedBonds(bondNft) AccessRestricted(accessList) {}

    /**
     * @notice
     * Defines the time required between breaking the bond and calling the release function
     * Requires caller to be committee
     * @param warmup time in seconds
     */
    function setReleaseWarmup(uint256 warmup) public onlyCommittee {
        if (warmup > 31 days) {
            revert IllegalWarmupRelease();
        }
        _setReleaseWarmup(warmup);
    }

    /**
     * adds a pool
     * @param pool pool struct
     */
    function initPool(Pool memory pool) public onlyCommittee returns (uint16) {
        return _initPool(pool);
    }

    /**
     * @notice Update the parameters of a pool
     * Requires caller to be committee
     * @dev a pool can be disabled if you set `baseWeight` and `maturedBonusWeight` to 0
     * @param poolId id of the pool
     * @param baseWeight new value for base weight
     * @param maturedWeightBonus new value for bonus
     * @param fullMaturity new value for maturity
     */
    function updatePool(
        uint16 poolId,
        uint32 baseWeight,
        uint32 maturedWeightBonus,
        uint128 fullMaturity
    ) public onlyCommittee {
        _updatePool(poolId, baseWeight, maturedWeightBonus, fullMaturity);
    }

    function addMigrator(address migrator) public onlyCommittee {
        _addMigrator(migrator);
    }

    function removeMigrator(address migrator) public onlyCommittee {
        _removeMigrator(migrator);
    }
}
