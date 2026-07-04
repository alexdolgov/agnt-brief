// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { MaturityPools, Pool} from "../MaturityPools.sol";

/* solhint-disable */
contract TEST_MaturityPools is MaturityPools {
    function initPool(Pool calldata pool) public returns (uint16) {
        return _initPool(pool);
    }

  function updatePool(uint16 poolId,  uint32 baseWeight, uint32 maturedWeightBonus, uint128 fullMaturity) public {
    _updatePool(poolId, baseWeight, maturedWeightBonus, fullMaturity);
  }

    function getWeight(
        uint16 poolId,
        uint256 amount,
        uint256 timeMarker
    ) public view returns (uint256) {
        Pool memory pool = getPoolById(poolId);
        return _getWeight(pool, amount, timeMarker);
    }

    function getMaturity(
        uint16 poolId,
        uint256 timeMarker
    ) public view returns (uint256) {
        Pool memory pool = getPoolById(poolId);
        return _getMaturity(pool, timeMarker);
    }
}