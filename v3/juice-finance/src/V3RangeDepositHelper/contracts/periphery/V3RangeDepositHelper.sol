// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { ud, UD60x18, ZERO } from "@prb/math/src/UD60x18.sol";
import "contracts/libraries/UniswapV3SwapLib.sol";
import "contracts/libraries/Errors.sol";
import "contracts/libraries/math/UniswapV3PoolMath.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { LiquidityAmounts } from "@uniswap/v3-periphery/contracts/libraries/LiquidityAmounts.sol";
import { IUniswapV3RangeStrategy } from "contracts/interfaces/IUniswapV3RangeStrategy.sol";
import { IUniswapV3Factory } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import { INonfungiblePositionManager } from "contracts/interfaces/INonFungiblePositionManager.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import { IQuoterV2 } from "@uniswap/v3-periphery/contracts/interfaces/IQuoterV2.sol";
import { UniswapV3RangeLib } from "contracts/libraries/UniswapV3RangeLib.sol";

// import "forge-std/console2.sol";

/// @title Omega Uniswap V3 Range Strategy
/// @notice Swaps deposited base asset into the asset and adds liquidity to predefined range in Uniswap V3 pool
contract V3RangeDepositHelper {
    using SafeERC20 for IERC20;
    using UniswapV3PoolMath for IUniswapV3Pool;
    using SafeCast for uint256;
    using UniswapV3RangeLib for INonfungiblePositionManager;

    IUniswapV3RangeStrategy public immutable strategy;
    IUniswapV3Pool public immutable pool;
    INonfungiblePositionManager public immutable nonfungiblePositionManager;
    IQuoterV2 public immutable quoter;
    address public immutable baseAsset;
    address public immutable asset;

    constructor(address strategy_) {
        strategy = IUniswapV3RangeStrategy(strategy_);
        pool = strategy.uniswapPool();
        nonfungiblePositionManager = strategy.nonfungiblePositionManager();
        quoter = strategy.quoter();
        baseAsset = address(strategy.getBaseAsset());
        asset = strategy.asset();
    }

    function previewDeposit(uint256 amount) public returns (uint256, uint256) {
        bool isBaseAssetToken0 = baseAsset < asset;

        uint128 liquidity = 0;

        if (isBaseAssetToken0) {
            liquidity = LiquidityAmounts.getLiquidityForAmount0(
                TickMath.getSqrtRatioAtTick(strategy.tickLower()),
                TickMath.getSqrtRatioAtTick(strategy.tickUpper()),
                amount
            );
        } else {
            liquidity = LiquidityAmounts.getLiquidityForAmount1(
                TickMath.getSqrtRatioAtTick(strategy.tickLower()),
                TickMath.getSqrtRatioAtTick(strategy.tickUpper()),
                amount
            );
        }

        (uint160 sqrtPriceX96,,,,,,) = pool.slot0();

        (uint256 amount0, uint256 amount1) = LiquidityAmounts.getAmountsForLiquidity(
            sqrtPriceX96,
            TickMath.getSqrtRatioAtTick(strategy.tickLower()),
            TickMath.getSqrtRatioAtTick(strategy.tickUpper()),
            liquidity
        );

        // Base asset required to provide liquidity, rest of it should be used to trade for other asset.
        uint256 baseAmountLeftover = isBaseAssetToken0 ? amount0 : amount1;
        uint256 baseAmountToBuyAsset = amount - baseAmountLeftover;

        (uint256 assetToBuy,,,) = quoter.quoteExactInput(strategy.getSwapProps().paths.inPath, baseAmountToBuyAsset);

        UD60x18 ratio = ZERO;

        if (amount > 0) {
            ratio = ud(baseAmountToBuyAsset) / ud(amount);
        }

        amount0 = isBaseAssetToken0 ? baseAmountLeftover : assetToBuy;
        amount1 = isBaseAssetToken0 ? assetToBuy : baseAmountLeftover;

        uint256 actualLiquidity = LiquidityAmounts.getLiquidityForAmounts(
            sqrtPriceX96,
            TickMath.getSqrtRatioAtTick(strategy.tickLower()),
            TickMath.getSqrtRatioAtTick(strategy.tickUpper()),
            amount0,
            amount1
        );

        uint256 totalSupply = IERC20(address(strategy)).totalSupply();

        if (totalSupply == 0) {
            return (ratio.unwrap(), actualLiquidity - 1000);
        } else {
            (,,,,,,, uint256 existingLiquidity,,,,) = nonfungiblePositionManager.positions(strategy.tokenId());
            uint256 shares = (actualLiquidity * totalSupply) / existingLiquidity;
            return (ratio.unwrap(), shares);
        }
    }
}
