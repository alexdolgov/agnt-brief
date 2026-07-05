// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "./libraries/UniswapV3StakeLibrary.sol";
import "./libraries/AaveV3BorrowLibrary.sol";
import "./libraries/UniswapV3SwapLibrary.sol";
import "./libraries/EtsV3AditionLibrary.sol";

import "hardhat/console.sol";
import "./core/HedgeStrategy.sol";

contract StrategyUs3UsdcWethOp is HedgeStrategy, StakeModule, BorrowModule, SwapModule {

    struct SetupParams {
        //Common
        address baseTokenAddress;
        address sideTokenAddress;

        //Stake
        address poolAddress;
        address npmAddress;
        uint256 lowerPercent;
        uint256 upperPercent;
        uint256 poolDecimals;
        uint24 poolFee;
        uint256 allowedStakeSlippage;

        //Borrow & Oracles
        address poolAddressesProvider;
        uint256 liquidationThreshold;
        uint256 neededHealthFactor;

        //Swap
        address uniswapV3Router;
        uint24 poolFee0;
        uint24 poolFee1;
        address middleTokenAddress;
        uint256 allowedSlippageBp;
        address inchRouter;
    }

    bool public isExit;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize() initializer public {
        __Strategy_init();
    }

    function setUnitParams(UnitParams calldata params) external onlyUnit {
        allowedSlippageBp = params.allowedSlippageBp;
        neededHealthFactor = params.neededHealthFactor * 10 ** 15;
        lowerPercent = params.lowerPercent;
        upperPercent = params.upperPercent;
        allowedStakeSlippage = params.allowedStakeSlippageBp;
    }

    function setParams(SetupParams calldata params) external onlyAdmin {

        baseToken = IERC20(params.baseTokenAddress);
        sideToken = IERC20(params.sideTokenAddress);
        baseDecimals = 10 ** IERC20Metadata(params.baseTokenAddress).decimals();
        sideDecimals = 10 ** IERC20Metadata(params.sideTokenAddress).decimals();
        isExit = false;

        IAaveOracle priceOracleGetter = IAaveOracle(IPoolAddressesProvider(params.poolAddressesProvider).getPriceOracle());
        baseOracle = IPriceFeed(priceOracleGetter.getSourceOfAsset(params.baseTokenAddress));
        sideOracle = IPriceFeed(priceOracleGetter.getSourceOfAsset(params.sideTokenAddress));

        poolAddress = params.poolAddress;
        npmAddress = params.npmAddress;
        lowerPercent = params.lowerPercent;
        upperPercent = params.upperPercent;
        poolDecimals = 10 ** params.poolDecimals;
        poolFee = params.poolFee;
        allowedStakeSlippage = params.allowedStakeSlippage;

        poolAddressesProvider = params.poolAddressesProvider;
        neededHealthFactor = params.neededHealthFactor * 10 ** 15;
        liquidationThreshold = params.liquidationThreshold * 10 ** 15;

        uniswapV3Router = params.uniswapV3Router;
        poolFee0 = params.poolFee0;
        poolFee1 = params.poolFee1;
        middleTokenAddress = params.middleTokenAddress;
        allowedSlippageBp = params.allowedSlippageBp;
        inchRouter = params.inchRouter;

        if (lowerTick == 0 || upperTick == 0) {
            _percentsToTicks();
        }

        setAsset(params.baseTokenAddress);
    }

    function _executeAction(Action memory action) internal {
        if (action.actionType == ActionType.ADD_LIQUIDITY) {
            _addLiquidity(action.amount);
        } else if (action.actionType == ActionType.REMOVE_LIQUIDITY) {
            _removeLiquidity(action.amount);
        } else if (action.actionType == ActionType.SUPPLY_BASE_TOKEN) {
            _supply(action.amount);
        } else if (action.actionType == ActionType.WITHDRAW_BASE_TOKEN) {
            _withdraw(action.amount);
        } else if (action.actionType == ActionType.BORROW_SIDE_TOKEN) {
            _borrow(action.amount);
        } else if (action.actionType == ActionType.REPAY_SIDE_TOKEN) {
            _repay(action.amount);
        } else if (action.actionType == ActionType.SWAP_SIDE_TO_BASE) {
            _swapSideToBase(action.amount);
        } else if (action.actionType == ActionType.SWAP_BASE_TO_SIDE) {
            _swapBaseToSide(action.amount);
        }
    }

    function _stake(uint256 _amount) internal override {
        if (!isExit) {
            _calcDeltasAndExecActions(CalculationParams(Method.STAKE, _amount, 0, getCurrentDebtRatio(), false));
        } else {
            _supply(MAX_UINT_VALUE);
        }
    }

    function _unstake(uint256 _amount) internal override returns (uint256) {
        if (!isExit) {
            _calcDeltasAndExecActions(CalculationParams(Method.UNSTAKE, OvnMath.addBasisPoints(_amount, 1), 0, getCurrentDebtRatio(), false));
        } else {
            _withdrawBase(_amount);
        }
        return _amount;
    }

    function noSwapBalance(BalanceParams calldata balanceParams) external {
        EtsV3AditionLibrary.noSwapBalance(this, balanceParams);
    }

    function _inchBalance(BalanceParams calldata balanceParams, CompoundSwap memory compoundSwap) internal override returns(bool, uint256) {
        if (isExit) {
            return (true, 0);
        }

        Action[] memory actions;

        if (balanceParams.balanceType == BalanceType.APPROACH_BALANCE) {
            int256 debtRatio = getCurrentDebtRatio();
            int256 K3 = debtRatio + int256(balanceParams.balanceRatio) - (debtRatio * int256(balanceParams.balanceRatio)) / 1e18;
            _removeLiquidity(MAX_UINT_VALUE);
            _percentsToTicks(0);
            (actions, ) = _calcDeltas(CalculationParams(Method.NOTHING, 0, 0, K3, true));
            _execActions(actions);
        } else {
            (,,,,,,,uint128 liquidity,,,,) = INonfungiblePositionManager(npmAddress).positions(tokenId);
            _removeLiquidity(MAX_UINT_VALUE);

            if (compoundSwap.amount != 0) {
                RevertParams memory revertParams = RevertParams(
                    balanceParams.targetBalancePrice,
                    balanceParams.isRevertWhenBadRate,
                    poolDecimals,
                    isReverse()
                );

                _swapByInchRoute(compoundSwap, revertParams);
            }

            _percentsToTicks(balanceParams.targetBalancePrice);
            
            TargetBalanceParams memory targetBalanceParams = TargetBalanceParams(balanceParams.targetBalancePrice, liquidity, neededHealthFactor, liquidationThreshold);
            (int256 K1, int256 K3) = calculateParamsForTargetBalance(targetBalanceParams);
            (actions, ) = _calcDeltas(CalculationParams(Method.NOTHING, 0, K1, K3, true));
            _execActions(actions);
        }


        bool isDirectSwap;
        uint256 swapAmount;
        for (uint j; j < actions.length; j++) {
            if (uint(actions[j].actionType) == 6) {
                isDirectSwap = false;
                swapAmount = usdToSide(actions[j].amount);
            } else if (uint(actions[j].actionType) == 7) {
                isDirectSwap = true;
                swapAmount = usdToBase(actions[j].amount);
            }
        }

        return (isDirectSwap, swapAmount);
    }

    function getCurrentDebtRatio() public override view returns (int256) {
        uint256 sidePool = _sideAmount();
        return int256(sidePool == 0 ? 1e18 : (_borrowAmount() * 1e18 / sidePool));
    }

    function _calcDeltasAndExecActions(CalculationParams memory calculationParams) internal override {
        (Action[] memory actions, ) = _calcDeltas(calculationParams);
        _execActions(actions);
    }

    function _calcDeltas(CalculationParams memory calculationParams) internal override view returns (Action[] memory actions, Deltas memory deltas) {
        Liquidity memory liq = currentLiquidity();
        if (calculationParams.K1 == 0) {
            calculationParams.K1 = _borrowBound(calculationParams.isBalance);
        }
        int256 K2 = _pricePool();
        int256 retAmount;
        if (calculationParams.method == Method.UNSTAKE) {
            uint256 nav = this.netAssetValue();
            require(nav >= calculationParams.amount, "Not enough NAV for UNSTAKE");
            // for unstake make deficit as amount
            retAmount = - toInt256(baseToUsd(calculationParams.amount));
        }

        return IBalanceMath(balanceMath).liquidityToActions(CalcContextRequest(calculationParams.K1, K2, calculationParams.K3, retAmount, liq, allowedSlippageBp));
    }

    function _execActions(Action[] memory actions) internal override {
        for (uint j; j < actions.length; j++) {
            _executeAction(actions[j]);
        }
    }


    function _currentAmounts() internal override view returns (Amounts memory) {

        (uint256 baseTokenPoolAmount, uint256 sideTokenPoolAmount) = _getStakeLiquidity();
        (uint256 baseCollateralAmount, uint256 sideBorrowAmount) = _getBorrowLiquidity();
        (uint256 baseFreeAmount, uint256 sideFreeAmount) = _getSwapLiquidity();

        return Amounts(
            baseCollateralAmount,
            sideBorrowAmount,
            baseTokenPoolAmount,
            sideTokenPoolAmount,
            baseFreeAmount,
            sideFreeAmount
        );
    }

    function _claimRewards(address _to) internal override returns (uint256) {

        uint256 baseBalanceBefore = baseToken.balanceOf(address(this));
        _claimStakeRewards();
        _claimBorrowRewards();

        return baseToken.balanceOf(address(this)) - baseBalanceBefore;
    }

    function _enter() internal override {
        if (!isExit) {
            return;
        }

        _percentsToTicks();
        _calcDeltasAndExecActions(CalculationParams(Method.NOTHING, 0, 0, 1e18, true));

        isExit = false;
    }

    function _exit() internal override {

        if (isExit) {
            return;
        }

        // 0. Claim rewards before exit
        _claimRewards(address(this));

        // 1. Remove liquidity from pool
        _removeLiquidity(MAX_UINT_VALUE);

        // 2. Swap base token to side token for repay to Aave
        (, uint256 aaveBorrowAmount) = _getBorrowLiquidity();
        if (aaveBorrowAmount > 0) {
            aaveBorrowAmount = OvnMath.addBasisPoints(aaveBorrowAmount, 10);
            uint256 sideTokenBalance = sideToken.balanceOf(address(this));
            if (aaveBorrowAmount > sideTokenBalance) {
                _swapBaseToSide(sideToUsd(aaveBorrowAmount - sideTokenBalance));
            }
        }

        // 3. Repay side token to Aave
       _repay(MAX_UINT_VALUE);

        // 4. Swap side token to base token
       _swapSideToBase(MAX_UINT_VALUE);

        // 5. Supply rest base token to Aave
       _supply(MAX_UINT_VALUE);

        // 6. Set isExit = true
        isExit = true;
    }
}
