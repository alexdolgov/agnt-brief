// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "../interfaces/IPool.sol";
import "../process/LpPoolQueryProcess.sol";

contract PoolFacet is IPool {
    function getUsdPool() external view override returns (UsdPoolInfo memory) {
        return LpPoolQueryProcess.getUsdPool();
    }

    function getUsdPoolWithOracle(
        OracleProcess.OracleParam[] calldata oracles
    ) external view override returns (UsdPoolInfo memory) {
        return LpPoolQueryProcess.getUsdPoolWithOracle(oracles);
    }

    function getPool(address stakeToken) external view override returns (PoolInfo memory) {
        OracleProcess.OracleParam[] memory oracles;
        return LpPoolQueryProcess.getPool(stakeToken, oracles);
    }

    function getPoolWithOracle(
        address stakeToken,
        OracleProcess.OracleParam[] calldata oracles
    ) external view override returns (PoolInfo memory) {
        return LpPoolQueryProcess.getPool(stakeToken, oracles);
    }

    function getPools() external view override returns (PoolInfo[] memory) {
        OracleProcess.OracleParam[] memory oracles;
        return LpPoolQueryProcess.getAllPools(oracles);
    }

    function getAllPools(
        OracleProcess.OracleParam[] calldata oracles
    ) external view override returns (PoolInfo[] memory) {
        return LpPoolQueryProcess.getAllPools(oracles);
    }
}
