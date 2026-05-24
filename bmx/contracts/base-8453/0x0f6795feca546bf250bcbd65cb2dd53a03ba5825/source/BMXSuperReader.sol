// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {Ownable} from "@openzeppelin/contracts@4.9.2/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts@4.9.2/interfaces/IERC20.sol";

interface IPair {
    function totalSupply() external view returns (uint256);

    function balanceOf(address _address) external view returns (uint256);

    function getReserves()
        external
        view
        returns (
            uint112 _reserve0,
            uint112 _reserve1,
            uint32 _blockTimestampLast
        );
}

interface IGauge {
    function earned(address token, address account)
        external
        view
        returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function balanceWithLock(address _address) external view returns (uint256);

    function rewardsListLength() external view returns (uint256);

    function rewards(uint256) external view returns (address);

    function lockEnd(address account) external view returns (uint256);
}

interface IOptionTokenV3 {
    function getDiscountedPrice(uint256 _amount)
        external
        view
        returns (uint256);

    function getVeDiscountedPrice(uint256 _amount)
        external
        view
        returns (uint256);

    function getLpDiscountedPrice(uint256 _amount, uint256 _discount)
        external
        view
        returns (uint256);

    function getLockDurationForLpDiscount(uint256 _discount)
        external
        view
        returns (uint256);

    function getPaymentTokenAmountForExerciseLp(
        uint256 _amount,
        uint256 _discount
    )
        external
        view
        returns (uint256 paymentAmount, uint256 paymentAmountToAddLiquidity);

    function getSlopeInterceptForLpDiscount()
        external
        view
        returns (int256 slope, int256 intercept);

    function getTimeWeightedAveragePrice(uint256 _amount)
        external
        view
        returns (uint256);

    function discount() external view returns (uint256);

    function minLPDiscount() external view returns (uint256);

    function maxLPDiscount() external view returns (uint256);
}

interface IwBLT {
    function pricePerShare() external view returns (uint256);
}

interface IRouter {
    function pairFor(
        address tokenA,
        address tokenB,
        bool stable
    ) external view returns (address pair);

    function swapExactTokensForTokensSimple(
        uint256 amountIn,
        uint256 amountOutMin,
        address tokenFrom,
        address tokenTo,
        bool stable,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function getAmountOut(
        uint256 amountIn,
        address tokenIn,
        address tokenOut,
        bool stable
    ) external view returns (uint256 amount);

    function getReserves(
        address tokenA,
        address tokenB,
        bool stable
    ) external view returns (uint256, uint256);
}

interface IwBltRouter {
    function quoteTokenNeededToExerciseLp(
        address _oToken,
        address _tokenToUse,
        uint256 _oTokenAmount,
        uint256 _discount
    ) external view returns (uint256 atomicAmount, uint256 safeAmount);
}

interface IExerciseHelper {
    function fee() external view returns (uint256);
}

interface IGlpManager {
    function getAums() external view returns (uint256[] memory);
}

interface IBmxReader {
    function getTokenBalancesWithSupplies(
        address _account,
        address[] memory _tokens
    ) external view returns (uint256[] memory);

    function getTokenBalances(address _account, address[] memory _tokens)
        external
        view
        returns (uint256[] memory);
}

/// @title Reader contract for BMX UI
/// @author MorphexBMX
contract BMXSuperReader is Ownable {
    /// @notice BMX address
    address public constant bmx = 0x548f93779fBC992010C07467cBaf329DD5F059B7;
    /// @notice Staked BLT Tracker address array
    address[] public stakedBltTracker = [
        0x2D5875ab0eFB999c1f49C798acb9eFbd1cfBF63c
    ];
    /// @notice wBLT address
    IwBLT public constant wblt =
        IwBLT(0x4E74D4Db6c0726ccded4656d0BCE448876BB4C7A);
    /// @notice wBLT Router address
    IwBltRouter public constant wbltRouter =
        IwBltRouter(0x35E37D0b4960141740135e0742579aEfE5F9d598);
    /// @notice BMX/wBLT pair
    IPair public constant pair =
        IPair(0xd272920B2b4eBeE362a887451EDBd6d68A76E507);
    /// @notice BMX/wBLT staking gauge
    IGauge public constant gauge =
        IGauge(0x1F7B5E65c09dF12742255BB8Fe26958f4B52F9bb);
    /// @notice oBMX
    IOptionTokenV3 public constant obmx =
        IOptionTokenV3(0x3Ff7AB26F2dfD482C40bDaDfC0e88D01BFf79713);
    /// @notice Router
    IRouter public constant router =
        IRouter(0xE11b93B61f6291d35c5a2beA0A9fF169080160cF);
    /// @notice BLT Manager
    IGlpManager public constant bltManager =
        IGlpManager(0x9fAc7b75f367d5B35a6D6D0a09572eFcC3D406C5);
    /// @notice BMX Reader
    IBmxReader public constant bmxReader =
        IBmxReader(0x92C97631450E804848781C0764907Ec4FC6fFd29);
    /// @notice Exercise Helper
    IExerciseHelper public constant exerciseHelper =
        IExerciseHelper(0xF9FbA831cb0024c0aBa6a1eE29287C78bEc5F509);
    /// @notice Current gauge reward tokens
    address[] public rewardTokens;
    /// @notice Tokens and spenders to check allowances (liquidity)
    address[2][6] private liquidityAllowanceTokens = [
        [bmx, address(router)], // router
        [bmx, address(wbltRouter)], // wBLT router
        [address(wblt), address(router)], // router
        [address(pair), address(router)], // router
        [address(pair), address(wbltRouter)], // wBLT router
        [address(pair), address(gauge)] // gauge
    ];
    /// @notice Tokens and spenders to check allowances (exercising)
    address[2][3] private exerciseAllowanceTokens = [
        [address(wblt), address(obmx)], // wBLT:oBMX
        [address(obmx), address(wbltRouter)], // oBMX:wBLTRouter
        [address(obmx), address(exerciseHelper)] // oBMX:ExerciseHelper
    ];

    struct RewardInfo {
        address token;
        uint256 amount;
    }
    struct TokenAmounts {
        uint256 bmxAmount;
        uint256 wBltAmount;
        uint256 lpAmount;
    }
    struct ExerciseData {
        uint256 twapSlippageData;
        uint256 twapPriceData;
        uint256 discountedPrice;
        uint256 pricePerShare;
        uint256[] aums;
        uint256[] bltSupplyData;
        uint256[] discountsData;
        uint256 zapFee;
        uint256 lockEnd;
    }
    struct ExerciseLpSliderData {
        uint256 lpDiscountedPrice;
        uint256 lockDurationForDiscountData;
        uint256[] paymentAndAddLiquidityAmounts;
        uint256[] atomicAndSafeAmounts;
    }

    /// @notice Returns all gauge rewards for an account
    /// @param _account The address of the account
    /// @return Array of RewardInfo structs (token, amount)
    function getAllGaugeRewards(address _account)
        public
        view
        returns (RewardInfo[] memory)
    {
        RewardInfo[] memory rewards = new RewardInfo[](rewardTokens.length);

        for (uint256 i = 0; i < rewardTokens.length; i++) {
            rewards[i].token = rewardTokens[i];
            rewards[i].amount = gauge.earned(rewardTokens[i], _account);
        }

        return rewards;
    }

    /// @notice Returns token amounts pooled/staked(without lock)/locked for an account
    /// @param _account The address of the account
    /// @return Array of TokenAmounts structs
    function getTokenAmounts(address _account)
        public
        view
        returns (TokenAmounts[3] memory)
    {
        uint256 totalSupply = pair.totalSupply();
        (uint256 wBltReserve, uint256 bmxReserve, ) = pair.getReserves();
        uint256 lpBalance = pair.balanceOf(_account);
        uint256 lpBalanceStaked = gauge.balanceOf(_account);
        uint256 lpBalanceLocked = gauge.balanceWithLock(_account);

        uint256 bmxAmount = (lpBalance * bmxReserve) / totalSupply;
        uint256 wBltAmount = (lpBalance * wBltReserve) / totalSupply;
        uint256 bmxAmountStaked = (lpBalanceStaked * bmxReserve) / totalSupply;
        uint256 wBltAmountStaked = (lpBalanceStaked * wBltReserve) /
            totalSupply;
        uint256 bmxAmountLocked = (lpBalanceLocked * bmxReserve) / totalSupply;
        uint256 wBltAmountLocked = (lpBalanceLocked * wBltReserve) /
            totalSupply;

        TokenAmounts memory pooledAmounts = TokenAmounts({
            bmxAmount: bmxAmount,
            wBltAmount: wBltAmount,
            lpAmount: lpBalance
        });
        TokenAmounts memory stakedAmounts = TokenAmounts({
            bmxAmount: bmxAmountStaked,
            wBltAmount: wBltAmountStaked,
            lpAmount: lpBalanceStaked - lpBalanceLocked
        });
        TokenAmounts memory lockedAmounts = TokenAmounts({
            bmxAmount: bmxAmountLocked,
            wBltAmount: wBltAmountLocked,
            lpAmount: lpBalanceLocked
        });

        return [pooledAmounts, stakedAmounts, lockedAmounts];
    }

    /// @notice Used for stake LP page on BMX UI to query a bunch of allowances at once
    /// @param _account The address of the account
    /// @return Array of allowances in the following order: bmx, bmxZap, wBlt, lpToken, lpTokenZap, lpTokenGauge
    function getLiquidityAllowances(address _account)
        public
        view
        returns (uint256[] memory)
    {
        uint256[] memory allowances = new uint256[](
            liquidityAllowanceTokens.length
        );

        for (uint256 i = 0; i < liquidityAllowanceTokens.length; i++) {
            allowances[i] = IERC20(liquidityAllowanceTokens[i][0]).allowance(
                _account,
                liquidityAllowanceTokens[i][1]
            );
        }

        return allowances;
    }

    /// @notice Used for Exercise page on BMX UI to query a bunch of allowances at once
    /// @param _account The address of the account
    /// @return Array of allowances in the following order: wblt, obmxRouter, obmxZap
    function getExerciseAllowances(address _account)
        public
        view
        returns (uint256[] memory)
    {
        uint256[] memory allowances = new uint256[](
            exerciseAllowanceTokens.length
        );

        for (uint256 i = 0; i < exerciseAllowanceTokens.length; i++) {
            allowances[i] = IERC20(exerciseAllowanceTokens[i][0]).allowance(
                _account,
                exerciseAllowanceTokens[i][1]
            );
        }

        return allowances;
    }

    /// @notice Get oBMX discounts
    /// @return Array of discounts in the following order: discount, minLpDiscount, maxLpDiscount
    function getDiscounts() public view returns (uint256[] memory) {
        uint256[] memory discounts = new uint256[](3);

        discounts[0] = 100 - obmx.discount();
        discounts[1] = 100 - obmx.minLPDiscount();
        discounts[2] = 100 - obmx.maxLPDiscount();

        return discounts;
    }

    /// @notice Get general data for Exercise oBMX page on BMX UI
    /// @param _account The address of the user's account
    /// @return ExerciseData struct
    function getExerciseData(address _account)
        public
        view
        returns (ExerciseData memory)
    {
        ExerciseData memory data = ExerciseData({
            twapSlippageData: router.getAmountOut(
                1e18,
                bmx,
                address(wblt),
                false
            ),
            twapPriceData: obmx.getTimeWeightedAveragePrice(1e18),
            discountedPrice: obmx.getDiscountedPrice(1e18),
            pricePerShare: wblt.pricePerShare(),
            aums: bltManager.getAums(),
            bltSupplyData: bmxReader.getTokenBalancesWithSupplies(
                _account,
                stakedBltTracker
            ),
            discountsData: getDiscounts(),
            zapFee: exerciseHelper.fee(),
            lockEnd: gauge.lockEnd(_account)
        });

        return data;
    }

    /// @notice Get exercise LP data for when user is sliding on UI
    /// @param _discount 100 minus actual user discount
    /// @param _oBmxAmount oBMX input amount
    /// @param _zapToken If zapping, the token to retrieve data with. If not, input zero address
    /// @return ExerciseLpSliderData struct
    function getExerciseLpSliderData(
        uint256 _discount,
        uint256 _oBmxAmount,
        address _zapToken
    ) public view returns (ExerciseLpSliderData memory) {
        uint256[] memory paymentAndAddLiquidityAmounts = new uint256[](2);
        uint256[] memory atomicAndSafeAmounts = new uint256[](2);
        (
            paymentAndAddLiquidityAmounts[0],
            paymentAndAddLiquidityAmounts[1]
        ) = obmx.getPaymentTokenAmountForExerciseLp(_oBmxAmount, _discount);

        if (_zapToken != address(0) && _oBmxAmount != 0) {
            (atomicAndSafeAmounts[0], atomicAndSafeAmounts[1]) = wbltRouter
                .quoteTokenNeededToExerciseLp(
                    address(obmx),
                    _zapToken,
                    _oBmxAmount,
                    _discount
                );
        }

        ExerciseLpSliderData memory data = ExerciseLpSliderData({
            lpDiscountedPrice: obmx.getLpDiscountedPrice(1e18, _discount),
            lockDurationForDiscountData: obmx.getLockDurationForLpDiscount(
                _discount
            ),
            paymentAndAddLiquidityAmounts: paymentAndAddLiquidityAmounts,
            atomicAndSafeAmounts: atomicAndSafeAmounts
        });

        return data;
    }

    /// @notice Sets reward tokens from the Gauge contract
    /// @return Array of addresses for the reward tokens
    function setRewardTokens() public onlyOwner returns (address[] memory) {
        uint256 tokensLength = gauge.rewardsListLength();
        address[] memory tokens = new address[](tokensLength);

        for (uint256 i = 0; i < tokensLength; i++) {
            tokens[i] = gauge.rewards(i);
        }

        rewardTokens = tokens;

        return rewardTokens;
    }
}
