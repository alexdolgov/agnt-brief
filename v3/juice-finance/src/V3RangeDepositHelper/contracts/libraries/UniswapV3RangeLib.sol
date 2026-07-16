// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { INonfungiblePositionManager } from "contracts/interfaces/INonFungiblePositionManager.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import { LiquidityAmounts } from "@uniswap/v3-periphery/contracts/libraries/LiquidityAmounts.sol";
import { ISwapRouter } from "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { TickMath } from "@uniswap/v3-core/contracts/libraries/TickMath.sol";
import { IQuoterV2 } from "@uniswap/v3-periphery/contracts/interfaces/IQuoterV2.sol";
import { IAssetPriceProvider } from "contracts/interfaces/IAssetPriceProvider.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { ud } from "@prb/math/src/UD60x18.sol";
import { Errors } from "contracts/libraries/Errors.sol";
import { UniswapV3SwapLib } from "contracts/libraries/UniswapV3SwapLib.sol";
import { sqrt } from "contracts/libraries/math/MathUtils.sol";

library UniswapV3RangeLib {
    using Address for address;
    using SafeCast for uint256;
    using SafeERC20 for IERC20;

    /// @notice Return data from NonfungiblePositionManager#functionCall is expected to be empty or 64 bytes
    error InvalidNonfungibleReturnData();

    function callOptionalReturn(address _nfpManager, bytes memory _data) internal {
        bytes memory returndata = _nfpManager.functionCall(_data);
        // If return data is empty or it returns 64 (uint256,uint256), then it is ok otherwise revert
        if (!(returndata.length == 0 || returndata.length == 64)) {
            revert InvalidNonfungibleReturnData();
        }
    }

    //here the problem is that the actual NFPManager returns amount0 and amount1 but the hyperlock ERC721 doesn't
    // return anything
    //we have to use low level call to make it work
    function safeDecreaseLiquidity(
        INonfungiblePositionManager nonfungiblePositionManager,
        INonfungiblePositionManager.DecreaseLiquidityParams memory params
    )
        internal
    {
        callOptionalReturn(
            address(nonfungiblePositionManager),
            abi.encodeWithSelector(nonfungiblePositionManager.decreaseLiquidity.selector, params)
        );
    }

    function increaseLiquidity(
        INonfungiblePositionManager nonfungiblePositionManager,
        uint256 tokenId,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min
    )
        public
        returns (uint256 existingLiquidity, uint256 liquidity)
    {
        (,,,,,,, existingLiquidity,,,,) = nonfungiblePositionManager.positions(tokenId);
        INonfungiblePositionManager.IncreaseLiquidityParams memory mintParams = INonfungiblePositionManager
            .IncreaseLiquidityParams({
            tokenId: tokenId,
            amount0Desired: amount0Desired,
            amount1Desired: amount1Desired,
            amount0Min: amount0Min,
            amount1Min: amount1Min,
            deadline: block.timestamp
        });
        (liquidity,,) = nonfungiblePositionManager.increaseLiquidity(mintParams);
    }

    function mint(
        INonfungiblePositionManager nonfungiblePositionManager,
        address asset0,
        address asset1,
        uint24 fee,
        int24 tickLower,
        int24 tickUpper,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min
    )
        public
        returns (uint256 tokenId, uint256 liquidity)
    {
        INonfungiblePositionManager.MintParams memory mintParams = INonfungiblePositionManager.MintParams({
            token0: asset0,
            token1: asset1,
            fee: fee,
            tickLower: tickLower,
            tickUpper: tickUpper,
            amount0Desired: amount0Desired,
            amount1Desired: amount1Desired,
            amount0Min: amount0Min,
            amount1Min: amount1Min,
            recipient: address(this),
            deadline: block.timestamp
        });

        (tokenId, liquidity,,) = nonfungiblePositionManager.mint(mintParams);
    }

    function decreaseLiquidity(
        INonfungiblePositionManager nonfungiblePositionManager,
        INonfungiblePositionManager actualNonfungiblePositionManager,
        uint256 tokenId,
        uint256 liquidity
    )
        public
    {
        (,,,,,,,,,, uint128 token0OwedBefore, uint128 token1OwedBefore) =
            actualNonfungiblePositionManager.positions(tokenId);
        INonfungiblePositionManager.DecreaseLiquidityParams memory decreaseLiquidityParams = INonfungiblePositionManager
            .DecreaseLiquidityParams({
            tokenId: tokenId,
            liquidity: liquidity.toUint128(),
            amount0Min: 0,
            amount1Min: 0,
            deadline: block.timestamp
        });

        safeDecreaseLiquidity(nonfungiblePositionManager, decreaseLiquidityParams);

        (,,,,,,,,,, uint128 token0OwedAfter, uint128 token1OwedAfter) =
            actualNonfungiblePositionManager.positions(tokenId);
        collect(
            nonfungiblePositionManager, tokenId, token0OwedAfter - token0OwedBefore, token1OwedAfter - token1OwedBefore
        );
    }

    function collect(
        INonfungiblePositionManager nonfungiblePositionManager,
        uint256 tokenId,
        uint256 amount0,
        uint256 amount1
    )
        public
    {
        INonfungiblePositionManager.CollectParams memory collectParams = INonfungiblePositionManager.CollectParams({
            tokenId: tokenId,
            recipient: address(this),
            amount0Max: amount0.toUint128(),
            amount1Max: amount1.toUint128()
        });
        try nonfungiblePositionManager.collect(collectParams) { }
        catch (bytes memory) {
            //do not revert if the collect fails. In withdraw's case, it won't fail anyway. If it fails, than most
            // likely it is because the position doesn't have any fees accurred yet. This is already handled in the code
        }
    }

    function getUnderlyingBalances(
        INonfungiblePositionManager nonfungiblePositionManager,
        uint256 tokenId,
        uint160 sqrtRatioX96
    )
        public
        view
        returns (uint256 amount0Current, uint256 amount1Current)
    {
        //call collect fees everytime before this so that we don't have to deal with pending fees
        (,,,,, int24 tickLower, int24 tickUpper, uint256 liquidity,,,,) = nonfungiblePositionManager.positions(tokenId);

        (amount0Current, amount1Current) = LiquidityAmounts.getAmountsForLiquidity(
            sqrtRatioX96,
            TickMath.getSqrtRatioAtTick(tickLower),
            TickMath.getSqrtRatioAtTick(tickUpper),
            uint128(liquidity)
        );
    }

    function exactInputSwap(
        ISwapRouter router,
        address assetIn,
        address assetOut,
        uint24 fee,
        uint256 amount,
        uint256 minAmount
    )
        external
        returns (uint256)
    {
        IERC20(assetIn).safeIncreaseAllowance(address(router), amount);
        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
            tokenIn: assetIn,
            tokenOut: assetOut,
            fee: fee,
            recipient: address(this),
            deadline: block.timestamp,
            amountIn: amount,
            amountOutMinimum: minAmount,
            sqrtPriceLimitX96: 0
        });
        return router.exactInputSingle(params);
    }

    function exactOutputSwap(
        ISwapRouter router,
        address assetIn,
        address assetOut,
        uint24 fee,
        uint256 amount,
        uint256 maxAmount
    )
        external
        returns (uint256)
    {
        IERC20(assetIn).safeIncreaseAllowance(address(router), maxAmount);
        ISwapRouter.ExactOutputSingleParams memory params = ISwapRouter.ExactOutputSingleParams({
            tokenIn: assetIn,
            tokenOut: assetOut,
            fee: fee,
            recipient: address(this),
            deadline: block.timestamp,
            amountOut: amount,
            amountInMaximum: maxAmount,
            sqrtPriceLimitX96: 0
        });
        return router.exactOutputSingle(params);
    }

    function quoteExactInputSingle(
        IQuoterV2 quoter,
        address assetIn,
        address assetOut,
        uint24 fee,
        uint256 amountIn
    )
        external
        returns (uint256 amountOut)
    {
        IQuoterV2.QuoteExactInputSingleParams memory params = IQuoterV2.QuoteExactInputSingleParams({
            tokenIn: assetIn,
            tokenOut: assetOut,
            amountIn: amountIn,
            fee: fee,
            sqrtPriceLimitX96: 0
        });
        (amountOut,,,) = quoter.quoteExactInputSingle(params);
    }

    function compound(
        INonfungiblePositionManager nonfungiblePositionManager,
        INonfungiblePositionManager actualNonfungiblePositionManager,
        uint256 tokenId,
        uint256 totalSupply,
        uint160 sqrtPriceX96
    )
        external
    {
        if (totalSupply != 0) {
            //ping to update the token0Owed and token1Owed
            collect(nonfungiblePositionManager, tokenId, 1, 1);

            (
                ,
                ,
                address asset0,
                address asset1,
                ,
                int24 tickLower,
                int24 tickUpper,
                ,
                ,
                ,
                uint128 totalToken0Owed,
                uint128 totalToken1Owed
            ) = actualNonfungiblePositionManager.positions(tokenId);

            if (totalToken0Owed != 0 || totalToken1Owed != 0) {
                uint128 maxLiquidity = LiquidityAmounts.getLiquidityForAmounts(
                    sqrtPriceX96,
                    TickMath.getSqrtRatioAtTick(tickLower),
                    TickMath.getSqrtRatioAtTick(tickUpper),
                    totalToken0Owed,
                    totalToken1Owed
                );

                (uint256 actualAmount0, uint256 actualAmount1) = LiquidityAmounts.getAmountsForLiquidity(
                    sqrtPriceX96,
                    TickMath.getSqrtRatioAtTick(tickLower),
                    TickMath.getSqrtRatioAtTick(tickUpper),
                    maxLiquidity
                );

                //there might be some cases where actualAmounts are not equal to zero but nearly zero which makes the
                // resulting liquidity minted to be zero
                //Again calculating the liquidity and making sure it is not zero helps to avoid this
                maxLiquidity = LiquidityAmounts.getLiquidityForAmounts(
                    sqrtPriceX96,
                    TickMath.getSqrtRatioAtTick(tickLower),
                    TickMath.getSqrtRatioAtTick(tickUpper),
                    actualAmount0,
                    actualAmount1
                );

                if (maxLiquidity != 0) {
                    collect(nonfungiblePositionManager, tokenId, actualAmount0, actualAmount1);

                    IERC20(asset0).safeIncreaseAllowance(address(actualNonfungiblePositionManager), actualAmount0);
                    IERC20(asset1).safeIncreaseAllowance(address(actualNonfungiblePositionManager), actualAmount1);

                    increaseLiquidity(actualNonfungiblePositionManager, tokenId, actualAmount0, actualAmount1, 0, 0);
                }
            }
        }
    }

    function getPositionValue(
        INonfungiblePositionManager actualNonfungiblePositionManager,
        uint256 tokenId,
        address baseAsset,
        IAssetPriceProvider priceProvider,
        uint256 shares,
        uint256 totalSupply
    )
        external
        view
        returns (uint256)
    {
        if (totalSupply < 1000) {
            revert Errors.InvalidAmount();
        }

        uint256 price0;
        uint256 price1;
        uint256 token0Decimals;
        uint256 token1Decimals;
        {
            (,, address asset0, address asset1,,,,,,,,) = actualNonfungiblePositionManager.positions(tokenId);

            price0 = asset0 == baseAsset ? 10 ** 18 : priceProvider.getAssetPrice(address(asset0));
            price1 = asset1 == baseAsset ? 10 ** 18 : priceProvider.getAssetPrice(address(asset1));

            token0Decimals = IERC20Metadata(address(asset0)).decimals();
            token1Decimals = IERC20Metadata(address(asset1)).decimals();
        }

        uint160 sqrtPriceX96 = uint256(
            (sqrt((price0 * 10 ** token1Decimals * (1 << 96)) / (price1 * 10 ** token0Decimals)) << 48)
        ).toUint160();

        (uint256 totalToken0, uint256 totalToken1) =
            getUnderlyingBalances(actualNonfungiblePositionManager, tokenId, sqrtPriceX96);

        uint256 quote = (
            price0 * totalToken0 * (10 ** (18 - token0Decimals)) + price1 * totalToken1 * (10 ** (18 - token1Decimals))
        ) / totalSupply;

        if (quote >= 2 ** 128) {
            revert Errors.InvalidAmount(); //quote underflow
        }

        return (quote * shares) / 10 ** 18;
    }

    struct RebalanceParams {
        INonfungiblePositionManager nonfungiblePositionManager;
        INonfungiblePositionManager actualNonfungiblePositionManager;
        uint256 tokenId;
        ISwapRouter router;
        UniswapV3SwapLib.PathPair asset0Asset1Paths;
        bool isExactInput;
        bool isAsset0;
        uint256 amountToSwap;
        int24 updatedTickLower;
        int24 updatedTickUpper;
        uint256 minMintedLiquidity;
        address dustRecipient;
    }

    struct ReBalanceLocalVars {
        address asset0;
        address asset1;
        uint24 fee;
        uint128 existingLiquidity;
        uint128 totalToken0Owed;
        uint128 totalToken1Owed;
        uint256 asset0Amount;
        uint256 asset1Amount;
        uint256 updatedTokenId;
        uint256 mintedLiquidity;
    }

    function reBalance(RebalanceParams memory params) external returns (uint256, int24, int24) {
        ReBalanceLocalVars memory vars;

        // Collect all the existing liquidity and not try to add it back that is why compound is not being called here
        collect(params.nonfungiblePositionManager, params.tokenId, 1, 1);

        (,, vars.asset0, vars.asset1, vars.fee,,, vars.existingLiquidity,,, vars.totalToken0Owed, vars.totalToken1Owed)
        = params.actualNonfungiblePositionManager.positions(params.tokenId);
        collect(params.nonfungiblePositionManager, params.tokenId, vars.totalToken0Owed, vars.totalToken1Owed);

        decreaseLiquidity(
            params.nonfungiblePositionManager,
            params.actualNonfungiblePositionManager,
            params.tokenId,
            vars.existingLiquidity
        );

        {
            UniswapV3SwapLib.Props memory _props = UniswapV3SwapLib.Props({
                swapRouter: params.router,
                inAsset: IERC20(vars.asset0),
                outAsset: IERC20(vars.asset1),
                paths: params.asset0Asset1Paths
            });

            if (params.isExactInput) {
                if (params.isAsset0) {
                    UniswapV3SwapLib.exactInputSwapIn(_props, address(this), params.amountToSwap, 0);
                } else {
                    UniswapV3SwapLib.exactInputSwapOut(_props, address(this), params.amountToSwap, 0);
                }
            } else {
                if (params.isAsset0) {
                    UniswapV3SwapLib.exactOutputSwapIn(_props, address(this), params.amountToSwap, 0);
                } else {
                    UniswapV3SwapLib.exactOutputSwapOut(_props, address(this), params.amountToSwap, 0);
                }
            }
        }

        vars.asset0Amount = IERC20(vars.asset0).balanceOf(address(this));
        vars.asset1Amount = IERC20(vars.asset1).balanceOf(address(this));

        IERC20(vars.asset0).safeIncreaseAllowance(address(params.nonfungiblePositionManager), vars.asset0Amount);
        IERC20(vars.asset1).safeIncreaseAllowance(address(params.nonfungiblePositionManager), vars.asset1Amount);

        (vars.updatedTokenId, vars.mintedLiquidity) = mint(
            params.nonfungiblePositionManager,
            vars.asset0,
            vars.asset1,
            vars.fee,
            params.updatedTickLower,
            params.updatedTickUpper,
            vars.asset0Amount,
            vars.asset1Amount,
            0,
            0
        );

        if (vars.mintedLiquidity < params.minMintedLiquidity) {
            revert Errors.InvalidAmount();
        }

        vars.asset0Amount = IERC20(vars.asset0).balanceOf(address(this));
        vars.asset1Amount = IERC20(vars.asset1).balanceOf(address(this));
        if (vars.asset0Amount > 0) {
            SafeERC20.safeTransfer(IERC20(vars.asset0), params.dustRecipient, vars.asset0Amount);
        }
        if (vars.asset1Amount > 0) {
            SafeERC20.safeTransfer(IERC20(vars.asset1), params.dustRecipient, vars.asset1Amount);
        }

        return (vars.updatedTokenId, params.updatedTickLower, params.updatedTickUpper);
    }
}
