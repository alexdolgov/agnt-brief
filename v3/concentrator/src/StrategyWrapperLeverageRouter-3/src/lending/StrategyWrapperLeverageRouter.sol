// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {IMorpho, MarketParams, Id, MarketParamsLib} from "@shared/src/interfaces/IMorpho.sol";
import {IMorphoFlashLoanCallback} from "@shared/src/interfaces/IMorphoFlashLoanCallback.sol";
import {IStrategyWrapper} from "src/lending/interfaces/IStrategyWrapper.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";

/// @title StrategyWrapperLeverageRouter
/// @notice Atomic leverage/deleverage for Stake DAO Strategy Wrapper markets
/// @dev Uses Morpho flashloans, Enso for swaps, integrates with StrategyWrapper.
contract StrategyWrapperLeverageRouter is IMorphoFlashLoanCallback, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;
    using MarketParamsLib for MarketParams;

    IMorpho public immutable MORPHO;
    address public immutable ENSO;

    /// @notice Flashloan context passed via callback data
    struct FlashLoanContext {
        address user;
        IStrategyWrapper wrapper;
        MarketParams marketParams;
        bool isLeverage;
        // Leverage params
        uint256 initialShares;
        uint256 minSharesOut;
        uint256 borrowAmount;
        // Deleverage params
        uint256 debtToRepay;
        uint256 collateralToWithdraw;
        uint256 minLoanTokenOut;
        // Swap
        bytes swapData;
    }

    error Unauthorized();
    error SlippageExceeded();
    error ZeroAddress();
    error ZeroAmount();
    error InvalidWrapper();

    event Leverage(
        address indexed user,
        Id indexed marketId,
        uint256 initialShares,
        uint256 flashLoanAmount,
        uint256 borrowAmount
    );

    event Deleverage(
        address indexed user,
        Id indexed marketId,
        uint256 collateralWithdrawn,
        uint256 debtRepaid
    );

    constructor(address morpho, address enso) {
        require(morpho != address(0) && enso != address(0), ZeroAddress());
        MORPHO = IMorpho(morpho);
        ENSO = enso;
    }

    /// @notice Leverage: flashloan → swap → deposit → borrow (atomic)
    /// @dev Caller must have already authorized this contract on Morpho
    /// @param wrapper The StrategyWrapper contract for this market
    /// @param marketParams The Morpho market parameters
    /// @param initialShares Amount of RewardVault shares to deposit initially (can be 0)
    /// @param flashLoanAmount Amount of loan token to flashloan for swapping
    /// @param minSharesOut Minimum RewardVault shares from swap (slippage protection)
    /// @param borrowAmount Amount to borrow to repay flashloan
    /// @param swapData Calldata for Enso swap (loan token → RewardVault shares)
    function leverage(
        IStrategyWrapper wrapper,
        MarketParams calldata marketParams,
        uint256 initialShares,
        uint256 flashLoanAmount,
        uint256 minSharesOut,
        uint256 borrowAmount,
        bytes calldata swapData
    ) external nonReentrant {
        _validateInputs(wrapper, marketParams);
        _leverage(wrapper, marketParams, initialShares, flashLoanAmount, minSharesOut, borrowAmount, swapData);
    }

    function _leverage(
        IStrategyWrapper wrapper,
        MarketParams calldata marketParams,
        uint256 initialShares,
        uint256 flashLoanAmount,
        uint256 minSharesOut,
        uint256 borrowAmount,
        bytes calldata swapData
    ) internal {
        address rewardVault = address(wrapper.REWARD_VAULT());

        // Transfer initial shares from user if provided
        if (initialShares > 0) {
            IERC20(rewardVault).safeTransferFrom(msg.sender, address(this), initialShares);
        }

        // Encode context for callback
        bytes memory callbackData = abi.encode(
            FlashLoanContext({
                user: msg.sender,
                wrapper: wrapper,
                marketParams: marketParams,
                isLeverage: true,
                initialShares: initialShares,
                minSharesOut: minSharesOut,
                borrowAmount: borrowAmount,
                debtToRepay: 0,
                collateralToWithdraw: 0,
                minLoanTokenOut: 0,
                swapData: swapData
            })
        );

        // Execute flashloan - callback will handle the rest
        MORPHO.flashLoan(marketParams.loanToken, flashLoanAmount, callbackData);

        emit Leverage(msg.sender, marketParams.id(), initialShares, flashLoanAmount, borrowAmount);
    }

    /// @notice Deleverage: flashloan → repay → withdraw → claimLiquidation → swap (atomic)
    /// @dev Caller must have already authorized this contract on Morpho
    /// @param wrapper The StrategyWrapper contract for this market
    /// @param marketParams The Morpho market parameters
    /// @param flashLoanAmount Amount of loan token to flashloan
    /// @param debtToRepay Amount of debt to repay on Morpho
    /// @param collateralToWithdraw Amount of wrapped tokens to withdraw
    /// @param minLoanTokenOut Minimum loan tokens after swap (slippage protection)
    /// @param swapData Calldata for Enso swap (RewardVault shares → loan token)
    function deleverage(
        IStrategyWrapper wrapper,
        MarketParams calldata marketParams,
        uint256 flashLoanAmount,
        uint256 debtToRepay,
        uint256 collateralToWithdraw,
        uint256 minLoanTokenOut,
        bytes calldata swapData
    ) external nonReentrant {
        _validateInputs(wrapper, marketParams);
        require(collateralToWithdraw > 0, ZeroAmount());
        _deleverage(wrapper, marketParams, flashLoanAmount, debtToRepay, collateralToWithdraw, minLoanTokenOut, swapData);
    }

    function _deleverage(
        IStrategyWrapper wrapper,
        MarketParams calldata marketParams,
        uint256 flashLoanAmount,
        uint256 debtToRepay,
        uint256 collateralToWithdraw,
        uint256 minLoanTokenOut,
        bytes calldata swapData
    ) internal {
        // Encode context for callback
        bytes memory callbackData = abi.encode(
            FlashLoanContext({
                user: msg.sender,
                wrapper: wrapper,
                marketParams: marketParams,
                isLeverage: false,
                initialShares: 0,
                minSharesOut: 0,
                borrowAmount: 0,
                debtToRepay: debtToRepay,
                collateralToWithdraw: collateralToWithdraw,
                minLoanTokenOut: minLoanTokenOut,
                swapData: swapData
            })
        );

        // Execute flashloan - callback will handle the rest
        MORPHO.flashLoan(marketParams.loanToken, flashLoanAmount, callbackData);

        emit Deleverage(msg.sender, marketParams.id(), collateralToWithdraw, debtToRepay);
    }

    /// @notice Morpho flashloan callback
    function onMorphoFlashLoan(uint256 assets, bytes calldata data) external {
        require(msg.sender == address(MORPHO), Unauthorized());

        FlashLoanContext memory ctx = abi.decode(data, (FlashLoanContext));

        if (ctx.isLeverage) {
            _executeLeverage(ctx, assets);
        } else {
            _executeDeleverage(ctx, assets);
        }

        // Approve Morpho to pull flashloan repayment
        IERC20(ctx.marketParams.loanToken).forceApprove(address(MORPHO), assets);
    }

    function _executeLeverage(FlashLoanContext memory ctx, uint256 flashLoanAmount) internal {
        IERC20 loanToken = IERC20(ctx.marketParams.loanToken);
        address rewardVault = address(ctx.wrapper.REWARD_VAULT());

        // 1. Swap loan token → RewardVault shares via Enso
        uint256 preSwapBalance = IERC20(rewardVault).balanceOf(address(this));
        loanToken.forceApprove(ENSO, flashLoanAmount);
        Address.functionCall(ENSO, ctx.swapData);

        uint256 sharesReceived = IERC20(rewardVault).balanceOf(address(this)) - preSwapBalance;
        require(sharesReceived >= ctx.minSharesOut, SlippageExceeded());

        // 2. Deposit all shares into StrategyWrapper for user
        uint256 totalShares = ctx.initialShares + sharesReceived;
        IERC20(rewardVault).forceApprove(address(ctx.wrapper), totalShares);
        ctx.wrapper.depositShares(totalShares, ctx.user);

        // 3. Borrow from Morpho to repay flashloan
        MORPHO.borrow(ctx.marketParams, ctx.borrowAmount, 0, ctx.user, address(this));
    }

    function _executeDeleverage(FlashLoanContext memory ctx, uint256 flashLoanAmount) internal {
        IERC20 loanToken = IERC20(ctx.marketParams.loanToken);
        address rewardVault = address(ctx.wrapper.REWARD_VAULT());

        // 1. Repay user's debt on Morpho
        if (ctx.debtToRepay == type(uint256).max) {
            // Full repayment: use shares-based repay to avoid rounding dust
            Id marketId = ctx.marketParams.id();
            uint128 borrowShares = MORPHO.position(marketId, ctx.user).borrowShares;
            if (borrowShares > 0) {
                // Approve max since we don't know exact assets until repay
                loanToken.forceApprove(address(MORPHO), type(uint256).max);
                MORPHO.repay(ctx.marketParams, 0, borrowShares, ctx.user, "");
            }
        } else if (ctx.debtToRepay > 0) {
            loanToken.forceApprove(address(MORPHO), ctx.debtToRepay);
            MORPHO.repay(ctx.marketParams, ctx.debtToRepay, 0, ctx.user, "");
        }

        // 2. Withdraw collateral from Morpho to this contract
        MORPHO.withdrawCollateral(ctx.marketParams, ctx.collateralToWithdraw, ctx.user, address(this));

        // 3. Sync accounting via claimLiquidation and get RewardVault shares
        // This works for voluntary withdrawals to different receivers (see StrategyWrapper docs)
        ctx.wrapper.claimLiquidation(address(this), ctx.user, ctx.collateralToWithdraw);

        // 4. Swap RewardVault shares → loan token via Enso
        uint256 preSwapBalance = loanToken.balanceOf(address(this));
        IERC20(rewardVault).forceApprove(ENSO, ctx.collateralToWithdraw);
        Address.functionCall(ENSO, ctx.swapData);

        uint256 loanTokenReceived = loanToken.balanceOf(address(this)) - preSwapBalance;
        require(loanTokenReceived >= ctx.minLoanTokenOut, SlippageExceeded());

        // 5. Send excess loan tokens to user (after flashloan repayment)
        uint256 totalLoanTokens = loanToken.balanceOf(address(this));
        if (totalLoanTokens > flashLoanAmount) {
            loanToken.safeTransfer(ctx.user, totalLoanTokens - flashLoanAmount);
        }
    }

    function _validateInputs(IStrategyWrapper wrapper, MarketParams calldata marketParams) internal pure {
        require(address(wrapper) != address(0), ZeroAddress());
        require(marketParams.collateralToken == address(wrapper), InvalidWrapper());
    }

}
