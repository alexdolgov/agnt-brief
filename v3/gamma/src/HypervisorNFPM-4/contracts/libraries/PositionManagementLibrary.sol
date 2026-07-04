// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@cryptoalgebra/integral-periphery/contracts/interfaces/INonfungiblePositionManager.sol";
import "@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraPool.sol";
import "./PositionValue.sol";

library PositionManagementLibrary {
    function mintLiquidity(
        INonfungiblePositionManager self,
        address token0,
        address token1,
        int24 tickLower,
        int24 tickUpper,
        uint256 amount0Desired,
        uint256 amount1Desired,
        address recipient,
        uint256 amount0Min,
        uint256 amount1Min
    ) internal returns (uint256 tokenId) {
        if (amount0Desired == 0 && amount1Desired == 0) return 0;
        
        (tokenId, , , ) = self.mint(INonfungiblePositionManager.MintParams({
            token0: token0,
            token1: token1,
            tickLower: tickLower,
            tickUpper: tickUpper,
            deployer: address(0xDcFccf2e8c4EfBba9127B80eAc76c5A122125d29),
            amount0Desired: amount0Desired,
            amount1Desired: amount1Desired,
            amount0Min: amount0Min,
            amount1Min: amount1Min,
            recipient: recipient,
            deadline: block.timestamp
        }));
    }

    function increaseLiquidity(
        INonfungiblePositionManager self,
        uint256 tokenId,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min
    ) internal returns (uint128 liquidity) {
        if (amount0Desired == 0 && amount1Desired == 0) return 0;
        
        (liquidity, , ) = self.increaseLiquidity(INonfungiblePositionManager.IncreaseLiquidityParams({
            tokenId: tokenId,
            amount0Desired: amount0Desired,
            amount1Desired: amount1Desired,
            amount0Min: amount0Min,
            amount1Min: amount1Min,
            deadline: block.timestamp
        }));
    }

    function decreaseLiquidity(
        INonfungiblePositionManager self,
        uint256 tokenId,
        address to,
        uint128 liquidity,
        uint256 amount0Min,
        uint256 amount1Min
    ) internal returns (uint256 amount0, uint256 amount1) {
        if (liquidity == 0) return (0, 0);
        
        // First decrease the liquidity - this burns the position and records tokens owed
        (amount0, amount1) = self.decreaseLiquidity(
            INonfungiblePositionManager.DecreaseLiquidityParams({
                tokenId: tokenId,
                liquidity: liquidity,
                amount0Min: amount0Min,
                amount1Min: amount1Min,
                deadline: block.timestamp
            })
        );

        // Then collect all owed tokens (both from burned liquidity and accumulated fees)
        (uint256 collected0, uint256 collected1) = self.collect(
            INonfungiblePositionManager.CollectParams({
                tokenId: tokenId,
                recipient: to,
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            })
        );

        // Return total amounts (burned liquidity + collected fees)
        amount0 = collected0;
        amount1 = collected1;
    }

    function computeAndMintLiquidity(
        INonfungiblePositionManager self,
        IAlgebraPool pool,
        int24 tickLower,
        int24 tickUpper,
        uint256 token0Balance,
        uint256 token1Balance,
        uint256 amount0Min,
        uint256 amount1Min,
        address recipient
    ) internal returns (uint256 tokenId) {
        uint128 newLiquidity = PositionValue.liquidityForAmounts(
            pool,
            tickLower,
            tickUpper,
            token0Balance,
            token1Balance
        );
        
        if (newLiquidity > 0) {
            tokenId = mintLiquidity(
                self,
                address(pool.token0()),
                address(pool.token1()),
                tickLower,
                tickUpper,
                token0Balance,
                token1Balance,
                recipient,
                amount0Min,
                amount1Min
            );
        }
    }

    function computeAndIncreaseLiquidity(
        INonfungiblePositionManager self,
        IAlgebraPool pool,
        uint256 tokenId,
        int24 tickLower,
        int24 tickUpper,
        uint256 token0Balance,
        uint256 token1Balance,
        uint256 amount0Min,
        uint256 amount1Min
    ) internal returns (uint128 addedLiquidity) {
        uint128 newLiquidity = PositionValue.liquidityForAmounts(
            pool,
            tickLower,
            tickUpper,
            token0Balance,
            token1Balance
        );
        
        if (newLiquidity > 0) {
            addedLiquidity = increaseLiquidity(
                self,
                tokenId,
                token0Balance,
                token1Balance,
                amount0Min,
                amount1Min
            );
        }
    }


    struct DirectDepositParams {
        IAlgebraPool pool;
        uint256 baseNftId;
        uint256 limitNftId;
        int24 baseLower;
        int24 baseUpper;
        int24 limitLower;
        int24 limitUpper;
        uint256 deposit0;
        uint256 deposit1;
        uint256[4] minAmounts;
    }

    function computeAndDirectDeposit(
        INonfungiblePositionManager self,
        DirectDepositParams memory params
    ) internal returns (uint256 used0, uint256 used1) {
        // Calculate amounts for base position
        if (params.baseNftId != 0) {
            // Get actual amounts that can be used in the base position
            (uint256 base0, uint256 base1) = PositionValue.amountsForLiquidity(
                params.pool,
                params.baseLower,
                params.baseUpper,
                PositionValue.liquidityForAmounts(
                    params.pool,
                    params.baseLower,
                    params.baseUpper,
                    params.deposit0,
                    params.deposit1
                )
            );
            
            if (base0 > 0 || base1 > 0) {
                // Only use what the position can actually accept
                used0 = base0 > params.deposit0 ? params.deposit0 : base0;
                used1 = base1 > params.deposit1 ? params.deposit1 : base1;
                
                increaseLiquidity(
                    self,
                    params.baseNftId,
                    used0,
                    used1,
                    params.minAmounts[0],
                    params.minAmounts[1]
                );
            }
        }

        // Calculate remaining amounts for limit position
        uint256 remaining0 = params.deposit0 > used0 ? params.deposit0 - used0 : 0;
        uint256 remaining1 = params.deposit1 > used1 ? params.deposit1 - used1 : 0;

        if ((remaining0 > 0 || remaining1 > 0) && params.limitNftId != 0) {
            // Get actual amounts that can be used in the limit position
            (uint256 limit0, uint256 limit1) = PositionValue.amountsForLiquidity(
                params.pool,
                params.limitLower,
                params.limitUpper,
                PositionValue.liquidityForAmounts(
                    params.pool,
                    params.limitLower,
                    params.limitUpper,
                    remaining0,
                    remaining1
                )
            );
            
            if (limit0 > 0 || limit1 > 0) {
                // Only use what's available and what the position can accept
                uint256 toAdd0 = limit0 > remaining0 ? remaining0 : limit0;
                uint256 toAdd1 = limit1 > remaining1 ? remaining1 : limit1;
                
                uint128 addedLiquidity = increaseLiquidity(
                    self,
                    params.limitNftId,
                    toAdd0,
                    toAdd1,
                    params.minAmounts[2],
                    params.minAmounts[3]
                );
                
                if (addedLiquidity > 0) {
                    used0 += toAdd0;
                    used1 += toAdd1;
                }
            }
        }
    }

    function withdrawPositions(
        INonfungiblePositionManager self,
        uint256 baseNftId,
        uint256 limitNftId,
        uint256 shares,
        address to,
        uint256 totalSupply,
        uint256[4] memory minAmounts
    ) internal returns (uint256 base0, uint256 base1, uint256 limit0, uint256 limit1) {
        if (baseNftId != 0) {
            (base0, base1) = decreaseLiquidity(
                self,
                baseNftId,
                to,
                PositionValue.liquidityForShares(self, baseNftId, shares, totalSupply),
                minAmounts[0],
                minAmounts[1]
            );
        }

        if (limitNftId != 0) {
            (limit0, limit1) = decreaseLiquidity(
                self,
                limitNftId,
                to,
                PositionValue.liquidityForShares(self, limitNftId, shares, totalSupply),
                minAmounts[2],
                minAmounts[3]
            );
        }
    }

}