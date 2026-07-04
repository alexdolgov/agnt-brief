// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "./StrategyBase.sol";
import "../Sickle.sol";
import "../interfaces/external/aerodrome/IGauge.sol";
import "../interfaces/external/aerodrome/IRouter.sol";
import "../interfaces/external/aerodrome/IPool.sol";
import "../interfaces/external/IWETH.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { FixedPointMathLib } from "solmate/utils/FixedPointMathLib.sol";

struct SwapData {
    IRouter.Route[] route;
    uint256 amountIn;
    uint256 minAmountOut;
}

struct AddLiquidityData {
    address lpToken;
    bool isStablePool;
    address tokenA;
    address tokenB;
    uint256 desiredAmountA;
    uint256 desiredAmountB;
    uint256 minAmountA;
    uint256 minAmountB;
}

// When zapping in, we have 0+ swaps:
// a) 0 swaps: we deposit the LP token
// b) 1 swap : we swap the entry token for the other token in the pool
// c) 2 swaps: we swap the entry token for the pool base token,
//      then swap the pool base token for the other pool token.
//      typically the pool base token is the most liquid, e.g. WETH in a
// WETH/AERO pool.
struct ZapInData {
    address router;
    address tokenIn;
    uint256 amountIn;
    SwapData[] swaps;
    AddLiquidityData addLiquidityData;
}

struct RemoveLiquidityData {
    address lpToken;
    bool isStablePool;
    uint256 lpAmountIn;
    uint256 minAmountOutA;
    uint256 minAmountOutB;
}

// When zapping out, we have 0+ swaps:
// a) 0 swaps: we withdraw the LP token
// b) 1 swap : we remove liquidity, swap one token for the other
// c) 2 swaps: we remove liquidity, swap one token for the other,
//      swap the other token for the exit token
// feeToken will either be the LP token in case a),
//   the "other" token in case b),
//   or the exit token in case c)
struct ZapOutData {
    address router;
    RemoveLiquidityData removeLiquidityData;
    SwapData[] swaps;
    address feeToken;
}

contract AerodromeStrategy is StrategyBase {
    constructor(
        address factory_,
        address feesLib,
        address wrappedNativeAddress_
    ) StrategyBase(factory_, feesLib, wrappedNativeAddress_) { }

    /**
     * @notice Deposits a given amount of tokens into an Aerodrome liquidity
     * pool then stakes the LP tokens into the target gauge through a specific
     * Sickle.
     * @param sickleAddress Address of the Sickle performing the deposit.
     * @param targetGauge Address of the gauge to deposit into.
     * @param zapData Data used by the __zapIn() internal function to prepare
     * the deposit.
     */
    function aerodrome_deposit(
        address sickleAddress,
        address targetGauge,
        ZapInData memory zapData // using memory instead of calldata for the
            // self call
    ) public payable checkOwner(sickleAddress) {
        Sickle sickle = Sickle(payable(sickleAddress));

        address[] memory targets = new address[](1);
        targets[0] = address(this);

        bytes[] memory data = new bytes[](1);
        data[0] = abi.encodeCall(
            this._delegatecall_aerodrome_deposit,
            (address(this), targetGauge, zapData)
        );

        bool[] memory isDelegatecall = new bool[](1);
        isDelegatecall[0] = true;

        uint256[] memory values = new uint256[](1);
        values[0] = msg.value;

        sickle.multicall{ value: values[0] }(
            targets, data, isDelegatecall, values
        );
    }

    function _delegatecall_aerodrome_deposit(
        address strategy,
        address targetGauge,
        ZapInData memory zapData // using memory instead of calldata for the
            // self call
    ) external payable onlyRegisteredSickle {
        _checkMsgValue(zapData.amountIn, zapData.tokenIn == ETH);

        Sickle sickle = Sickle(payable(address(this)));
        address sickleOwner = sickle.owner();

        if (zapData.tokenIn != ETH) {
            SafeTransferLib.safeTransferFrom(
                zapData.tokenIn, sickleOwner, address(this), zapData.amountIn
            );
        }

        zapData.amountIn = _chargeFees(
            keccak256(
                abi.encodePacked(strategy, this.aerodrome_deposit.selector)
            ),
            zapData.tokenIn,
            zapData.amountIn
        );

        if (zapData.tokenIn == ETH) {
            IWETH9 weth = IWETH9(wrappedNativeAddress);
            weth.deposit{ value: zapData.amountIn }();
        }

        // fetch LP token balance of the Sickle before the zap
        uint256 lpTokenBalanceBeforeZap =
            IERC20(zapData.addLiquidityData.lpToken).balanceOf(address(this));

        // zap into LP position
        if (zapData.tokenIn != zapData.addLiquidityData.lpToken) {
            _zapIn(zapData);
        }

        // fetch LP token balance of the Sickle after the zap
        uint256 lpTokenBalanceAfterZap =
            IERC20(zapData.addLiquidityData.lpToken).balanceOf(address(this));
        uint256 amountToDeposit = zapData.tokenIn
            != zapData.addLiquidityData.lpToken
            ? lpTokenBalanceAfterZap - lpTokenBalanceBeforeZap
            : lpTokenBalanceBeforeZap;

        // approve LP tokens for use by the gauge
        SafeTransferLib.safeApprove(
            zapData.addLiquidityData.lpToken, targetGauge, amountToDeposit
        );

        // deposit LP tokens in the gauge
        IGauge(targetGauge).deposit(amountToDeposit);

        // sweep dust back to sickle owner
        address[] memory tokens = new address[](3);
        tokens[0] = IPool(zapData.addLiquidityData.lpToken).token0();
        tokens[1] = IPool(zapData.addLiquidityData.lpToken).token1();
        tokens[2] =
            zapData.tokenIn == ETH ? wrappedNativeAddress : zapData.tokenIn;
        _sweepSickleBalances(tokens, sickleOwner);
    }

    /**
     * @notice Withdraws a given amount of LP tokens from the target gauge
     * and converts them into a given exit token through a specific Sickle.
     * @param sickleAddress Address of the Sickle performing the withdrawal.
     * @param targetGauge Address of the gauge to withdraw from.
     * @param zapData Data used by the _zapOut() internal function to handle the
     * withdrawn LP tokens.
     */
    function aerodrome_withdraw(
        address sickleAddress,
        address targetGauge,
        ZapOutData calldata zapData
    ) external checkOwner(sickleAddress) {
        Sickle sickle = Sickle(payable(sickleAddress));

        address[] memory targets = new address[](1);
        bytes[] memory data = new bytes[](1);
        bool[] memory isDelegatecall = new bool[](1);
        uint256[] memory values = new uint256[](1);

        targets[0] = address(this);
        data[0] = abi.encodeCall(
            this._delegatecall_aerodrome_withdraw,
            (address(this), targetGauge, zapData)
        );
        isDelegatecall[0] = true;

        sickle.multicall(targets, data, isDelegatecall, values);
    }

    function _delegatecall_aerodrome_withdraw(
        address strategy,
        address targetGauge,
        ZapOutData calldata zapData
    ) external onlyRegisteredSickle {
        Sickle sickle = Sickle(payable(address(this)));
        uint256 baselineAmount;
        uint256 wethBaselineAmount;
        IWETH9 weth = IWETH9(wrappedNativeAddress);

        if (zapData.feeToken == ETH) {
            baselineAmount = address(this).balance;
            wethBaselineAmount = weth.balanceOf(address(this));
        } else {
            baselineAmount = IERC20(zapData.feeToken).balanceOf(address(this));
        }

        // withdraw staked lp tokens
        IGauge(targetGauge).withdraw(zapData.removeLiquidityData.lpAmountIn);

        // zap into exit token
        _zapOut(zapData);

        // charge fees and sweep
        uint256 feeBasis;
        if (zapData.feeToken == ETH) {
            weth.withdraw(weth.balanceOf(address(this)) - wethBaselineAmount);
            feeBasis = address(this).balance;
        } else {
            feeBasis = IERC20(zapData.feeToken).balanceOf(address(this));
        }
        _chargeFees(
            keccak256(
                abi.encodePacked(strategy, this.aerodrome_withdraw.selector)
            ),
            zapData.feeToken,
            feeBasis - baselineAmount
        );

        // sweep harvest back to sickle owner
        address[] memory tokens = new address[](1);
        tokens[0] = zapData.feeToken;
        _sweepSickleBalances(tokens, sickle.owner());
    }

    /**
     * @notice Claims token rewards from the target gauge and optionally
     * converts them into a given exit token through a specific Sickle.
     * @param sickleAddress Address of the Sickle performing the harvest.
     * @param targetGauge Address of the gauge accumulating rewards.
     * @param zapData Data used by the _zapOut() internal function to handle the
     * collected reward tokens.
     */
    function aerodrome_harvest(
        address sickleAddress,
        address targetGauge,
        ZapOutData calldata zapData
    ) external checkOwner(sickleAddress) {
        Sickle sickle = Sickle(payable(sickleAddress));

        address[] memory targets = new address[](1);
        bytes[] memory data = new bytes[](1);
        bool[] memory isDelegatecall = new bool[](1);
        uint256[] memory values = new uint256[](1);

        targets[0] = address(this);
        data[0] = abi.encodeCall(
            this._delegatecall_aerodrome_harvest,
            (address(this), targetGauge, zapData)
        );
        isDelegatecall[0] = true;

        sickle.multicall(targets, data, isDelegatecall, values);
    }

    function _delegatecall_aerodrome_harvest(
        address strategy,
        address targetGauge,
        ZapOutData calldata zapData
    ) external onlyRegisteredSickle {
        Sickle sickle = Sickle(payable(address(this)));
        uint256 baselineAmount;
        uint256 wethBaselineAmount;
        IWETH9 weth = IWETH9(wrappedNativeAddress);

        if (zapData.feeToken == ETH) {
            baselineAmount = address(this).balance;
            wethBaselineAmount = weth.balanceOf(address(this));
        } else {
            baselineAmount = IERC20(zapData.feeToken).balanceOf(address(this));
        }

        // claim rewards
        IGauge(targetGauge).getReward(address(this));

        // zap into exit token
        _zapOut(zapData);

        // charge fees and sweep
        uint256 feeBasis;
        if (zapData.feeToken == ETH) {
            weth.withdraw(weth.balanceOf(address(this)) - wethBaselineAmount);
            feeBasis = address(this).balance;
        } else {
            feeBasis = IERC20(zapData.feeToken).balanceOf(address(this));
        }
        _chargeFees(
            keccak256(
                abi.encodePacked(strategy, this.aerodrome_harvest.selector)
            ),
            zapData.feeToken,
            feeBasis - baselineAmount
        );

        // sweep harvest back to sickle owner
        address[] memory tokens = new address[](1);
        tokens[0] = zapData.feeToken;
        _sweepSickleBalances(tokens, sickle.owner());
    }

    /**
     * @notice Claims token rewards from the target gauge then compounds them
     * into the same gauge, through a specific Sickle.
     * @param sickleAddress Address of the Sickle performing the compounding.
     * @param targetGauge Address of the gauge contract to claim rewards from.
     * @param zapData Data used by the __zapIn() internal function to handle the
     * collected reward tokens.
     */
    function aerodrome_compound(
        address sickleAddress,
        address targetGauge,
        ZapInData memory zapData
    ) external checkOwnerOrApproved(sickleAddress) {
        Sickle sickle = Sickle(payable(sickleAddress));

        address[] memory targets = new address[](1);
        bytes[] memory data = new bytes[](1);
        bool[] memory isDelegatecall = new bool[](1);
        uint256[] memory values = new uint256[](1);

        targets[0] = address(this);
        data[0] = abi.encodeCall(
            this._delegatecall_aerodrome_compound,
            (address(this), targetGauge, zapData)
        );
        isDelegatecall[0] = true;

        sickle.multicall(targets, data, isDelegatecall, values);
    }

    function _delegatecall_aerodrome_compound(
        address strategy,
        address targetGauge,
        ZapInData memory zapData
    ) external onlyRegisteredSickle {
        Sickle sickle = Sickle(payable(address(this)));

        uint256 rewardTokenBalanceBeforeClaim =
            IERC20(zapData.tokenIn).balanceOf(address(this));

        // claim rewards
        IGauge(targetGauge).getReward(address(this));

        // charge fees in reward tokens
        uint256 rewardTokenBalanceAfterClaim =
            IERC20(zapData.tokenIn).balanceOf(address(this));

        zapData.amountIn =
            rewardTokenBalanceAfterClaim - rewardTokenBalanceBeforeClaim;

        zapData.amountIn = _chargeFees(
            keccak256(
                abi.encodePacked(strategy, this.aerodrome_compound.selector)
            ),
            zapData.tokenIn,
            zapData.amountIn
        );

        uint256 lpTokenBalanceBeforeSwap =
            IERC20(zapData.addLiquidityData.lpToken).balanceOf(address(this));

        // swap reward tokens into lp tokens
        _zapIn(zapData);

        // deposit lp tokens
        uint256 lpTokenBalanceAfterSwap =
            IERC20(zapData.addLiquidityData.lpToken).balanceOf(address(this));

        SafeTransferLib.safeApprove(
            zapData.addLiquidityData.lpToken,
            targetGauge,
            lpTokenBalanceAfterSwap - lpTokenBalanceBeforeSwap
        );
        IGauge(targetGauge).deposit(
            lpTokenBalanceAfterSwap - lpTokenBalanceBeforeSwap
        );

        // sweep dust back to sickle owner
        address[] memory tokens = new address[](3);
        tokens[0] = IPool(zapData.addLiquidityData.lpToken).token0();
        tokens[1] = IPool(zapData.addLiquidityData.lpToken).token1();
        tokens[2] = zapData.tokenIn;
        _sweepSickleBalances(tokens, sickle.owner());
    }

    function _addLiquidity(
        address router,
        AddLiquidityData memory addLiquidityData
    ) internal {
        uint256 amountA = addLiquidityData.desiredAmountA;
        if (amountA == 0) {
            amountA = IERC20(addLiquidityData.tokenA).balanceOf(address(this));
        }

        uint256 amountB = addLiquidityData.desiredAmountB;
        if (amountB == 0) {
            amountB = IERC20(addLiquidityData.tokenB).balanceOf(address(this));
        }

        SafeTransferLib.safeApprove(addLiquidityData.tokenA, router, amountA);

        SafeTransferLib.safeApprove(addLiquidityData.tokenB, router, amountB);

        IRouter(router).addLiquidity(
            addLiquidityData.tokenA,
            addLiquidityData.tokenB,
            addLiquidityData.isStablePool,
            amountA,
            amountB,
            addLiquidityData.minAmountA,
            addLiquidityData.minAmountB,
            address(this),
            block.timestamp
        );
    }

    function _zapIn(ZapInData memory zapData) internal {
        for (uint256 i; i < zapData.swaps.length; i++) {
            _swap(zapData.router, zapData.swaps[i]);
        }

        _addLiquidity(zapData.router, zapData.addLiquidityData);
    }

    function _removeLiquidity(
        address router,
        RemoveLiquidityData memory removeLiquidityData
    ) internal {
        SafeTransferLib.safeApprove(
            removeLiquidityData.lpToken, router, removeLiquidityData.lpAmountIn
        );

        IRouter(router).removeLiquidity(
            IPool(removeLiquidityData.lpToken).token0(),
            IPool(removeLiquidityData.lpToken).token1(),
            removeLiquidityData.isStablePool,
            removeLiquidityData.lpAmountIn,
            removeLiquidityData.minAmountOutA,
            removeLiquidityData.minAmountOutB,
            address(this),
            block.timestamp
        );
    }

    function _swap(
        address router,
        SwapData memory swapData
    ) internal returns (uint256) {
        address tokenIn = swapData.route[0].from;

        uint256 amountIn = swapData.amountIn;

        if (amountIn == 0) {
            amountIn = IERC20(tokenIn).balanceOf(address(this));
        }

        SafeTransferLib.safeApprove(tokenIn, router, amountIn);

        return IRouter(router).swapExactTokensForTokens(
            amountIn,
            swapData.minAmountOut,
            swapData.route,
            address(this),
            block.timestamp
        )[swapData.route.length];
    }

    function _zapOut(ZapOutData memory zapData) internal {
        if (zapData.removeLiquidityData.lpToken != address(0)) {
            _removeLiquidity(zapData.router, zapData.removeLiquidityData);
        }

        for (uint256 i; i < zapData.swaps.length; i++) {
            _swap(zapData.router, zapData.swaps[i]);
        }
    }
}
