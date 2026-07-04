// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;
pragma abicoder v2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@uniswap/v3-periphery/contracts/libraries/OracleLibrary.sol";
import "@uniswap/swap-router-contracts/contracts/interfaces/ISwapRouter02.sol";
import "@uniswap/swap-router-contracts/contracts/interfaces/IV3SwapRouter.sol";
import "./libs/ZapLib.sol";
import "./interfaces/IFXPool.sol";
import "./interfaces/ILendingPool.sol";
import "./interfaces/IAaveOracle.sol";
import "./interfaces/IBaseToUsdAssimilator.sol";
import "./interfaces/IVault.sol";

contract XaveStratXSGDUSDCIndexUSDCv2 is Ownable {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    struct Addresses {
        address usdc;
        address xsgd;
        address indexUsdc;
        address lpToken;
        address lendingPool;
        address lendingHToken;
        address lendingUsdcVariableDebtToken;
        address lendingOracle;
        address uniswapRouter;
        address uniswapPool;
        address vault;
    }

    struct UserBalance {
        uint256 usdc;
        uint256 xsgd;
        uint256 indexUsdc;
    }

    uint256 public constant PRECISION = 1e6;

    uint256 private constant USDC_DECIMALS = 1e6;
    uint256 private constant ETH_DECIMALS = 1e18;

    Addresses public addresses;
    uint256 public collateralizationRatio;
    uint256 public interestRateMode;
    uint24 public uniswapPoolFee;

    mapping(address => UserBalance) private userBalances;

    event ZappedIn(
        uint256[] tokenInAmounts,
        address[] tokenInAddresses,
        uint256 interestTokenAmount,
        address interestTokenAddress,
        uint256 debtTokenAmount,
        address debtTokenAddress,
        uint256 tokenOutAmount,
        address tokenOutAddress
    );
    event ZappedOut(
        uint256 tokenInAmount,
        address tokenInAddress,
        uint256 interestTokenAmount,
        address interestTokenAddress,
        uint256 debtTokenAmount,
        address debtTokenAddress,
        uint256[] tokenOutAmounts,
        address[] tokenOutAddresses
    );

    constructor(
        Addresses memory _addresses,
        uint256 _collateralizationRatio,
        uint256 _interestRateMode,
        uint24 _uniswapPoolFee
    ) {
        addresses = _addresses;
        collateralizationRatio = _collateralizationRatio;
        interestRateMode = _interestRateMode;
        uniswapPoolFee = _uniswapPoolFee;
    }

    // -------------------------------------------------------------------------
    // SETTER FUNCTIONS
    // -------------------------------------------------------------------------

    function setAddresses(Addresses memory _addresses) public onlyOwner {
        addresses = _addresses;
    }

    function setCollateralizationRatio(uint256 _collateralizationRatio)
        public
        onlyOwner
    {
        collateralizationRatio = _collateralizationRatio;
    }

    function setInterestRateMode(uint256 _interestRateMode) public onlyOwner {
        interestRateMode = _interestRateMode;
    }

    function setUniswapPoolFee(uint24 _uniswapPoolFee) public onlyOwner {
        uniswapPoolFee = _uniswapPoolFee;
    }

    // -------------------------------------------------------------------------
    // CORE EXTERNAL FUNCTIONS
    // -------------------------------------------------------------------------

    /// @dev Main function to invest on this strat
    ///      1. Adds liquidity to AMM
    ///      2. Deposits LP token to Lending Market
    ///      3. Borrows USDC from Lending Market
    ///      4. Swaps USDC for indexUSDC on Uniswap (Thetanuts Stronghold)
    /// @param depositNumeraire The total amount of xSGD & USDC you want to invest (in USD value).
    ///                         Sender is expected to hold the equivalent amount of xSGD & USDC in their wallet.
    /// @param slippage Slippage setting to use when swapping on Uniswap
    /// @return uint256 The amount of indexUSDC sent to the caller
    function zapIn(uint256 depositNumeraire, uint256 slippage)
        external
        returns (uint256)
    {
        (
            uint256 lpAmount,
            uint256[] memory tokenInAmounts,
            address[] memory tokenInAddresses
        ) = addLiquidity(depositNumeraire);

        // Store any leftover balances after deposit (we'll transfer it back to msg.sender)
        uint256 xsgdBalance = IERC20(addresses.xsgd).balanceOf(address(this));
        uint256 usdcBalance = IERC20(addresses.usdc).balanceOf(address(this));
        userBalances[msg.sender].xsgd = xsgdBalance;
        userBalances[msg.sender].usdc = usdcBalance;

        uint256 amountBorrowed = depositAndBorrow(lpAmount);

        uint256 indexUSDCReceived = swap(
            addresses.usdc,
            addresses.indexUsdc,
            msg.sender,
            amountBorrowed,
            slippage
        );

        userBalances[msg.sender].indexUsdc = indexUSDCReceived;

        transferBalances();

        emit ZappedIn(
            tokenInAmounts,
            tokenInAddresses,
            lpAmount,
            addresses.lendingHToken,
            amountBorrowed,
            addresses.lendingUsdcVariableDebtToken,
            indexUSDCReceived,
            addresses.indexUsdc
        );

        return indexUSDCReceived;
    }

    /// @dev Main function to exit from this strat
    ///      1. Swaps indexUSDC to USDC on Uniswap (Thetanuts Stronghold)
    ///      2. Repays USDC loan to Lending Market
    ///      3. Withdraw LP token from Lending Market
    ///      4. Removes liquidity from AMM
    /// @param amount The amount of indexUSDC you want to withdraw
    /// @param slippage Slippage setting to use when swapping on Uniswap
    /// @return uint256[] The amount of xSGD and USDC sent to the caller sorted by address
    function zapOut(uint256 amount, uint256 slippage)
        external
        returns (uint256[] memory)
    {
        // --- start validations --- //
        // Check if user already paid USDC loan
        uint256 debtTokenBalance = IERC20(
            addresses.lendingUsdcVariableDebtToken
        ).balanceOf(address(msg.sender));
        require(debtTokenBalance > 0, "XaveStrat/loan-repaid");

        // Check if user already withdraw LP collateral
        uint256 hTokenBalance = IERC20(addresses.lendingHToken).balanceOf(
            address(msg.sender)
        );
        require(hTokenBalance > 0, "XaveStrat/collateral-withdrawn");
        // --- end validations --- //

        IERC20(addresses.indexUsdc).safeTransferFrom(
            msg.sender,
            address(this),
            amount
        );

        uint256 usdcReceived = swap(
            addresses.indexUsdc,
            addresses.usdc,
            address(this),
            amount,
            slippage
        );

        uint256 lpTokensReceived = repayAndWithdraw(usdcReceived);

        uint256 debtTokenBalanceAfterRepay = IERC20(
            addresses.lendingUsdcVariableDebtToken
        ).balanceOf(address(msg.sender));

        removeLiquidity(lpTokensReceived);

        uint256 xsgdBalance = IERC20(addresses.xsgd).balanceOf(address(this));
        uint256 usdcBalance = IERC20(addresses.usdc).balanceOf(address(this));
        userBalances[msg.sender].xsgd = xsgdBalance;
        userBalances[msg.sender].usdc = usdcBalance;

        transferBalances();

        uint256[] memory tokenAmounts = new uint256[](2);
        tokenAmounts[0] = userBalances[msg.sender].xsgd;
        tokenAmounts[1] = userBalances[msg.sender].usdc;
        address[] memory tokenAddresses = new address[](2);
        tokenAddresses[0] = addresses.xsgd;
        tokenAddresses[1] = addresses.usdc;

        emit ZappedOut(
            amount,
            addresses.indexUsdc,
            lpTokensReceived,
            addresses.lendingHToken,
            debtTokenBalance - debtTokenBalanceAfterRepay,
            addresses.lendingUsdcVariableDebtToken,
            tokenAmounts,
            tokenAddresses
        );

        return tokenAmounts;
    }

    // -------------------------------------------------------------------------
    // INTERNAL LOGIC FUNCTIONS
    // -------------------------------------------------------------------------

    /// @dev Adds liquidity to AMM
    function addLiquidity(uint256 depositNumeraire)
        internal
        returns (
            uint256,
            uint256[] memory,
            address[] memory
        )
    {
        bytes32 poolId = IFXPool(addresses.lpToken).getPoolId();

        (address[] memory tokens, , ) = IVault(addresses.vault).getPoolTokens(
            poolId
        );

        (, uint256[] memory estimatedAmounts) = IFXPool(addresses.lpToken)
            .viewDeposit(depositNumeraire);

        uint256[] memory sortedAmounts;
        sortedAmounts = new uint256[](2);
        if (tokens[0] == addresses.xsgd) {
            sortedAmounts[0] = estimatedAmounts[0];
            sortedAmounts[1] = estimatedAmounts[1];
        } else {
            sortedAmounts[0] = estimatedAmounts[1];
            sortedAmounts[1] = estimatedAmounts[0];
        }

        IERC20(tokens[0]).safeTransferFrom(
            msg.sender,
            address(this),
            sortedAmounts[0]
        );
        IERC20(tokens[1]).safeTransferFrom(
            msg.sender,
            address(this),
            sortedAmounts[1]
        );

        IERC20(tokens[0]).safeApprove(addresses.vault, 0);
        IERC20(tokens[0]).safeApprove(addresses.vault, sortedAmounts[0]);
        IERC20(tokens[1]).safeApprove(addresses.vault, 0);
        IERC20(tokens[1]).safeApprove(addresses.vault, sortedAmounts[1]);

        bytes memory userData = abi.encode(depositNumeraire, tokens);

        IVault.JoinPoolRequest memory request = IVault.JoinPoolRequest({
            assets: tokens,
            maxAmountsIn: sortedAmounts,
            userData: userData,
            fromInternalBalance: false
        });

        IVault(addresses.vault).joinPool(
            poolId,
            address(this),
            address(this),
            request
        );

        // Return the actual lpToken balance after the deposit
        uint256 lpTokenBalance = IERC20(addresses.lpToken).balanceOf(
            address(this)
        );

        return (lpTokenBalance, sortedAmounts, tokens);
    }

    /// @dev Deposit the LP token to LendingMarket (as collateral) and borrows USDC
    function depositAndBorrow(uint256 lpAmount) internal returns (uint256) {
        IERC20(addresses.lpToken).safeApprove(addresses.lendingPool, 0);
        IERC20(addresses.lpToken).safeApprove(addresses.lendingPool, lpAmount);

        (uint256 totalCollateralETHBeforeDeposit, , , , , ) = ILendingPool(
            addresses.lendingPool
        ).getUserAccountData(msg.sender);

        ILendingPool(addresses.lendingPool).deposit(
            addresses.lpToken,
            lpAmount,
            msg.sender, // account will receive H tokens while this contract provides LP collateral
            0 // referral code is now inactive, for future use
        );

        (uint256 totalCollateralETHAfterDeposit, , , , , ) = ILendingPool(
            addresses.lendingPool
        ).getUserAccountData(msg.sender);

        uint256 totalCollateralETH = totalCollateralETHAfterDeposit -
            totalCollateralETHBeforeDeposit;

        uint256 maxBorrowInETH = totalCollateralETH
            .mul(collateralizationRatio)
            .div(PRECISION);

        uint256 usdcPriceInETH = IAaveOracle(addresses.lendingOracle)
            .getAssetPrice(addresses.usdc);

        uint256 usdcToBorrow = maxBorrowInETH.mul(USDC_DECIMALS).div(
            usdcPriceInETH
        );

        ILendingPool(addresses.lendingPool).borrow(
            addresses.usdc,
            usdcToBorrow,
            interestRateMode,
            0, // referral code is now inactive, for future use
            msg.sender // account will receive debt tokens while this contract receives USDC
        );

        return usdcToBorrow;
    }

    /// @dev Swap between USDC<->indexUSDC on Uniswap (Thetanuts Stronghold)
    function swap(
        address originTokenAddress,
        address targetTokenAddress,
        address recipientAddress,
        uint256 amount,
        uint256 slippage
    ) internal returns (uint256) {
        IERC20(originTokenAddress).safeApprove(addresses.uniswapRouter, 0);
        IERC20(originTokenAddress).safeApprove(addresses.uniswapRouter, amount);

        (int24 tick, ) = OracleLibrary.consult(addresses.uniswapPool, 1);
        uint256 amountOut = OracleLibrary.getQuoteAtTick(
            tick,
            uint128(amount),
            originTokenAddress,
            targetTokenAddress
        );

        uint256 minAmountOut = amountOut.sub(
            amountOut.mul(slippage).div(PRECISION)
        );

        IV3SwapRouter.ExactInputSingleParams memory params = IV3SwapRouter
            .ExactInputSingleParams({
                tokenIn: originTokenAddress,
                tokenOut: targetTokenAddress,
                fee: uniswapPoolFee,
                recipient: recipientAddress,
                amountIn: amount,
                amountOutMinimum: minAmountOut,
                sqrtPriceLimitX96: 0
            });

        // doc: https://docs.uniswap.org/protocol/guides/swaps/single-swaps#call-the-function
        ISwapRouter02(addresses.uniswapRouter).exactInputSingle(params);

        uint256 targetTokenBalance = IERC20(targetTokenAddress).balanceOf(
            address(this)
        );

        return targetTokenBalance;
    }

    /// @dev Repays USDC loan from LendingMarket and withdraws LP token collateral
    function repayAndWithdraw(uint256 repayAmount) internal returns (uint256) {
        IERC20(addresses.usdc).safeApprove(addresses.lendingPool, 0);
        IERC20(addresses.usdc).safeApprove(addresses.lendingPool, repayAmount);

        (, uint256 totalDebtETHBeforeRepay, , , , ) = ILendingPool(
            addresses.lendingPool
        ).getUserAccountData(msg.sender);

        ILendingPool(addresses.lendingPool).repay(
            addresses.usdc,
            repayAmount,
            interestRateMode,
            msg.sender
        );

        (
            uint256 totalCollateralETH,
            uint256 totalDebtETHAfterRepay,
            ,
            ,
            ,

        ) = ILendingPool(addresses.lendingPool).getUserAccountData(msg.sender);

        uint256 repayPercentage = uint256(1 ether).sub(
            totalDebtETHAfterRepay.mul(ETH_DECIMALS).div(
                totalDebtETHBeforeRepay
            )
        );

        uint256 maxWithdrawInETH = totalCollateralETH.mul(repayPercentage).div(
            ETH_DECIMALS
        );

        uint256 lpPriceInETH = IAaveOracle(addresses.lendingOracle)
            .getAssetPrice(addresses.lpToken);

        uint256 withdrawAmount = (totalDebtETHAfterRepay == 0)
            ? type(uint256).max // withdraw everything if debt is totally paid
            : maxWithdrawInETH.mul(ETH_DECIMALS).div(lpPriceInETH);

        uint256 tansferAmount = (totalDebtETHAfterRepay == 0)
            ? IERC20(addresses.lendingHToken).balanceOf(msg.sender) // transfer msg.sender balance
            : withdrawAmount;

        IERC20(addresses.lendingHToken).safeTransferFrom(
            msg.sender,
            address(this),
            tansferAmount
        );

        uint256 lpTokensReceived = ILendingPool(addresses.lendingPool).withdraw(
                addresses.lpToken,
                withdrawAmount, // amount
                address(this)
            );

        return lpTokensReceived;
    }

    /// @dev Removes the liquidity from AMM
    function removeLiquidity(uint256 lpTokenAmount) internal {
        bytes32 poolId = IFXPool(addresses.lpToken).getPoolId();

        (address[] memory tokens, , ) = IVault(addresses.vault).getPoolTokens(
            poolId
        );

        uint256[] memory estimatedAmounts = IFXPool(addresses.lpToken)
            .viewWithdraw(lpTokenAmount);

        uint256[] memory sortedAmounts;
        sortedAmounts = new uint256[](2);
        if (tokens[0] == addresses.xsgd) {
            sortedAmounts[0] = estimatedAmounts[0];
            sortedAmounts[1] = estimatedAmounts[1];
        } else {
            sortedAmounts[0] = estimatedAmounts[1];
            sortedAmounts[1] = estimatedAmounts[0];
        }

        bytes memory userData = abi.encode(lpTokenAmount, tokens);

        IVault.ExitPoolRequest memory request = IVault.ExitPoolRequest({
            assets: tokens,
            minAmountsOut: sortedAmounts,
            userData: userData,
            toInternalBalance: false
        });

        IVault(addresses.vault).exitPool(
            poolId,
            address(this),
            msg.sender,
            request
        );
    }

    /// @dev Transfer any token balances left from this contract back to the sender
    function transferBalances() internal {
        if (userBalances[msg.sender].indexUsdc > 0) {
            IERC20(addresses.indexUsdc).safeTransfer(
                msg.sender,
                userBalances[msg.sender].indexUsdc
            );
            userBalances[msg.sender].indexUsdc = 0;
        }
        if (userBalances[msg.sender].xsgd > 0) {
            IERC20(addresses.xsgd).safeTransfer(
                msg.sender,
                userBalances[msg.sender].xsgd
            );
            userBalances[msg.sender].xsgd = 0;
        }
        if (userBalances[msg.sender].usdc > 0) {
            IERC20(addresses.usdc).safeTransfer(
                msg.sender,
                userBalances[msg.sender].usdc
            );
            userBalances[msg.sender].usdc = 0;
        }
    }
}
