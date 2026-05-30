//          .8.              ,o888888o.    8 888888888o.   `8.`8888.      ,8' 8 888888888o   8888888 8888888888     ,o888888o.        d888888o.
//         .888.            8888     `88.  8 8888    `88.   `8.`8888.    ,8'  8 8888    `88.       8 8888        . 8888     `88.    .`8888:' `88.
//        :88888.        ,8 8888       `8. 8 8888     `88    `8.`8888.  ,8'   8 8888     `88       8 8888       ,8 8888       `8b   8.`8888.   Y8
//       . `88888.       88 8888           8 8888     ,88     `8.`8888.,8'    8 8888     ,88       8 8888       88 8888        `8b  `8.`8888.
//      .8. `88888.      88 8888           8 8888.   ,88'      `8.`88888'     8 8888.   ,88'       8 8888       88 8888         88   `8.`8888.
//     .8`8. `88888.     88 8888           8 888888888P'        `8. 8888      8 888888888P'        8 8888       88 8888         88    `8.`8888.
//    .8' `8. `88888.    88 8888           8 8888`8b             `8 8888      8 8888               8 8888       88 8888        ,8P     `8.`8888.
//   .8'   `8. `88888.   `8 8888       .8' 8 8888 `8b.            8 8888      8 8888               8 8888       `8 8888       ,8P  8b   `8.`8888.
//  .888888888. `88888.     8888     ,88'  8 8888   `8b.          8 8888      8 8888               8 8888        ` 8888     ,88'   `8b.  ;8.`8888
// .8'       `8. `88888.     `8888888P'    8 8888     `88.        8 8888      8 8888               8 8888           `8888888P'      `Y8888P ,88P'

// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.13;

import {ILendingPool, ILendingPoolAddressesProvider} from "./base/ACryptoSVaultAaveBase.sol";

// Using @openzeppelin/contracts-upgradeable@4.5.2
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

// import "hardhat/console.sol";

library ACryptoSValasHelper {
    IChefIncentivesControllerHelper constant chefIncentivesController =
        IChefIncentivesControllerHelper(
            0xB7c1d99069a4eb582Fc04E7e1124794000e7ecBF
        );

    ILendingPoolAddressesProvider constant lendingPoolAddressesProvider =
        ILendingPoolAddressesProvider(
            0x0736B3dAdDe5B78354BF7F7faaFAcEE82B1851b9
        );
    ILendingPool constant lendingPool =
        ILendingPool(0xE29A55A6AEFf5C8B1beedE5bCF2F0Cb3AF8F91f5);

    uint256 constant ESTIMATE_STEPS = 5;

    struct EstimateBestDayReturnLocalVars {
        uint256 balance;
        uint256 liq;
        uint256 liq0;
        uint256 maxBorrow;
    }

    function estimateBestDayReturn(
        address token,
        uint256 supplyBalance,
        uint256 borrowBalance,
        uint256 rewardsDiscountFactor,
        uint256 maxBorrowLimit
    ) external view returns (uint256 dayReturn, uint256 borrowLimit) {
        EstimateBestDayReturnLocalVars memory vars;

        ILendingPool.ReserveData memory reserve = lendingPool.getReserveData(
            token
        );
        vars.balance = supplyBalance - borrowBalance;

        vars.liq = ((reserve.configuration & ~uint256(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF)) >> 16) * 1e18 / 10000; // prettier-ignore
        vars.liq0 = (vars.liq * maxBorrowLimit) / 1e18;
        vars.maxBorrow = (vars.liq0 * vars.balance) / (1e18 - vars.liq0); // prettier-ignore

        uint256 nextDayReturn;

        for (uint256 i = ESTIMATE_STEPS; i >= 0; i--) {
            uint256 borrow = vars.maxBorrow * i / ESTIMATE_STEPS * i / ESTIMATE_STEPS; // prettier-ignore
            nextDayReturn = _estimateDayReturn(
                reserve,
                token,
                supplyBalance,
                borrowBalance,
                borrow + vars.balance,
                borrow,
                rewardsDiscountFactor
            );
            if (nextDayReturn <= dayReturn) break;
            dayReturn = nextDayReturn;
            borrowLimit = borrow * 1e18 / (borrow + vars.balance) * 1e18 / vars.liq; // prettier-ignore
            // console.log("xxx");
            // console.log(nextApy, borrowLimit);
            if (i == 0) break;
        }
    }

    struct EstimateDayReturnLocalVars {
        uint256 totalAllocPoint;
        uint256 rewardsPerSecond;
        uint256 price;
        uint256 liquidityRate;
        uint256 stableBorrowRate;
        uint256 variableBorrowRate;
        uint256 balanceAfter;
    }

    function estimateDayReturn(
        address token,
        uint256 supplyBalance,
        uint256 borrowBalance,
        uint256 newSupplyBalance,
        uint256 newBorrowBalance,
        uint256 rewardsDiscountFactor
    ) public view returns (uint256 dayReturn) {
        return
            _estimateDayReturn(
                lendingPool.getReserveData(token),
                token,
                supplyBalance,
                borrowBalance,
                newSupplyBalance,
                newBorrowBalance,
                rewardsDiscountFactor
            );
    }

    function _estimateDayReturn(
        ILendingPool.ReserveData memory reserve,
        address token,
        uint256 supplyBalance,
        uint256 borrowBalance,
        uint256 newSupplyBalance,
        uint256 newBorrowBalance,
        uint256 rewardsDiscountFactor
    ) public view returns (uint256 dayReturn) {
        EstimateDayReturnLocalVars memory vars;

        {
            vars.price = getPriceUsd(
                token,
                // prettier-ignore
                (reserve.configuration & ~uint256(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF)) >> 48 // aTokenDecimals
            );

            vars.totalAllocPoint = chefIncentivesController.totalAllocPoint();
            vars.rewardsPerSecond = chefIncentivesController.rewardsPerSecond();
            (
                uint256 totalSupply0,
                uint256 allocPoint0,
                ,
                ,

            ) = chefIncentivesController.poolInfo(
                    address(reserve.aTokenAddress)
                );

            (
                uint256 totalSupply1,
                uint256 allocPoint1,
                ,
                ,

            ) = chefIncentivesController.poolInfo(
                    address(reserve.variableDebtTokenAddress)
                );
            // uint256 rewards0 = vars.rewardsPerSecond * 1 days * allocPoint0 / vars.totalAllocPoint * newSupplyBalance / (totalSupply0 - supplyBalance + newSupplyBalance); // prettier-ignore
            uint256 rewards0 = vars.rewardsPerSecond * 1 days * allocPoint0 / vars.totalAllocPoint * newSupplyBalance / (totalSupply0 - supplyBalance + newSupplyBalance); // prettier-ignore
            uint256 rewards1 = vars.rewardsPerSecond * 1 days * allocPoint1 / vars.totalAllocPoint * newBorrowBalance / (totalSupply1 - borrowBalance + newBorrowBalance); // prettier-ignore
            uint256 rewards = ((rewards0 + rewards1) * valasPrice() / vars.price * rewardsDiscountFactor / 1e18); // prettier-ignore

            // console.log(
            //     (((rewards0 * valasPrice()) / vars.price) * 1e18) /
            //         newSupplyBalance,
            //     (((rewards1 * valasPrice()) / vars.price) * 1e18) /
            //         newBorrowBalance
            // ); // check against supply/borrow reward apy

            vars.balanceAfter = newSupplyBalance - newBorrowBalance + rewards; // prettier-ignore
        }

        (
            vars.liquidityRate,
            vars.stableBorrowRate,
            vars.variableBorrowRate
        ) = getInterestRates(reserve, token, borrowBalance, newBorrowBalance);
        // console.log(
        //     vars.liquidityRate,
        //     vars.stableBorrowRate,
        //     vars.variableBorrowRate
        // );

        vars.balanceAfter =
            vars.balanceAfter +
            (newSupplyBalance *
                (calculateCompoundedInterest(vars.liquidityRate, 1 days) -
                    1e27)) /
            1e27 -
            (newBorrowBalance *
                (calculateCompoundedInterest(vars.variableBorrowRate, 1 days) -
                    1e27)) /
            1e27;
        dayReturn =
            (vars.balanceAfter * 1e18) /
            (newSupplyBalance - newBorrowBalance);
    }

    function valasPrice() public view returns (uint256 price) {
        (uint256 reserve0, uint256 reserve1, ) = IUniswapV2Pool(
            address(0x829F540957DFC652c4466a7F34de611E172e64E8) // PCS Valas-BNB
        ).getReserves();
        price = (reserve1 * 1e18) / reserve0;

        (reserve0, reserve1, ) = IUniswapV2Pool(
            address(0x58F876857a02D6762E0101bb5C46A8c1ED44Dc16) // PCS BNB-BUSD
        ).getReserves();
        price = (price * reserve1) / reserve0;
    }

    struct GetInterestRatesLocalVars {
        uint256 totalStableDebt;
        uint256 avgStableRate;
        uint256 availableLiquidity;
        uint256 totalVariableDebt;
        uint256 reserveFactor;
    }

    // returns rates with 27 decimals
    function getInterestRates(
        ILendingPool.ReserveData memory reserve,
        address reserveAddress,
        uint256 borrowBalance,
        uint256 newBorrowBalance
    )
        public
        view
        returns (
            uint256 liquidityRate,
            uint256 stableBorrowRate,
            uint256 variableBorrowRate
        )
    {
        GetInterestRatesLocalVars memory vars;

        (vars.totalStableDebt, vars.avgStableRate) = IStableDebtToken(
            reserve.stableDebtTokenAddress
        ).getTotalSupplyAndAvgRate();

        vars.availableLiquidity = IERC20Upgradeable(reserveAddress).balanceOf(
            reserve.aTokenAddress
        );

        vars.totalVariableDebt =
            IERC20Upgradeable(reserve.variableDebtTokenAddress).totalSupply() -
            borrowBalance +
            newBorrowBalance;

        vars.reserveFactor =
            (reserve.configuration &
                ~uint256(
                    0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF
                )) >>
            64;

        return
            IReserveInterestRateStrategy(reserve.interestRateStrategyAddress)
                .calculateInterestRates(
                    reserveAddress,
                    vars.availableLiquidity,
                    vars.totalStableDebt,
                    vars.totalVariableDebt,
                    vars.avgStableRate,
                    vars.reserveFactor
                );
    }

    // exp = seconds elapsed
    function calculateCompoundedInterest(uint256 rate, uint256 exp)
        internal
        pure
        returns (uint256)
    {
        if (exp == 0) {
            return 1e27;
        }

        uint256 expMinusOne = exp - 1;

        uint256 expMinusTwo = exp > 2 ? exp - 2 : 0;

        uint256 ratePerSecond = rate / 365 days;

        uint256 basePowerTwo = (ratePerSecond * ratePerSecond) / 1e27;
        uint256 basePowerThree = (basePowerTwo * ratePerSecond) / 1e27;

        uint256 secondTerm = (exp * expMinusOne * basePowerTwo) / 2;
        uint256 thirdTerm = (exp * expMinusOne * expMinusTwo * basePowerThree) /
            6;

        return 1e27 + ratePerSecond * exp + secondTerm + thirdTerm;
    }

    function getPriceUsd(address token, uint aDecimals)
        public
        view
        returns (uint256)
    {
        return
            lendingPoolAddressesProvider.getPriceOracle().getAssetPrice(
                address(token)
            ) * (10**(18 - aDecimals));
    }
}

interface IStableDebtToken {
    function getTotalSupplyAndAvgRate()
        external
        view
        returns (uint256, uint256);
}

interface IUniswapV2Pool {
    function getReserves()
        external
        view
        returns (
            uint112 reserve0,
            uint112 reserve1,
            uint32 blockTimestampLast
        );
}

interface IReserveInterestRateStrategy {
    function calculateInterestRates(
        address reserve,
        uint256 availableLiquidity,
        uint256 totalStableDebt,
        uint256 totalVariableDebt,
        uint256 averageStableBorrowRate,
        uint256 reserveFactor
    )
        external
        view
        returns (
            uint256,
            uint256,
            uint256
        );
}

interface IChefIncentivesControllerHelper {
    function totalAllocPoint() external view returns (uint256);

    function rewardsPerSecond() external view returns (uint256);

    function poolInfo(address)
        external
        view
        returns (
            uint256 totalSupply,
            uint256 allocPoint,
            uint256 lastRewardTime,
            uint256 accRewardPerShare,
            address onwardIncentives
        );
}
