// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IVault } from "src/contracts/interfaces/external/balancer/IVault.sol";
import { IBalancerPool } from "src/contracts/interfaces/external/balancer/IBalancerPool.sol";
import { IBalancerComposableStablePool } from
    "src/contracts/interfaces/external/balancer/IBalancerComposableStablePool.sol";

import { IBalancerAdapter } from "src/contracts/interfaces/internal/adapters/IBalancerAdapter.sol";
import { Math } from "openzeppelin-contracts/utils/math/Math.sol";

contract BalancerAdapter is IBalancerAdapter {
    ///@dev For StablePool and MetaStablePool
    enum ExitKind {
        EXACT_BPT_IN_FOR_ONE_TOKEN_OUT,
        EXACT_BPT_IN_FOR_TOKENS_OUT,
        BPT_IN_FOR_EXACT_TOKENS_OUT
    }

    ///@dev For ComposableStablePool
    enum ExitKindComposable {
        EXACT_BPT_IN_FOR_ONE_TOKEN_OUT,
        BPT_IN_FOR_EXACT_TOKENS_OUT,
        EXACT_BPT_IN_FOR_ALL_TOKENS_OUT
    }

    /// @inheritdoc IBalancerAdapter
    function addLiquidity(
        address poolAddress,
        address vaultAddress,
        uint256[] memory amounts,
        address[] memory tokens,
        uint256 minLpMintAmount,
        bool isComposablePool
    ) external {
        IBalancerPool pool = IBalancerPool(poolAddress);
        IVault vault = IVault(vaultAddress);

        bytes32 poolId = pool.getPoolId();
        uint256[] memory amountsUser = _getUserAmounts(poolAddress, amounts, isComposablePool);

        bytes memory userData = abi.encode(IVault.JoinKind.EXACT_TOKENS_IN_FOR_BPT_OUT, amountsUser, minLpMintAmount);
        try pool.gyroConfig() returns (address cfg) {
            if (cfg != address(0)) {
                if (minLpMintAmount == 0) {
                    (uint256 token0Reserve,,,) = vault.getPoolTokenInfo(poolId, tokens[0]);
                    (uint256 token1Reserve,,,) = vault.getPoolTokenInfo(poolId, tokens[1]);

                    // We only support 2 token ECLP pools
                    uint256 joinAmt0 = amounts[0];
                    uint256 joinAmt1 = Math.mulDiv(amounts[0], token1Reserve, token0Reserve, Math.Rounding.Up);

                    if (joinAmt1 > amounts[1]) {
                        // We don't have enough based on original ratios
                        joinAmt1 = amounts[1];
                        joinAmt0 = Math.mulDiv(amounts[1], token0Reserve, token1Reserve, Math.Rounding.Up);
                    }

                    amounts[0] = joinAmt0;
                    amounts[1] = joinAmt1;

                    // slither-disable-next-line unused-return
                    uint256 totalSupply = pool.totalSupply();
                    minLpMintAmount = (totalSupply * amounts[0]) / token0Reserve;
                }
                userData = abi.encode(IVault.JoinKind.ALL_TOKENS_IN_FOR_EXACT_BPT_OUT, minLpMintAmount);
            }
        } catch { }

        vault.joinPool(
            poolId,
            address(this), // sender
            address(this), // recipient of BPT token
            IVault.JoinPoolRequest({
                assets: tokens,
                maxAmountsIn: amounts,
                userData: userData,
                fromInternalBalance: false
            })
        );
    }

    /// @inheritdoc IBalancerAdapter
    function removeLiquidity(
        address poolAddress,
        address vaultAddress,
        uint256 lpAmount,
        address[] memory tokens,
        uint256[] memory minAmounts,
        bool isComposablePool
    ) external {
        IBalancerPool pool = IBalancerPool(poolAddress);
        IVault vault = IVault(vaultAddress);

        bytes32 poolId = pool.getPoolId();

        bytes memory userData = isComposablePool
            ? abi.encode(ExitKindComposable.EXACT_BPT_IN_FOR_ALL_TOKENS_OUT, lpAmount)
            : abi.encode(ExitKind.EXACT_BPT_IN_FOR_TOKENS_OUT, lpAmount);

        IVault.ExitPoolRequest memory request = IVault.ExitPoolRequest({
            assets: tokens,
            minAmountsOut: minAmounts,
            userData: userData,
            toInternalBalance: false
        });

        vault.exitPool(
            poolId,
            address(this), // sender,
            payable(address(this)), // recipient,
            request
        );
    }

    function getVaultByPool(
        address pool
    ) external view returns (address) {
        return IBalancerPool(pool).getVault();
    }

    /**
     * @notice We should exclude BPT amount from amounts array for userData in ComposablePools
     * @param pool Balancer or Beethoven pool address
     * @param amountsOut array of pool token amounts that length-equal with IVault#getPoolTokens array
     */
    function _getUserAmounts(
        address pool,
        uint256[] memory amountsOut,
        bool isComposablePool
    ) private view returns (uint256[] memory amountsUser) {
        if (isComposablePool) {
            uint256 uix = 0;
            uint256 bptIndex = IBalancerComposableStablePool(pool).getBptIndex();
            uint256 nTokens = amountsOut.length;
            amountsUser = new uint256[](nTokens - 1);
            for (uint256 i = 0; i < nTokens; i++) {
                if (i != bptIndex) {
                    amountsUser[uix] = amountsOut[i];
                    uix++;
                }
            }
        } else {
            amountsUser = amountsOut;
        }
    }
}
