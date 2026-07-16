// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IUniswapV3Pool, TickMath, INonfungiblePositionManager, LiquidityAmounts, FullMath, SqrtPriceMath} from "@overnight-contracts/connectors/contracts/stuff/UniswapV3.sol";
import "../core/CommonModule.sol";
import "hardhat/console.sol";

abstract contract StakeModule is CommonModule {

    address public poolAddress;
    address public npmAddress;
    uint256 public tokenId;
    int24 public lowerTick;
    int24 public upperTick;
    uint256 public lowerPercent;
    uint256 public upperPercent;
    uint256 public poolDecimals;
    int24 public tickStep; // DELETED
    uint24 public poolFee;
    uint256 public allowedStakeSlippage;

    struct TargetBalanceParams {
        uint256 targetBalancePrice;
        uint128 liquidity;
        uint256 neededHealthFactor;
        uint256 liquidationThreshold;
    }

    function _getStakeLiquidity() internal view returns (uint256 baseBalance, uint256 sideBalance) {
        return UniswapV3StakeLibrary._getLiquidity(this);
    }

    function _pricePool() public view returns (int256) {
        return UniswapV3StakeLibrary._pricePool(this);
    }

    function _sideAmount() public view returns(uint256) {
        return UniswapV3StakeLibrary._sideAmount(this);
    }

    function _addLiquidity(uint256 delta) public {
        (bool isReplaced, uint256 newTokenId) = UniswapV3StakeLibrary._addLiquidity(this, delta);
        if (isReplaced) {
            tokenId = newTokenId;
        }
    }

    function _removeLiquidity(uint256 delta) public {
        (bool isReplaced, uint256 newTokenId) = UniswapV3StakeLibrary._removeLiquidity(this, delta);
        if (isReplaced) {
            tokenId = newTokenId;
        }
    }

    function _claimStakeRewards() internal {
        UniswapV3StakeLibrary._claimRewards(this);
    }

    function _percentsToTicks() public {
        (lowerTick, upperTick) = UniswapV3StakeLibrary._percentsToTicks(this, 0);
    }

    function _percentsToTicks(uint256 price) public {
        (lowerTick, upperTick) = UniswapV3StakeLibrary._percentsToTicks(this, price);
    }

    function getGeneralPoolPrice() public view returns(uint256 _price) {
        return UniswapV3StakeLibrary._getGeneralPoolPrice(this);
    }

    function calculateParamsForTargetBalance(TargetBalanceParams memory targetBalanceParams) public returns(int256 K1, int256 K3) {
        return UniswapV3StakeLibrary._calculateParamsForTargetBalance(this, targetBalanceParams);
    }

    function calculateEtsV3Params(TargetBalanceParams memory targetBalanceParams) public returns(int256 K1, int256 K3) {
        return UniswapV3StakeLibrary._calculateEtsV3Params(this, targetBalanceParams);
    }

    function isReverse() public view returns (bool) {
        return UniswapV3StakeLibrary._isReverse(this);
    }

    uint256[49] private __gap;
}


library UniswapV3StakeLibrary {

    function _calculateEtsV3Params(StakeModule self, StakeModule.TargetBalanceParams memory targetBalanceParams) public returns (int256, int256) {
        int256 K2 = _pricePool(self);        
        int256 K1 = int256(1e18 * targetBalanceParams.neededHealthFactor / targetBalanceParams.liquidationThreshold);
        (uint160 sqrtRatioX96Now,,,,,,) = IUniswapV3Pool(self.poolAddress()).slot0();
        int256 sideToBaseNow = int256(getPriceBySqrtRatio(sqrtRatioX96Now));
        int256 sideToBaseNext = int256(targetBalanceParams.targetBalancePrice);
        K1 = K1 * sideToBaseNext / sideToBaseNow;

        return (K1, K2);
    }


    /// calculation of the necessary parameters for target (running) balancing
    /// @param targetBalanceParams struct which has targetBalancePrice, liquidity, neededHealthFactor and liquidationThreshold. This parameters needed
    /// to calculate new K1 and K3 parameters. Meaning of this koefs see on main strategy.
    function _calculateParamsForTargetBalance(StakeModule self, StakeModule.TargetBalanceParams memory targetBalanceParams) public returns (int256, int256) {
        (uint160 sqrtRatioX96Now,,,,,,) = IUniswapV3Pool(self.poolAddress()).slot0();
        (uint256 balance0Now, uint256 balance1Now, uint256 balance0Next, uint256 balance1Next) = (0,0,0,0);
        {
        uint160 sqrtRatioX96Next = uint160(sqrt(FullMath.mulDiv(targetBalanceParams.targetBalancePrice, 2 ** 192, 10 ** 18)));
        uint160 sqrtRatioAX96 = TickMath.getSqrtRatioAtTick(self.lowerTick());
        uint160 sqrtRatioBX96 = TickMath.getSqrtRatioAtTick(self.upperTick());
        
        ( balance0Now,  balance1Now) = LiquidityAmounts.getAmountsForLiquidity(sqrtRatioX96Now, sqrtRatioAX96, sqrtRatioBX96, targetBalanceParams.liquidity);
        ( balance0Next,  balance1Next) = LiquidityAmounts.getAmountsForLiquidity(sqrtRatioX96Next, sqrtRatioAX96, sqrtRatioBX96, targetBalanceParams.liquidity);
        }
        bool isReverse = address(self.baseToken()) != IUniswapV3Pool(self.poolAddress()).token0();
        int256 K3 = isReverse ? int256(balance0Next * 1e18 / balance0Now)
                              : int256(balance1Next * 1e18 / balance1Now);
        

        int256 K1 = int256(1e18 * targetBalanceParams.neededHealthFactor / targetBalanceParams.liquidationThreshold);
        int256 sideToBaseNow = int256(getPriceBySqrtRatio(sqrtRatioX96Now));
        int256 sideToBaseNext = int256(targetBalanceParams.targetBalancePrice);
        K1 = K1 * sideToBaseNext / sideToBaseNow;

        return (K1, K3);
    }

    /// the method checks if the assets are turned over into pool (usdc not in the first position in pool)
    function _isReverse(StakeModule self) public view returns (bool) {
        return address(self.baseToken()) != IUniswapV3Pool(self.poolAddress()).token0();
    }

    /// change lower and upper ticks of v3 position for new pool price, position centering
    /// @param price new or assumed price in the pool, we want to centering our position around the price
    /// if price is zero we want to make position around the current pool price
    function _percentsToTicks(StakeModule self, uint256 price) public view returns (int24, int24) {

        if (self.lowerPercent() == 0 && self.upperPercent() == 0) {
            // this block is unchecked
            // full: [-887220, 887220]
            return (-279660, 234960);
        }

        if (price == 0) {
            (uint160 sqrtRatioX96,,,,,,) = IUniswapV3Pool(self.poolAddress()).slot0();
            price = getPriceBySqrtRatio(sqrtRatioX96);
            // console.log("price", price);
        }

        int24 tickStep = int24(self.poolFee()) * 2 / 100;
        uint256 lowerPrice = price * (10000 - self.lowerPercent()) / 10000;
        uint256 upperPrice = price * (10000 + self.upperPercent()) / 10000;
        uint160 lowerSqrt = uint160(sqrt(FullMath.mulDiv(lowerPrice, 2 ** 192, 10 ** 18)));
        uint160 upperSqrt = uint160(sqrt(FullMath.mulDiv(upperPrice, 2 ** 192, 10 ** 18)));
        int24 lowerTick = TickMath.getTickAtSqrtRatio(lowerSqrt) / tickStep;
        lowerTick = lowerTick * tickStep;
        int24 upperTick = TickMath.getTickAtSqrtRatio(upperSqrt) / tickStep;
        upperTick = (upperTick + 1) * tickStep;
        return (lowerTick, upperTick);
    }

    /// get the current liquidity held in uniswap in side and base tokens
    function _getLiquidity(StakeModule self) public view returns (uint256 baseBalance, uint256 sideBalance) {
        if (self.tokenId() > 0) {
            (,,,,,,,uint128 liquidity,,,,) = INonfungiblePositionManager(self.npmAddress()).positions(self.tokenId());
            if (liquidity > 0) {
                bool isReverse = address(self.baseToken()) != IUniswapV3Pool(self.poolAddress()).token0();
                (uint160 sqrtRatioX96,,,,,,) = IUniswapV3Pool(self.poolAddress()).slot0();
                uint160 sqrtRatioAX96 = TickMath.getSqrtRatioAtTick(self.lowerTick());
                uint160 sqrtRatioBX96 = TickMath.getSqrtRatioAtTick(self.upperTick());
                (uint256 balance0, uint256 balance1) = LiquidityAmounts.getAmountsForLiquidity(sqrtRatioX96, sqrtRatioAX96, sqrtRatioBX96, liquidity);
                (baseBalance, sideBalance) = isReverse ? (balance1, balance0) : (balance0, balance1);
            }
        }
    }

    /// get the current liquidity held in uniswap in side token (in usd)
    function _sideAmount(StakeModule self) public view returns(uint256) {
        if (self.tokenId() == 0) {
            return 0;
        }

        (,,,,,,,uint128 liquidity,,,,) = INonfungiblePositionManager(self.npmAddress()).positions(self.tokenId());

        if (liquidity == 0) {
            return 0;
        }

        bool isReverse = address(self.baseToken()) != IUniswapV3Pool(self.poolAddress()).token0();
        (uint160 sqrtRatioX96,,,,,,) = IUniswapV3Pool(self.poolAddress()).slot0();
        uint160 sqrtRatioAX96 = TickMath.getSqrtRatioAtTick(self.lowerTick());
        uint160 sqrtRatioBX96 = TickMath.getSqrtRatioAtTick(self.upperTick());
        (uint256 balance0, uint256 balance1) = LiquidityAmounts.getAmountsForLiquidity(sqrtRatioX96, sqrtRatioAX96, sqrtRatioBX96, liquidity);
        return self.sideToUsd(isReverse ? balance0 : balance1);
    }

    /// get pool price by sqrt ratio
    function getPriceBySqrtRatio(uint160 sqrtRatio) public view returns (uint256) {
        uint256 price = FullMath.mulDiv(uint256(sqrtRatio) * 10**10, uint256(sqrtRatio) * 10**8, 2 ** (96+96));
        return price;
    }

    /// get pool price by position's tick
    function getPriceByTick(int24 tick) public view returns (uint256) {
        uint160 sqrtRatio = TickMath.getSqrtRatioAtTick(tick);
        uint256 price = FullMath.mulDiv(uint256(sqrtRatio) * 10**10, uint256(sqrtRatio) * 10**8, 2 ** (96+96));
        return price;
    }

    /// get square root of number
    function sqrt(uint256 x) internal pure returns (uint256 y) {
        uint256 z = x / 2 + 1;
        y = x;
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
    }

    /// get current pool price
    function _getGeneralPoolPrice(StakeModule self) public view returns (uint256) {
        (uint160 sqrtRatioX96,,,,,,) = IUniswapV3Pool(self.poolAddress()).slot0();
        return getPriceBySqrtRatio(sqrtRatioX96);
    }

    /// get current pool price for a certain position [lowerTick, upperTick]
    function getPoolPrice(int24 lowerTick, int24 upperTick, uint160 sqrtRatio, bool isReverse, uint256 decimals) public view returns (uint256) {
        uint256 sa = sqrt(getPriceByTick(lowerTick));
        uint256 sb = sqrt(getPriceByTick(upperTick));
        uint256 sp = sqrt(getPriceBySqrtRatio(sqrtRatio));
        // poolDecimals = decimals of sp*sp
        uint256 result;
        if (isReverse) {
            result = (sb - sp) * decimals / (sp * sb * (sp - sa));
        } else {
            // this block is unchecked
            result = FullMath.mulDiv(sb, sp * (sp - sa), sb - sp);
        }
        return result;
    }

    /// get pool assets in usd ratio, e. g. usd(baseAmount)/usd(sideAmount)
    function _pricePool(StakeModule self) public view returns (int256){
        (uint160 sqrtRatioX96,,,,,,) = IUniswapV3Pool(self.poolAddress()).slot0();
        bool isReverse = address(self.baseToken()) != IUniswapV3Pool(self.poolAddress()).token0();
        uint256 price = getPoolPrice(self.lowerTick(), self.upperTick(), sqrtRatioX96, isReverse, self.sideDecimals() * self.poolDecimals());
        uint256 maxPrice = 10 * self.usdToBase(1e6);
        uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
            sqrtRatioX96,
            TickMath.getSqrtRatioAtTick(self.lowerTick()),
            TickMath.getSqrtRatioAtTick(self.upperTick()),
            isReverse ? price : maxPrice,
            isReverse ? maxPrice : price
        );

        uint256 amount0 = uint256(SqrtPriceMath.getAmount0Delta(sqrtRatioX96, TickMath.getSqrtRatioAtTick(self.upperTick()), int128(liquidity)));
        uint256 amount1 = uint256(SqrtPriceMath.getAmount1Delta(TickMath.getSqrtRatioAtTick(self.lowerTick()), sqrtRatioX96, int128(liquidity)));
        return int256(self.baseToUsd(isReverse ? amount1 : amount0) * 1e18 / self.sideToUsd(isReverse ? amount0 : amount1));
    }

    /// method checks how big is the divergence of assets in the pool
    function _isSamePrices(StakeModule self) public view returns (bool) {
        return true;
    }

    /// add liquidity to uniswap
    /// @param delta amount to add. if delta is MAX we want to add liquidity as much as possible
    function _addLiquidity(StakeModule self, uint256 delta) public returns (bool, uint256) {
        if (self.baseToken().balanceOf(address(self)) == 0 || self.sideToken().balanceOf(address(self)) == 0) {
            return (false, 0);
        }

        uint256 tokenId = self.tokenId();
        uint256 baseAmount = self.baseToken().balanceOf(address(self)) - (delta == self.MAX_UINT_VALUE() ? 0 : self.usdToBase(delta));
        uint256 sideAmount = self.sideToken().balanceOf(address(self));

        if (self.baseToUsd(baseAmount) <= 10 ** 2 || self.sideToUsd(sideAmount) <= 10 ** 2 || !_isSamePrices(self)) {
            return (false, 0);
        }

        bool isReverse = address(self.baseToken()) != IUniswapV3Pool(self.poolAddress()).token0();
        self.baseToken().approve(self.npmAddress(), baseAmount);
        self.sideToken().approve(self.npmAddress(), sideAmount);

        if (tokenId == 0) {
            INonfungiblePositionManager.MintParams memory params = INonfungiblePositionManager.MintParams({
                token0: isReverse ? address(self.sideToken()) : address(self.baseToken()),
                token1: isReverse ? address(self.baseToken()) : address(self.sideToken()),
                fee: self.poolFee(),
                tickLower: self.lowerTick(),
                tickUpper: self.upperTick(),
                amount0Desired: isReverse ? sideAmount : baseAmount,
                amount1Desired: isReverse ? baseAmount : sideAmount,
                amount0Min: 0,
                amount1Min: 0,
                recipient: address(self),
                deadline: block.timestamp
            });

            (tokenId,,,) = INonfungiblePositionManager(self.npmAddress()).mint(params);

            return (true, tokenId);

        } else {
            INonfungiblePositionManager.IncreaseLiquidityParams memory params = INonfungiblePositionManager.IncreaseLiquidityParams({
                tokenId: self.tokenId(),
                amount0Desired: isReverse ? sideAmount : baseAmount,
                amount1Desired: isReverse ? baseAmount : sideAmount,
                amount0Min: 0,
                amount1Min: 0,
                deadline: block.timestamp
            });

            INonfungiblePositionManager(self.npmAddress()).increaseLiquidity(params);
            return (false, 0);
        }

    }

    /// remove liquidity from uniswap
    /// @param delta amount to remove. if delta is MAX we want to remove liquidity as much as possible
    function _removeLiquidity(StakeModule self, uint256 delta) public returns (bool, uint256) {
        if (self.tokenId() == 0 || !_isSamePrices(self)) {
            return (false, 0);
        }

        uint128 liquidity;
        if (delta == self.MAX_UINT_VALUE()) {
            (,,,,,,, liquidity,,,,) = INonfungiblePositionManager(self.npmAddress()).positions(self.tokenId());
        } else {
            (uint160 sqrtPriceX96,,,,,,) = IUniswapV3Pool(self.poolAddress()).slot0();
            bool isReverse = address(self.baseToken()) != IUniswapV3Pool(self.poolAddress()).token0();
            uint256 maxPrice = 10 * self.usdToBase(delta);
            liquidity = LiquidityAmounts.getLiquidityForAmounts(
                sqrtPriceX96,
                TickMath.getSqrtRatioAtTick(self.lowerTick()),
                TickMath.getSqrtRatioAtTick(self.upperTick()),
                isReverse ? self.usdToSide(delta) : maxPrice,
                isReverse ? maxPrice : self.usdToSide(delta)
            );
        }

        INonfungiblePositionManager.DecreaseLiquidityParams memory params = INonfungiblePositionManager.DecreaseLiquidityParams({
            tokenId: self.tokenId(),
            liquidity: liquidity,
            amount0Min: 0,
            amount1Min: 0,
            deadline: block.timestamp
        });

        INonfungiblePositionManager(self.npmAddress()).decreaseLiquidity(params);

        INonfungiblePositionManager.CollectParams memory collectParam = INonfungiblePositionManager.CollectParams(self.tokenId(), address(this), type(uint128).max, type(uint128).max);
        INonfungiblePositionManager(self.npmAddress()).collect(collectParam);

        if (delta == self.MAX_UINT_VALUE()) {
            return (true, 0);
        }
        return (false, 0);
    }

    /// claim uniswapV3 rewards
    function _claimRewards(StakeModule self) public {
        if (self.tokenId() == 0) {
            return;
        }

        INonfungiblePositionManager.CollectParams memory collectParam = INonfungiblePositionManager.CollectParams(self.tokenId(), address(this), type(uint128).max, type(uint128).max);
        INonfungiblePositionManager(self.npmAddress()).collect(collectParam);
    }
}