// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;

interface ISquadV3PoolManagerStates {
    // get the fee for the pool
    function getFee(address pool, uint24 defaultFee) external view returns (uint24);
}

interface ISquadV3PoolManagerActions {
    function setFee(address pool, uint24 fee) external;
    function setFeeBatch(address[] calldata pools, uint24 fee) external;
    function toggleCustomFee(address pool) external;
}
