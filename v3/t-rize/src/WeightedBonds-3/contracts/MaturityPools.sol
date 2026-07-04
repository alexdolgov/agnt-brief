// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { IPoolMaturity, Pool, PoolWithId } from "contracts/interfaces/IPoolMaturity.sol";
/**
 * @title MaturityPools
 * @author Michael Duchesne (michael.duchesne@t-rize.io)
 * @notice 
 * 
 * The contract contains information about the different pools and their weights.
 * Moreover it computes the maturity and weight for a specific amount of tokens in a pool.
 * \
 * The weight of a token starts at `baseWeight` and increases linearly
 * to `baseWeight + maturedWeightBonus` when `fullMaturity` is reached.
 * 
 * ### Weight Formula
 * `weight = amount * (baseWeight + MIN(timeSpentInPool * maturedWeightBonus / fullMaturity), maturedWeightBonus)`
 * 
 * ### Example
 * A user deposited 5 tokens in a pool with `baseWeight = 2` and `maturedWeightBonus = 3` and `fullMaturity = 9`
 * at `t+00` (when the user deposited), his weight is `5 * 2 = 10`\
 * at `t+03`, `5 * (2 + (3 * 03 / 9)) = 15`\
 * at `t+06`, `5 * (2 + (3 * 06 / 9)) = 20`\
 * at `t+09`, `5 * (2 + (3 * 09 / 9)) = 25`\
 * at `t+10`, `5 * (2 + (3 * 10 / 9)) > 25` => weight is capped when fullMaturity is reached
 */
contract MaturityPools is IPoolMaturity {
    uint64 public constant MAX_MATURITY = 10 ** 18;

    uint16 private _poolId;
    mapping(uint16 => Pool) private _poolsMeta;
    mapping(address => uint16) private _pools;

    event PoolUpdated(uint16 indexed poolId, uint32 baseWeight, uint32 maturedWeightBonus, uint128 fullMaturity);

    error PoolAlreadyInit(address token);
    error TokenIsNull();
    error PoolNotInitialized(uint16 poolId);

    function getPoolById(uint16 poolId) public view returns (Pool memory) {
        return _poolsMeta[poolId];
    }

    function getPoolByAddress(
        address token
    ) public view returns (PoolWithId memory) {
        uint16 poolId = _getPoolId(token);
        Pool memory pool = getPoolById(poolId);
        return
            PoolWithId({
                id: poolId,
                token: pool.token,
                baseWeight: pool.baseWeight,
                maturedWeightBonus: pool.maturedWeightBonus,
                fullMaturity: pool.fullMaturity
            });
    }

    function poolExists(address token) public view returns(bool) {
        return _poolExists(token);
    }

    function _initPool(Pool memory pool) internal returns (uint16) {
        if(pool.token == address(0)) {
            revert TokenIsNull();
        }
        if (_poolExists(pool.token)) {
            revert PoolAlreadyInit(pool.token);
        }
        _poolId += 1;
        _pools[pool.token] = _poolId;
        _poolsMeta[_poolId] = pool;
        emit PoolUpdated(_poolId, pool.baseWeight, pool.maturedWeightBonus, pool.fullMaturity);
        return _poolId;
    }

    function _updatePool(uint16 poolId,  uint32 baseWeight, uint32 maturedWeightBonus, uint128 fullMaturity) internal {
        Pool storage pool = _poolsMeta[poolId];
        if(pool.token == address(0)) {
            revert PoolNotInitialized(poolId);
        }

        pool.baseWeight = baseWeight;
        pool.maturedWeightBonus = maturedWeightBonus;
        pool.fullMaturity = fullMaturity;
        emit PoolUpdated(poolId, baseWeight, maturedWeightBonus, fullMaturity);
    }

    function _getPoolId(address token) internal view returns (uint16) {
        return _pools[token];
    }

    function _poolExists(address token) internal view returns (bool) {
        return _getPoolId(token) > 0;
    }

    /**
     * Based on the pool config for weight, it computes the current matured weight of each token * the amount of token.
     * @dev to normalize and compare weight between pools, you need to divide by the 10 ** token.decimals()
     * @param pool pool struct for maturity settings
     * @param bondAmount amount of token bonded
     * @param bondTimeMarker time market for maturity
     * @return the weight of the NFT
     */
    function _getWeight(
        Pool memory pool,
        uint256 bondAmount,
        uint256 bondTimeMarker
    ) internal view returns (uint256) {
        uint256 maturity = _getMaturity(pool, bondTimeMarker);
        uint256 baseWeight = bondAmount * pool.baseWeight;
        uint256 maturityBonusPerToken = (pool.maturedWeightBonus * maturity) /
            MAX_MATURITY;
        uint256 maturityBonus = bondAmount * maturityBonusPerToken;
        return (baseWeight + maturityBonus);
    }

    /**
     * @notice Used to compute how mature the NFT is. Uses cross product for linear increase.
     * @dev Maturity is 0 if `bondTimeMarker` is in the future
     * @param pool pool struct for maturity settings
     * @param startTimestamp time marker to determine maturity
     * @return maturity % where MAX_MATURITY is 100%
     */
    function _getMaturity(
        Pool memory pool,
        uint256 startTimestamp
    ) internal view returns (uint256) {
        /**
         * Small time manipulation is not critical as it will 
         * increase maturity only by a few points
        **/
        if(block.timestamp < startTimestamp) { // solhint-disable-line not-rely-on-time
            return 0;
        }
        uint256 timeDiff = block.timestamp - startTimestamp; // solhint-disable-line not-rely-on-time
        if (timeDiff >= pool.fullMaturity) {
            return MAX_MATURITY;
        }
        return (timeDiff * MAX_MATURITY) / pool.fullMaturity;
    }
}
