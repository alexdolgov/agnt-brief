// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import {UniswapV3Library, ISwapRouter} from "@overnight-contracts/connectors/contracts/stuff/UniswapV3.sol";
// import {FullMath as FullMathUni} from "@overnight-contracts/connectors/contracts/stuff/UniswapV3.sol";
import "../core/CommonModule.sol";
// import "../core/IInchConversion.sol";
import "hardhat/console.sol";
import "./UniswapV3StakeLibrary.sol";
// import {IUniswapV3Pool, TickMath, INonfungiblePositionManager, LiquidityAmounts, FullMath, SqrtPriceMath} from "@overnight-contracts/connectors/contracts/stuff/UniswapV3.sol";
import "./AaveV3BorrowLibrary.sol";
import "../core/IHedgeStrategy.sol";
import "../core/HedgeStrategy.sol";
import "../StrategyUs3UsdcWethOp.sol";
// import "./UniswapV3SwapLibrary.sol";


library EtsV3AditionLibrary {


    function toUint256(int256 value) public pure returns (uint256) {
        require(value >= 0, "SafeCast: value must be positive");
        return uint256(value);
    }


    function logSign(string memory msg, int256 value) internal view {
        if (value < 0) {
            console.log(msg, "-", toUint256(- value));
        } else {
            console.log(msg, toUint256(value));
        }
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

    function calculateCashFlow(Liquidity memory liquidity, int256 K1, int256 K2) internal returns (int256 baseFlow, int256 sideFlow) {
        int256 basePool = liquidity.baseFree;
        int256 sidePool = liquidity.sideFree;
        int256 baseAave = liquidity.baseCollateral;
        int256 sideAave = liquidity.sideBorrow;
        logSign("basePool", basePool);
        logSign("sidePool", sidePool);
        logSign("baseAave", baseAave);
        logSign("sideAave", sideAave);

        int256 a = (baseAave * K2 - basePool * K1) * 10 ** 18;
        int256 b = K1 * K2 * (sidePool - sideAave);
        logSign("a", a);
        logSign("b", b);
        baseFlow = (a + b) / (K1 + K2) / 1e18;
        sideFlow = (basePool * 10 ** 18 + baseAave * 10 ** 18 - sidePool * K2 - sideAave * K1) / (K1 + K2);
    }

    function before(StrategyUs3UsdcWethOp self) public {
        uint256 borrowBound = uint256(self._borrowBound(false)) * 850; //K1
        uint256 pricePool = uint256(self._pricePool()); //K2
        uint256 debtRatio = uint256(self.getCurrentDebtRatio()); //K3
        console.log("borrowBound (K1):", borrowBound);
        console.log("pricePool   (K2):", pricePool);
        console.log("debtRatio   (K3):", debtRatio);
        {
        Liquidity memory currLiquidity = self.currentLiquidity();
        if (currLiquidity.sidePool > currLiquidity.sideBorrow) {
            console.log("deltaBps", uint256((currLiquidity.sidePool - currLiquidity.sideBorrow) * 10000 / currLiquidity.sidePool));
        } else {
            console.log("deltaBps", uint256((currLiquidity.sideBorrow - currLiquidity.sidePool) * 10000 / currLiquidity.sidePool));
        }
        }
        
    }


    function calculateNewLiq(StrategyUs3UsdcWethOp self, uint256 targetBalancePrice, uint128 liquidity) public returns (NewLiq memory newLiq) {
        StakeModule.TargetBalanceParams memory targetBalanceParams = StakeModule.TargetBalanceParams(targetBalancePrice, liquidity, self.neededHealthFactor(), self.liquidationThreshold());
        (int256 K1, int256 K2) = self.calculateEtsV3Params(targetBalanceParams);

        // logSign("K1", K1);
        // logSign("K2", K2);

        Liquidity memory currLiquidity = self.currentLiquidity();

        (newLiq.baseFlow, newLiq.sideFlow) = calculateCashFlow(currLiquidity, K1, K2);

        newLiq.basePool = currLiquidity.baseFree + newLiq.baseFlow;
        newLiq.sidePool = currLiquidity.sideFree + newLiq.sideFlow;
        newLiq.baseAave = currLiquidity.baseCollateral - newLiq.baseFlow;
        newLiq.sideAave = currLiquidity.sideBorrow + newLiq.sideFlow;

        // logSign("basePoolNew", basePool);
        // logSign("sidePoolNew", sidePool);
        // logSign("baseAaveNew", baseAave);
        // logSign("sideAaveNew", sideAave);
    }

    struct NewLiq {
        int256 basePool;
        int256 sidePool;
        int256 baseAave;
        int256 sideAave;
        int256 baseFlow;
        int256 sideFlow;
    }

    function noSwapBalance(StrategyUs3UsdcWethOp self, IHedgeStrategy.BalanceParams calldata balanceParams) public {

        
        before(self);

        (,,,,,,,uint128 liquidity,,,,) = INonfungiblePositionManager(self.npmAddress()).positions(self.tokenId());
        
        self._removeLiquidity(type(uint256).max);

        self._percentsToTicks(balanceParams.targetBalancePrice);

        NewLiq memory newLiq = calculateNewLiq(self, balanceParams.targetBalancePrice, liquidity);


        (uint256 balance0Now, uint256 balance1Now) = (0,0);
        {
        (uint160 sqrtRatioX96Now,,,,,,) = IUniswapV3Pool(self.poolAddress()).slot0();
        uint160 sqrtRatioX96Next = uint160(sqrt(FullMath.mulDiv(balanceParams.targetBalancePrice, 2 ** 192, 10 ** 18)));
        uint128 liquidity1 = LiquidityAmounts.getLiquidityForAmounts(
            sqrtRatioX96Now,
            TickMath.getSqrtRatioAtTick(self.lowerTick()),
            TickMath.getSqrtRatioAtTick(self.upperTick()),
            self.usdToSide(uint256(newLiq.sidePool)),
            self.usdToBase(uint256(newLiq.basePool))
        );
        (balance0Now, balance1Now) = LiquidityAmounts.getAmountsForLiquidity(
            sqrtRatioX96Next, 
            TickMath.getSqrtRatioAtTick(self.lowerTick()), 
            TickMath.getSqrtRatioAtTick(self.upperTick()), 
            liquidity1
        );
        // console.log("liquidity1", liquidity1);

        }

        // console.log("basePoolUsdc", balance1Now);
        // console.log("sidePoolWeth", balance0Now);
        // console.log("basePoolUsd", balance1Now);
        uint256 sidePoolUsdBefore = (balance0Now * balanceParams.targetBalancePrice) / self.sideDecimals(); 
        // console.log("sidePoolUsd", sidePoolUsdBefore);



        // console.log("baseAaveUsdc", uint256(baseAave));
        // console.log("sideAaveWeth", usdToSide(uint256(sideAave)));
        // console.log("baseAaveUsd", uint256(baseAave));
        uint256 sideAaveUsd = (self.usdToSide(uint256(newLiq.sideAave)) * balanceParams.targetBalancePrice) / self.sideDecimals();
        // console.log("sideAaveUsd", sideAaveUsd);


        console.log("borrowBound (K1):", uint256(newLiq.baseAave) * 1e18 * 850 / sideAaveUsd);
        console.log("debtRatio   (K3):", sideAaveUsd * 1e18 / sidePoolUsdBefore);

        {
        
        if (sidePoolUsdBefore > sideAaveUsd) {
            console.log("deltaBps", uint256((sidePoolUsdBefore - sideAaveUsd) * 10000 / sidePoolUsdBefore));
        } else {
            console.log("deltaBps", uint256((sideAaveUsd - sidePoolUsdBefore) * 10000 / sidePoolUsdBefore));
        }
        }


        logSign("baseF", newLiq.baseFlow);
        logSign("sideF", newLiq.sideFlow);
        
        if (newLiq.baseFlow > 0 && newLiq.sideFlow <= 0) {
            // repay -> withdraw
            console.log("reapy", uint256(-newLiq.sideFlow));
            console.log("withdraw", uint256(newLiq.baseFlow));
            self._repay(uint256(-newLiq.sideFlow));
            self._withdraw(uint256(newLiq.baseFlow));
        } else if (newLiq.baseFlow <= 0 && newLiq.sideFlow > 0) {
            // supply -> borrow
            console.log("supply", uint256(-newLiq.baseFlow));
            console.log("borrow", uint256(newLiq.sideFlow));
            self._supply(uint256(-newLiq.baseFlow));
            self._borrow(uint256(newLiq.sideFlow));
        } else if (newLiq.baseFlow <= 0 && newLiq.sideFlow <= 0) {
            // supply -> repay
            console.log("supply", uint256(-newLiq.baseFlow));
            console.log("reapy", uint256(-newLiq.sideFlow));
            self._supply(uint256(-newLiq.baseFlow));
            self._repay(uint256(-newLiq.sideFlow));
        } else {
            // borrow -> withdraw
            console.log("borrow", uint256(newLiq.sideFlow));
            console.log("withdraw", uint256(newLiq.baseFlow));
            self._borrow(uint256(newLiq.sideFlow));
            self._withdraw(uint256(newLiq.baseFlow));
        }

        self._addLiquidity(type(uint256).max);

        // require(1<0, "");
    }


}
