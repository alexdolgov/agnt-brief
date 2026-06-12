// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;


struct Pool {
    address token;
    uint32 baseWeight;
    uint32 maturedWeightBonus;
    uint128 fullMaturity;
}

struct PoolWithId {
    address token;
    uint16 id;
    uint32 baseWeight;
    uint32 maturedWeightBonus;
    uint128 fullMaturity;
    
}

interface IPoolMaturity {
    function getPoolById(uint16 poolId) external view returns (Pool memory);
    function getPoolByAddress(
        address token
    ) external view returns (PoolWithId memory);
    function poolExists(address token) external view returns(bool);
}