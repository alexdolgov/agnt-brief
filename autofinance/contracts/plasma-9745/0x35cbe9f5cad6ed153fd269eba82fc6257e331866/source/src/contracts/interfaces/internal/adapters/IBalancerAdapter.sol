// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

interface IBalancerAdapter {
    /**
     * @dev Add liquidity to Balancer pool
     * @param poolAddress Balancer pool address
     * @param vaultAddress Balancer vault address
     * @param amounts Amounts of tokens to add
     * @param tokens Addresses of ALL the pool tokens
     * @param minLpMintAmount Minimum amount of LP tokens expected to be minted
     * @param isComposablePool Whether the pool is a Composable pool or a MetaStable pool
     */
    function addLiquidity(
        address poolAddress,
        address vaultAddress,
        uint256[] memory amounts,
        address[] memory tokens,
        uint256 minLpMintAmount,
        bool isComposablePool
    ) external;

    /**
     * @dev Remove liquidity from Balancer pool
     * @param poolAddress Balancer pool address
     * @param vaultAddress Balancer vault address
     * @param lpAmount Amount of LP tokens to remove
     * @param tokens Addresses of ALL the pool tokens
     * @param minAmounts Minimum amounts of tokens to receive
     * @param isComposablePool Whether the pool is a Composable pool or a MetaStable pool
     */
    function removeLiquidity(
        address poolAddress,
        address vaultAddress,
        uint256 lpAmount,
        address[] memory tokens,
        uint256[] memory minAmounts,
        bool isComposablePool
    ) external;

    /**
     * @dev Get the vault address from a Balancer pool
     */
    function getVaultByPool(
        address poolAddress
    ) external view returns (address);
}
