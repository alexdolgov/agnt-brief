// SPDX-License-Identifier: MIT

pragma solidity ^0.8.23;

import {BaseStrategyPendle, OffChainData} from "../BaseStrategyPendle.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ISwapRouter} from "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IPenpieStaking} from "../integrations/penpie/IPenpieStaking.sol";
import {IPtPriceOracle} from "../integrations/pendle/IPtPriceOracle.sol";
import {ISyContract} from "../integrations/pendle/ISyContract.sol";
import {IMarket} from "../integrations/pendle/IMarket.sol";
import {IYtToken} from "../integrations/pendle/IYtToken.sol";
import {IPendleRouter} from "../integrations/pendle/IPendleRouter.sol";
import {IPenpieMaster} from "../integrations/penpie/IPenpieMaster.sol";
import {ISimpleVault} from "../interfaces/ISimpleVault.sol";
import {IPendleLogic} from "../interfaces/IPendleLogic.sol";

/**
 * @title PendleGeneralInfo
 * @dev Information struct containing data related to the Pendle strategy.
 * @param _strategyName The name of the strategy.
 * @param ytToken The address of the YT token.
 * @param syToken The address of the SY token.
 * @param ptToken The address of the PT token.
 * @param ptOracle The address of the PT price oracle.
 * @param lpToken The address of the LP token.
 * @param underlyingAsset The address of the underlying asset.
 * @param poolUnderlyingToWeth The address of the pool for swapping the underlying asset to WETH.
 * @param poolArbToWeth The address of the pool for swapping ARB to WETH.
 * @param poolPendleToWeth The address of the pool for swapping PENDLE to WETH.
 * @param extraDex The address of the extra DEX.
 * @param penpieStaking The address of the Penpie staking contract.
 * @param penpieMaster The address of the Penpie master contract.
 * @param market The address of the Pendle market.
 * @param pendleRouter The address of the Pendle router.
 * @param pendleStaking The address of the Pendle staking contract.
 * @param slippage The slippage percentage.
 * @param feeUnderlyingToWant The fee for swapping the underlying asset to WETH.
 * @param feeArbToWeth The fee for swapping ARB to WETH.
 * @param feePendleToWeth The fee for swapping PENDLE to WETH.
 */
struct PendleGeneralInfo {
    string _strategyName;
    IYtToken ytToken;
    ISyContract syToken;
    IERC20 ptToken;
    IPtPriceOracle ptOracle;
    address lpToken;
    address underlyingAsset;
    address poolUnderlyingToWeth;
    address poolArbToWeth;
    address poolPendleToWeth;
    address extraDex;
    IPenpieStaking penpieStaking;
    IPenpieMaster penpieMaster;
    IMarket market;
    IPendleRouter pendleRouter;
    address pendleStaking;
    uint256 slippage;
    uint24 feeUnderlyingToWant;
    uint24 feeArbToWeth;
    uint24 feePendleToWeth;
}

/**
 * @title PendleGeneral
 * @dev A strategy contract that implements the BaseStrategyPendle interface.
 * It provides functionality for managing assets and executing trades on the Pendle protocol.
 */
contract PendleGeneral is BaseStrategyPendle {
    using SafeERC20 for IERC20;

    address constant WETH = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;
    address constant PENDLE = 0x0c880f6761F1af8d9Aa9C466984b80DAb9a8c9e8;
    address constant ARB = 0x912CE59144191C1204E64559FE8253a0e49E6548;
    uint256 constant BASE_SLIPPAGE = 10000;
    address constant UNISWAP_V3_ROUTER =
        0xE592427A0AEce92De3Edee1F18E0157C05861564;

    PendleGeneralInfo public mainInfo;
    IPendleLogic public pendleLogic;

    bool swapBaseAssetViaAnotherDex;

    /**
     * @notice Prepares returns based on the outstanding debt and off-chain data.
     * @param _debtOutstanding The outstanding debt to be paid.
     * @param _offChainData Off-chain data needed for calculations.
     * @return _profit The profit earned.
     * @return _loss The loss incurred.
     * @return _debtPayment The debt payment amount.
     */
    function prepareReturn(
        uint256 _debtOutstanding,
        OffChainData calldata _offChainData
    )
        internal
        override
        returns (uint256 _profit, uint256 _loss, uint256 _debtPayment)
    {
        uint256 _totalAssets = estimatedTotalAssets();
        uint256 _totalDebt = ISimpleVault(address(vault))
            .strategies(address(this))
            .totalDebt;
        if (_totalAssets >= _totalDebt) {
            _profit = _totalAssets - _totalDebt;
            _loss = 0;
        } else {
            _profit = 0;
            _loss = _totalDebt - _totalAssets;
        }

        uint256 _liquidWant = want.balanceOf(address(this));
        uint256 _amountNeeded = _debtOutstanding + _profit;
        if (_liquidWant <= _amountNeeded) {
            _withdrawSome(_amountNeeded - _liquidWant, _offChainData);
            _liquidWant = want.balanceOf(address(this));
        }

        if (_liquidWant <= _profit) {
            // enough to pay profit (partial or full) only
            _profit = _liquidWant;
            _debtPayment = 0;
        } else {
            // enough to pay for all profit and _debtOutstanding (partial or full)
            _debtPayment = Math.min(_liquidWant - _profit, _debtOutstanding);
        }
    }

    /**
     * @notice Sets the option for swapping base asset via another DEX.
     * @param _option The option to swap base asset via another DEX.
     */
    function setSwapOption(bool _option) external onlyAuthorized {
        swapBaseAssetViaAnotherDex = _option;
    }

    /**
     * @notice Returns an array of addresses representing protected tokens.
     * @return protected An array of protected token addresses.
     */
    function protectedTokens()
        internal
        pure
        override
        returns (address[] memory)
    {
        address[] memory protected = new address[](3);
        protected[0] = ARB;
        protected[1] = PENDLE;
        protected[2] = WETH;
        return protected;
    }

    /**
     * @notice Sets the PendleLogic contract address.
     * @param _newPendleLogic The new PendleLogic contract address.
     */
    function setPendleLogic(address _newPendleLogic) external onlyAuthorized {
        address[3] memory tokens = [WETH, ARB, PENDLE];
        if (address(pendleLogic) != address(0)) {
            for (uint256 i = 0; i < tokens.length; i++) {
                IERC20(tokens[i]).forceApprove(address(pendleLogic), 0);
            }
        }
        pendleLogic = IPendleLogic(_newPendleLogic);
        for (uint256 i = 0; i < tokens.length; i++) {
            IERC20(tokens[i]).forceApprove(_newPendleLogic, type(uint256).max);
        }
    }

    function setNewPendleRouter(address _newRouter) external onlyAuthorized {
        address[6] memory tokens = [
            WETH,
            mainInfo.underlyingAsset,
            mainInfo.lpToken,
            address(mainInfo.syToken),
            address(mainInfo.ptToken),
            address(mainInfo.ytToken)
        ];
        for (uint i = 0; i < tokens.length; i++) {
            IERC20(tokens[i]).forceApprove(address(mainInfo.pendleRouter), 0);
        }
        mainInfo.pendleRouter = IPendleRouter(_newRouter);
        for (uint i = 0; i < tokens.length; i++) {
            IERC20(tokens[i]).forceApprove(
                address(mainInfo.pendleRouter),
                type(uint256).max
            );
        }
    }

    /**
     * @notice Gets the name of the strategy.
     * @return string The name of the strategy.
     */
    function name() external view override returns (string memory) {
        return
            string(
                abi.encodePacked("Pendle strategy - ", mainInfo._strategyName)
            );
    }

    /**
     * @notice Gets the balance of WANT tokens held by the contract.
     * @return uint256 The balance of WANT tokens.
     */
    function balanceOfWant() public view returns (uint256) {
        return IERC20(vault.token()).balanceOf(address(this));
    }

    /**
     * @notice Gets the balance of YtToken held by the contract.
     * @return uint256 The balance of YtToken.
     */
    function _ytBalance() internal view returns (uint256) {
        return IERC20(address(mainInfo.ytToken)).balanceOf(address(this));
    }

    /**
     * @notice Gets the balance of LP tokens staked.
     * @return stakedAmount The balance of LP tokens staked.
     */
    function _lpBalanceStaked() internal view returns (uint256 stakedAmount) {
        (stakedAmount, ) = mainInfo.penpieMaster.stakingInfo(
            mainInfo.lpToken,
            address(this)
        );
    }

    /**
     * @notice Estimates the total assets held by the contract.
     * @return uint256 The estimated total assets.
     */
    function estimatedTotalAssets() public view override returns (uint256) {
        return
            pendleLogic.estimatedTotalAssets(_lpBalanceStaked(), _ytBalance()) +
            balanceOfWant();
    }

    /**
     * @notice Adjusts the position based on the outstanding debt and off-chain data.
     * @param _debtOutstanding The outstanding debt to be paid.
     * @param _offChainData Off-chain data needed for calculations.
     */
    function adjustPosition(
        uint256 _debtOutstanding,
        OffChainData calldata _offChainData
    ) internal override {
        if (emergencyExit) {
            return;
        }
        _claimAndSellRewards();
        uint256 unstakedBalance = balanceOfWant();
        uint256 excessWant;
        if (unstakedBalance > _debtOutstanding) {
            excessWant = unstakedBalance - _debtOutstanding;
        }
        if (excessWant > 0) {
            (
                uint256 lpExpected,
                uint256 ytExpected,
                IPendleRouter.TokenInput memory inputData
            ) = pendleLogic.addLiquidity(excessWant, _offChainData);
            (uint256 lpOut, , , ) = mainInfo
                .pendleRouter
                .addLiquiditySingleTokenKeepYt(
                    address(this),
                    address(mainInfo.market),
                    _withSlippage(lpExpected),
                    _withSlippage(ytExpected),
                    inputData
                );
            mainInfo.penpieStaking.depositMarket(
                address(mainInfo.market),
                lpOut
            );
        }
    }

    /**
     * @notice Liquidates the position to meet the specified amount needed.
     * @param _amountNeeded The amount needed to be liquidated.
     * @param _offChainData Off-chain data needed for calculations.
     * @return _liquidatedAmount The amount successfully liquidated.
     * @return _loss The loss incurred during liquidation.
     */
    function liquidatePosition(
        uint256 _amountNeeded,
        OffChainData calldata _offChainData
    ) internal override returns (uint256 _liquidatedAmount, uint256 _loss) {
        uint256 _wantBal = want.balanceOf(address(this));
        if (_wantBal >= _amountNeeded) {
            return (_amountNeeded, 0);
        }
        _withdrawSome(_amountNeeded - _wantBal, _offChainData);
        _wantBal = want.balanceOf(address(this));

        if (_amountNeeded > _wantBal) {
            _liquidatedAmount = _wantBal;
            _loss = _amountNeeded - _wantBal;
        } else {
            _liquidatedAmount = _amountNeeded;
        }
    }

    /**
     * @notice Liquidates all positions held by the contract.
     * @param _offChainData Off-chain data needed for calculations.
     * @return _amountFreed The total amount of assets freed.
     */
    function liquidateAllPositions(
        OffChainData calldata _offChainData
    ) internal override returns (uint256 _amountFreed) {
        _claimAndSellRewards();
        uint256 lpToWantAmount = (1e18 * _lpBalanceStaked()) /
            _offChainData.WantToLpYtProportion[0];
        uint256 ytToWantAmount = (_ytBalance() * _offChainData.YtToWantRate) /
            1e18;
        _exitPosition(lpToWantAmount + ytToWantAmount, _offChainData);
        return want.balanceOf(address(this));
    }

    /**
     * @notice Prepares for strategy migration by liquidating all positions.
     * @param _newStrategy The address of the new strategy contract.
     * @param _offChainData Off-chain data needed for calculations.
     */
    function prepareMigration(
        address _newStrategy,
        OffChainData calldata _offChainData
    ) internal override {
        uint256 assets = liquidateAllPositions(_offChainData);
        want.safeTransfer(_newStrategy, assets);
    }

    /**
     * @notice Withdraws an amount needed from the LP tokens or rewards.
     * @param _amountNeeded The amount needed to be withdrawn.
     * @param _offChainData Off-chain data needed for calculations.
     */
    function _withdrawSome(
        uint256 _amountNeeded,
        OffChainData calldata _offChainData
    ) internal {
        if (_amountNeeded == 0) {
            return;
        }
        uint256 rewards = pendleLogic.getRewardsInWantToken();
        if (rewards >= _amountNeeded) {
            _claimAndSellRewards();
        } else {
            uint256 _wantToUnstake = Math.min(
                pendleLogic.lpToWant(_lpBalanceStaked()),
                _amountNeeded - rewards
            );
            _exitPosition(_wantToUnstake, _offChainData);
        }
    }

    /**
     * @notice Claims and sells rewards to convert them to WANT tokens.
     */
    function _claimAndSellRewards() internal {
        if (pendleLogic.getRewardsInWantToken() < 1e12) return;
        (
            address[] memory stakingTokens,
            address[][] memory rewTokens
        ) = pendleLogic.getRewardInfo();
        mainInfo.penpieMaster.multiclaimSpecPNP(
            stakingTokens,
            rewTokens,
            false
        );
        pendleLogic.swapRewards();
    }

    /**
     * @notice Swaps assets using the specified DEX.
     * @param _tokenIn The input token address.
     * @param _tokenOut The output token address.
     * @param _fee The fee percentage.
     * @param amount The amount to be swapped.
     * @param pool The address of the pool for swapping.
     */
    function _swapAssets(
        address _tokenIn,
        address _tokenOut,
        uint24 _fee,
        uint256 amount,
        address pool
    ) internal {
        if (amount == 0) return;
        uint256 amountOutMin = _withSlippage(
            pendleLogic.smthToSmth(pool, _tokenIn, _tokenOut, amount)
        );
        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter
            .ExactInputSingleParams(
                _tokenIn,
                _tokenOut,
                _fee,
                address(this),
                block.timestamp,
                amount,
                amountOutMin,
                0
            );
        ISwapRouter(UNISWAP_V3_ROUTER).exactInputSingle(params);
    }

    /**
     * @notice Swaps assets via another DEX.
     * @param _tokenIn The input token address.
     * @param _tokenOut The output token address.
     * @param _fee The fee percentage.
     * @param amount The amount to be swapped.
     */
    function _swapAssetsViaAnotherDex(
        address _tokenIn,
        address _tokenOut,
        uint24 _fee,
        uint256 amount
    ) internal virtual {}

    /**
     * @notice Exits the current position by redeeming LP tokens and converting them to the underlying asset.
     * @param _stakedAmountInWant The amount of staked LP tokens to be converted to the underlying asset.
     * @param _offChainData Off-chain data needed for calculations.
     */
    function _exitPosition(
        uint256 _stakedAmountInWant,
        OffChainData calldata _offChainData
    ) internal {
        (uint256 lpAmount, uint256 ytAmount) = pendleLogic
            .getLpAndYtAmountToLiquidate(
                _offChainData,
                _stakedAmountInWant,
                _lpBalanceStaked(),
                _ytBalance()
            );
        if (lpAmount == 0) return;
        IPendleRouter.SwapData memory zeroSwapData;
        uint256 syAmount = (_offChainData.LpToSyPtProportion[0] * lpAmount) /
            1e18;
        uint256 ptAmount = (_offChainData.LpToSyPtProportion[1] * lpAmount) /
            1e18;
        mainInfo.penpieStaking.withdrawMarket(
            address(mainInfo.market),
            lpAmount
        );
        (, uint256 ptOut) = mainInfo.pendleRouter.removeLiquidityDualSyAndPt(
            address(this),
            address(mainInfo.market),
            lpAmount,
            _withSlippage(syAmount),
            _withSlippage(ptAmount)
        );
        uint256 diff;
        IPendleRouter.LimitOrderData memory zeroLimitOrder;
        if (ytAmount > ptOut) {
            diff = ytAmount - ptOut;
            IPendleRouter.ApproxParams memory approxParams = IPendleRouter
                .ApproxParams(0, type(uint256).max, 0, 256, 1e14);
            uint256 syToSell = (_offChainData.PtToSyRate * diff) / 1e18;
            //check that we have enough sy
            mainInfo.pendleRouter.swapExactSyForPt(
                address(this),
                address(mainInfo.market),
                syToSell,
                _withSlippage(diff),
                approxParams,
                zeroLimitOrder
            );
        } else {
            diff = ptOut - ytAmount;
            uint256 estimatedSy = (_offChainData.PtToSyRate * diff) / 1e18;
            mainInfo.pendleRouter.swapExactPtForSy(
                address(this),
                address(mainInfo.market),
                diff,
                _withSlippage(estimatedSy),
                zeroLimitOrder
            );
        }
        uint256 estimatedPyToAssetAmount = (_offChainData.PyToAssetRate *
            ytAmount) / 1e18;
        IPendleRouter.TokenOutput memory tokenOutputDataPy = IPendleRouter
            .TokenOutput(
                address(mainInfo.underlyingAsset),
                _withSlippage(estimatedPyToAssetAmount),
                address(mainInfo.underlyingAsset),
                address(0),
                zeroSwapData
            );
        mainInfo.pendleRouter.redeemPyToToken(
            address(this),
            address(mainInfo.ytToken),
            mainInfo.ptToken.balanceOf(address(this)),
            tokenOutputDataPy
        );
        uint256 estimatedSyToAssetAmount = (_offChainData.SyToAssetRate *
            mainInfo.syToken.balanceOf(address(this))) / 1e18;
        IPendleRouter.TokenOutput memory tokenOutputDataSy = IPendleRouter
            .TokenOutput(
                address(mainInfo.underlyingAsset),
                _withSlippage(estimatedSyToAssetAmount),
                address(mainInfo.underlyingAsset),
                address(0),
                zeroSwapData
            );
        mainInfo.pendleRouter.redeemSyToToken(
            address(this),
            address(mainInfo.syToken),
            mainInfo.syToken.balanceOf(address(this)),
            tokenOutputDataSy
        );
        if (swapBaseAssetViaAnotherDex) {
            _swapAssetsViaAnotherDex(
                mainInfo.underlyingAsset,
                WETH,
                mainInfo.feeUnderlyingToWant,
                IERC20(mainInfo.underlyingAsset).balanceOf(address(this))
            );
        } else {
            _swapAssets(
                mainInfo.underlyingAsset,
                WETH,
                mainInfo.feeUnderlyingToWant,
                IERC20(mainInfo.underlyingAsset).balanceOf(address(this)),
                mainInfo.poolUnderlyingToWeth
            );
        }
    }

    function withdrawMoneyToVaultAfterMaturity() external onlyAuthorized {
        uint256 lpAmount = _lpBalanceStaked();
        IPendleRouter.SwapData memory zeroSwapData;
        IPendleRouter.LimitOrderData memory zeroLimitOrder;
        mainInfo.penpieStaking.withdrawMarket(
            address(mainInfo.market),
            lpAmount
        );

        uint256 estimatedLpToUnderlyingRate = pendleLogic.lpToWant(lpAmount);

        IPendleRouter.TokenOutput memory tokenOutputData = IPendleRouter
            .TokenOutput(
                address(mainInfo.underlyingAsset),
                _withSlippage(estimatedLpToUnderlyingRate),
                address(mainInfo.underlyingAsset),
                address(0),
                zeroSwapData
            );

        mainInfo.pendleRouter.removeLiquiditySingleToken(
            address(this),
            address(mainInfo.market),
            lpAmount,
            tokenOutputData,
            zeroLimitOrder
        );

        if (swapBaseAssetViaAnotherDex) {
            _swapAssetsViaAnotherDex(
                mainInfo.underlyingAsset,
                WETH,
                mainInfo.feeUnderlyingToWant,
                IERC20(mainInfo.underlyingAsset).balanceOf(address(this))
            );
        } else {
            _swapAssets(
                mainInfo.underlyingAsset,
                WETH,
                mainInfo.feeUnderlyingToWant,
                IERC20(mainInfo.underlyingAsset).balanceOf(address(this)),
                mainInfo.poolUnderlyingToWeth
            );
        }
        IERC20(WETH).safeTransfer(address(vault), balanceOfWant());
    }

    /**
     * @notice Sets the main information related to the Pendle strategy.
     * @param _newInfo The new PendleGeneralInfo struct.
     */
    function setMainInfo(
        PendleGeneralInfo calldata _newInfo
    ) external onlyAuthorized {
        mainInfo = _newInfo;
    }

    /**
     * @notice Adjusts the amount with slippage.
     * @param amount The amount to adjust.
     * @return uint256 The adjusted amount considering slippage.
     */
    function _withSlippage(uint256 amount) internal view returns (uint256) {
        return (amount * mainInfo.slippage) / BASE_SLIPPAGE;
    }

    function setSlippage(uint256 _newSlippage) external onlyAuthorized {
        mainInfo.slippage = _newSlippage;
        pendleLogic.setSlippage(_newSlippage);
    }
}
