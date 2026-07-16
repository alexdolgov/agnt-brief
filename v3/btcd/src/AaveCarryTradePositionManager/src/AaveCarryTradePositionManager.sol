// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/**
 * Strategy: Aave V3 USDC → Borrow WBTC → Morpho Blue Supply
 * ===========================================================
 *
 * Atomic building-block contract for the Aave carry trade. Each function
 * is a single protocol interaction. Complex flows (deposit, withdraw,
 * rebalance) are composed via multiCall from the owner (Multicall).
 *
 * Example compositions via multiCall:
 *
 *   Deposit:    supplyUSDCToAave → borrowWBTCFromAave → supplyWBTCToMorpho
 *   Withdraw:   withdrawWBTCFromMorpho → repayWBTCToAave → withdrawUSDCFromAave
 *   Increase:   borrowWBTCFromAave → supplyWBTCToMorpho
 *   Decrease:   withdrawWBTCFromMorpho → repayWBTCToAave
 *   Full exit:  morphoFlashLoan(WBTC, debt, [repayWBTCToAave, withdrawUSDCFromAave, <swap>, repayFlashLoan])
 *
 * ## Strategy Type
 * TYP: "AAVECARRY:SBTCDWBTC:USDC:0"
 *
 * ## Contract Invariants
 * - INV-C1: Only owner (Multicall) can call state-changing functions
 * - INV-C2: Approval hygiene — max approval to Morpho (immutable),
 *   exact-amount approve/revoke to Aave Pool (upgradeable proxy)
 * - INV-C3: Flash loan callback only callable by Morpho Blue
 * - INV-C4: LTV enforcement is handled by the backend driver
 *
 * ## Security Considerations
 * - Aave Pool is an upgradeable proxy: exact-amount approve/revoke per call
 * - Morpho Blue is immutable: max approval in constructor is safe
 * - Flash loan callback validates msg.sender == MORPHO
 * - Flash loan data is ABI-decoded as MultiCallArgs[] and executed
 */

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {StrategyBase} from "strategy-base/StrategyBase.sol";
import {IPool, ReserveData} from "./interfaces/IPool.sol";
import {IAaveOracle} from "./interfaces/IAaveOracle.sol";
import {IMorphoBlue, MarketParams} from "./interfaces/IMorphoBlue.sol";
import {IAdaptiveCurveIrm, Market as IrmMarket} from "./interfaces/IAdaptiveCurveIrm.sol";
import {IPriceOracle} from "./interfaces/IOracle.sol";
import {ISwapRouter} from "./interfaces/ISwapRouter.sol";

/// @title AaveCarryTradePositionManager
/// @notice Atomic building blocks for the Aave carry trade, composed via multiCall.
contract AaveCarryTradePositionManager is StrategyBase {
    using SafeERC20 for IERC20;

    // ═══════════════════════════════════════ Structs ═══════════════════════════════════════

    struct DecimalValue {
        uint256 value;
        uint8 decimals;
    }

    /// @notice Live APY inputs for the carry-trade ROR formula. Each rate is
    ///         wrapped in a DecimalValue so the scale is explicit (RAY =
    ///         decimals 27, per Aave's convention). Off-chain consumers compute:
    ///             ror = collateralRate - ltv/BPS * (debtRate - morphoSupplyRate)
    ///         after dividing each `value` by 10^decimals.
    struct RateInfo {
        DecimalValue collateralRate;    // Aave USDC supply rate, per annum
        DecimalValue debtRate;          // Aave WBTC variable borrow rate, per annum
        DecimalValue morphoSupplyRate;  // Morpho WBTC supply rate, per annum
    }

    struct BalanceInfo {
        DecimalValue idleUsdc;
        DecimalValue idleWbtc;
        DecimalValue aaveUsdcPriceUsd;
        DecimalValue aaveWbtcPriceUsd;
        DecimalValue morphoWbtcPriceUsd;
        DecimalValue morphoOraclePrice;
        DecimalValue sbtcdPriceUsd;
        DecimalValue aaveUsdcCollateral;
        DecimalValue aaveUsdcCollateralUsd;
        DecimalValue aaveWbtcDebt;
        DecimalValue aaveWbtcDebtUsd;
        DecimalValue aaveHealthFactor;
        uint256 aaveLtvBps;
        DecimalValue morphoWbtcSupplied;
        DecimalValue morphoSupplyShares;
        DecimalValue morphoWbtcSuppliedUsd;
        uint256 morphoUtilizationBps;
        DecimalValue morphoAvailableWithdraw;
        DecimalValue morphoAvailableWithdrawUsd;
    }

    // ═══════════════════════════════════════ State Variables ═══════════════════════════════════════

    uint256 internal constant VARIABLE_RATE = 2;
    uint256 internal constant WBTC_UNIT = 1e8;
    uint256 internal constant USDC_TO_BASE = 1e2;
    uint256 internal constant BPS = 10_000;
    uint256 internal constant VIRTUAL_SHARES = 1e6;
    uint256 internal constant VIRTUAL_ASSETS = 1;

    IPool public immutable AAVE_POOL;
    IAaveOracle public immutable AAVE_ORACLE;
    IMorphoBlue public immutable MORPHO;
    bytes32 public immutable MARKET_ID;
    IERC20 public immutable USDC;
    IERC20 public immutable WBTC;
    IERC20 public immutable A_USDC;
    IERC20 public immutable VARIABLE_DEBT_WBTC;
    MarketParams internal _marketParams;
    // forge-lint: disable-next-line(mixed-case-variable)
    string public TYP;

    // ═══════════════════════════════════════ Events ═══════════════════════════════════════

    event AaveSupplied(uint256 usdcAmount);
    event AaveWithdrawn(uint256 usdcAmount);
    event AaveBorrowed(uint256 wbtcAmount);
    event AaveRepaid(uint256 wbtcAmount);
    event MorphoSupplied(uint256 wbtcAmount, uint256 sharesReceived);
    event MorphoWithdrawn(uint256 wbtcAmount, uint256 sharesBurned);
    event FlashLoanExecuted(address token, uint256 amount);

    // ═══════════════════════════════════════ Errors ═══════════════════════════════════════

    error InvalidMarket();
    error UnauthorizedFlashLoanCaller();

    // ═══════════════════════════════════════ Constructor ═══════════════════════════════════════

    constructor(
        address owner_,
        address aavePool_,
        address aaveOracle_,
        address morpho_,
        bytes32 marketId_,
        address usdc_,
        address wbtc_,
        address aUsdc_,
        address variableDebtWbtc_,
        string memory typ_
    ) Ownable(owner_) {
        require(owner_ != address(0), ZeroAddress());
        require(aavePool_ != address(0), ZeroAddress());
        require(aaveOracle_ != address(0), ZeroAddress());
        require(morpho_ != address(0), ZeroAddress());
        require(usdc_ != address(0), ZeroAddress());
        require(wbtc_ != address(0), ZeroAddress());
        require(aUsdc_ != address(0), ZeroAddress());
        require(variableDebtWbtc_ != address(0), ZeroAddress());

        AAVE_POOL = IPool(aavePool_);
        AAVE_ORACLE = IAaveOracle(aaveOracle_);
        MORPHO = IMorphoBlue(morpho_);
        MARKET_ID = marketId_;
        USDC = IERC20(usdc_);
        WBTC = IERC20(wbtc_);
        A_USDC = IERC20(aUsdc_);
        VARIABLE_DEBT_WBTC = IERC20(variableDebtWbtc_);
        TYP = typ_;

        (address loanToken, address collateralToken, address oracle, address irm, uint256 lltv) = IMorphoBlue(morpho_)
            .idToMarketParams(marketId_);
        require(loanToken == wbtc_, InvalidMarket());

        _marketParams = MarketParams({
            loanToken: loanToken,
            collateralToken: collateralToken,
            oracle: oracle,
            irm: irm,
            lltv: lltv
        });

        // Max-approve WBTC to Morpho Blue (immutable, safe).
        IERC20(wbtc_).forceApprove(morpho_, type(uint256).max);
    }

    // ═══════════════════════════════════════ Aave Actions ═══════════════════════════════════════

    /// @notice Supply USDC to Aave V3 as collateral.
    /// @param amount USDC amount (saturated at balance, type(uint256).max for all)
    function supplyUSDCToAave(uint256 amount) external onlyOwner {
        uint256 balance = USDC.balanceOf(address(this));
        if (amount > balance) amount = balance;
        require(amount > 0, ZeroAmount());

        USDC.forceApprove(address(AAVE_POOL), amount);
        AAVE_POOL.supply(address(USDC), amount, address(this), 0);
        USDC.forceApprove(address(AAVE_POOL), 0);

        emit AaveSupplied(amount);
    }

    /// @notice Withdraw USDC from Aave V3.
    /// @param amount USDC amount (type(uint256).max for all — only safe when debt is zero)
    function withdrawUSDCFromAave(uint256 amount) external onlyOwner {
        require(amount > 0, ZeroAmount());
        AAVE_POOL.withdraw(address(USDC), amount, address(this));
        emit AaveWithdrawn(amount);
    }

    /// @notice Borrow WBTC from Aave V3 against USDC collateral.
    /// @param amount WBTC amount to borrow
    function borrowWBTCFromAave(uint256 amount) external onlyOwner {
        require(amount > 0, ZeroAmount());
        AAVE_POOL.borrow(address(WBTC), amount, VARIABLE_RATE, 0, address(this));
        emit AaveBorrowed(amount);
    }

    /// @notice Repay WBTC debt on Aave V3.
    /// @param amount WBTC amount (saturated at balance and debt)
    function repayWBTCToAave(uint256 amount) external onlyOwner {
        uint256 balance = WBTC.balanceOf(address(this));
        uint256 debt = VARIABLE_DEBT_WBTC.balanceOf(address(this));
        if (amount > balance) amount = balance;
        if (amount > debt) amount = debt;
        require(amount > 0, ZeroAmount());

        WBTC.forceApprove(address(AAVE_POOL), amount);
        AAVE_POOL.repay(address(WBTC), amount, VARIABLE_RATE, address(this));
        WBTC.forceApprove(address(AAVE_POOL), 0);

        emit AaveRepaid(amount);
    }

    // ═══════════════════════════════════════ Morpho Actions ═══════════════════════════════════════

    /// @notice Supply WBTC to Morpho Blue market.
    /// @param amount WBTC amount (saturated at balance, type(uint256).max for all)
    function supplyWBTCToMorpho(uint256 amount) external onlyOwner {
        uint256 balance = WBTC.balanceOf(address(this));
        if (amount > balance) amount = balance;
        require(amount > 0, ZeroAmount());

        (, uint256 shares) = MORPHO.supply(_marketParams, amount, 0, address(this), bytes(""));
        emit MorphoSupplied(amount, shares);
    }

    /// @notice Withdraw WBTC from Morpho Blue market.
    /// @param amount WBTC amount (type(uint256).max withdraws all shares)
    function withdrawWBTCFromMorpho(uint256 amount) external onlyOwner {
        require(amount > 0, ZeroAmount());

        MORPHO.accrueInterest(_marketParams);

        (uint256 currentShares, , ) = MORPHO.position(MARKET_ID, address(this));
        require(currentShares > 0, ZeroAmount());

        uint256 invested = _sharesToAssets(currentShares);
        uint256 assetsOut;
        uint256 sharesOut;

        if (amount >= invested) {
            // Full exit — use shares to avoid dust
            (assetsOut, sharesOut) = MORPHO.withdraw(_marketParams, 0, currentShares, address(this), address(this));
        } else {
            (assetsOut, sharesOut) = MORPHO.withdraw(_marketParams, amount, 0, address(this), address(this));
        }

        emit MorphoWithdrawn(assetsOut, sharesOut);
    }

    // ═══════════════════════════════════════ Flash Loan ═══════════════════════════════════════

    /// @notice Take a flash loan from Morpho Blue.
    /// @dev The `data` parameter is ABI-encoded MultiCallArgs[] that will be
    ///      executed inside the callback. The multicall must ensure the borrowed
    ///      tokens are available for repayment when the callback returns.
    /// @param token The token to flash borrow
    /// @param amount The amount to flash borrow
    /// @param data ABI-encoded MultiCallArgs[] to execute in the callback
    function morphoFlashLoan(address token, uint256 amount, bytes calldata data) external onlyOwner {
        require(amount > 0, ZeroAmount());
        MORPHO.flashLoan(token, amount, data);
        emit FlashLoanExecuted(token, amount);
    }

    /// @notice Morpho Blue flash loan callback.
    /// @dev Only callable by the Morpho Blue singleton. Decodes `data` as
    ///      MultiCallArgs[] and executes them via the inherited _multiCall.
    ///      The multicall actions must leave enough tokens for Morpho to
    ///      pull back the flash loaned amount.
    function onMorphoFlashLoan(uint256, bytes calldata data) external {
        require(msg.sender == address(MORPHO), UnauthorizedFlashLoanCaller());

        MultiCallArgs[] memory calls = abi.decode(data, (MultiCallArgs[]));
        _multiCall(calls);
    }

    // ═══════════════════════════════════════ Swap ═══════════════════════════════════════

    /// @notice Swap tokens via Uniswap V3 exact input single.
    /// @param router Uniswap V3 SwapRouter address
    /// @param tokenIn Input token address
    /// @param tokenOut Output token address
    /// @param fee Pool fee tier (e.g. 500, 3000, 10000)
    /// @param amountIn Amount of tokenIn to swap (saturated at balance)
    /// @param amountOutMinimum Minimum output (slippage protection)
    /// @return amountOut Actual output received
    function swapExactInput(
        address router,
        address tokenIn,
        address tokenOut,
        uint24 fee,
        uint256 amountIn,
        uint256 amountOutMinimum
    ) external onlyOwner returns (uint256 amountOut) {
        uint256 balance = IERC20(tokenIn).balanceOf(address(this));
        if (amountIn > balance) amountIn = balance;
        require(amountIn > 0, ZeroAmount());

        IERC20(tokenIn).forceApprove(router, amountIn);
        amountOut = ISwapRouter(router).exactInputSingle(
            ISwapRouter.ExactInputSingleParams({
                tokenIn: tokenIn,
                tokenOut: tokenOut,
                fee: fee,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: amountIn,
                amountOutMinimum: amountOutMinimum,
                sqrtPriceLimitX96: 0
            })
        );
        IERC20(tokenIn).forceApprove(router, 0);
    }

    // ═══════════════════════════════════════ Token Transfers ═══════════════════════════════════════

    /// @notice Transfer ERC20 tokens to a destination, saturating at balance.
    /// @dev Unlike the inherited transferERC20Tokens which reverts on insufficient balance,
    ///      this function caps at the actual balance to avoid dust-related reverts.
    function transferERC20TokensSafe(address token, address to, uint256 amount) external onlyOwner {
        uint256 balance = IERC20(token).balanceOf(address(this));
        if (amount > balance) amount = balance;
        if (amount == 0) return;
        IERC20(token).safeTransfer(to, amount);
        emit TokensWithdrawn(token, to, amount);
    }

    // ═══════════════════════════════════════ Emergency ═══════════════════════════════════════

    /// @notice Revoke the standing WBTC approval to Morpho Blue.
    function revokeApprovals() external onlyOwner {
        WBTC.forceApprove(address(MORPHO), 0);
    }

    // ═══════════════════════════════════════ View Functions ═══════════════════════════════════════

    function getBalanceInfo() external view returns (BalanceInfo memory info) {
        uint256 wbtcPrice = AAVE_ORACLE.getAssetPrice(address(WBTC));
        uint256 usdcPrice = AAVE_ORACLE.getAssetPrice(address(USDC));

        info.idleUsdc = DecimalValue(USDC.balanceOf(address(this)), 6);
        info.idleWbtc = DecimalValue(WBTC.balanceOf(address(this)), 8);
        info.aaveUsdcPriceUsd = DecimalValue(usdcPrice, 8);
        info.aaveWbtcPriceUsd = DecimalValue(wbtcPrice, 8);
        uint256 morphoPrice = IPriceOracle(_marketParams.oracle).price();
        info.morphoOraclePrice = DecimalValue(morphoPrice, 26);

        (, int256 sbtcdPrice, , , ) = IPriceOracle(_marketParams.oracle).latestRoundData();
        uint256 sbtcdUsd = sbtcdPrice >= 0 ? uint256(sbtcdPrice) : 0;
        info.sbtcdPriceUsd = DecimalValue(sbtcdUsd, 8);

        // WBTC price derived from Morpho oracle: sBTCD_USD / (WBTC_per_sBTCD)
        // morphoPrice is WBTC per sBTCD at 10^26 scale, sbtcdUsd is sBTCD/USD at 8 dec
        uint256 wbtcPriceMorpho = morphoPrice > 0 ? (sbtcdUsd * 1e26) / morphoPrice : 0;
        info.morphoWbtcPriceUsd = DecimalValue(wbtcPriceMorpho, 8);

        info.aaveUsdcCollateral = DecimalValue(A_USDC.balanceOf(address(this)), 6);
        info.aaveWbtcDebt = DecimalValue(VARIABLE_DEBT_WBTC.balanceOf(address(this)), 8);

        (uint256 totalCollateralBase, uint256 totalDebtBase, , , , uint256 healthFactor) = AAVE_POOL.getUserAccountData(
            address(this)
        );

        info.aaveUsdcCollateralUsd = DecimalValue(totalCollateralBase, 8);
        info.aaveWbtcDebtUsd = DecimalValue(totalDebtBase, 8);
        info.aaveHealthFactor = DecimalValue(totalDebtBase > 0 ? healthFactor : 0, 18);
        info.aaveLtvBps = totalCollateralBase > 0 ? (totalDebtBase * BPS) / totalCollateralBase : 0;

        (uint256 supplyShares, , ) = MORPHO.position(MARKET_ID, address(this));
        uint256 suppliedAssets = _sharesToAssets(supplyShares);

        info.morphoWbtcSupplied = DecimalValue(suppliedAssets, 8);
        info.morphoSupplyShares = DecimalValue(supplyShares, 14);
        info.morphoWbtcSuppliedUsd = DecimalValue((suppliedAssets * wbtcPriceMorpho) / WBTC_UNIT, 8);

        (uint128 totalSupplyAssets, , uint128 totalBorrowAssets, , , ) = MORPHO.market(MARKET_ID);
        info.morphoUtilizationBps =
            totalSupplyAssets > 0 ? (uint256(totalBorrowAssets) * BPS) / uint256(totalSupplyAssets) : 0;

        uint256 available = totalSupplyAssets > totalBorrowAssets ? uint256(totalSupplyAssets - totalBorrowAssets) : 0;
        info.morphoAvailableWithdraw = DecimalValue(available, 8);
        info.morphoAvailableWithdrawUsd = DecimalValue((available * wbtcPriceMorpho) / WBTC_UNIT, 8);
    }

    function marketParams() external view returns (MarketParams memory) {
        return _marketParams;
    }

    /// @notice Returns the three APY inputs the off-chain ROR calculator needs.
    ///
    /// Aave rates come straight from `getReserveData` — already RAY per annum.
    /// The Morpho supply rate matches what Morpho's UI labels "Instantaneous
    /// Supply Rate": it uses `IRM.borrowRateView(marketParams, market)` —
    /// evaluating the adaptive curve at the market's *current* utilization —
    /// and folds that through the standard Morpho formula:
    ///     supplyRateRay = borrowRate(instant) * utilization * (1 - fee) * SECONDS_PER_YEAR * 1e9
    /// where the * 1e9 factor converts WAD (1e18) → RAY (1e27).
    function getRateInfo() external view returns (RateInfo memory info) {
        ReserveData memory usdcReserve = AAVE_POOL.getReserveData(address(USDC));
        ReserveData memory wbtcReserve = AAVE_POOL.getReserveData(address(WBTC));
        info.collateralRate = DecimalValue(uint256(usdcReserve.currentLiquidityRate), 27);
        info.debtRate = DecimalValue(uint256(wbtcReserve.currentVariableBorrowRate), 27);
        info.morphoSupplyRate = DecimalValue(0, 27);

        (
            uint128 totalSupplyAssets,
            uint128 totalSupplyShares,
            uint128 totalBorrowAssets,
            uint128 totalBorrowShares,
            uint128 lastUpdate,
            uint128 feeWad
        ) = MORPHO.market(MARKET_ID);
        if (totalSupplyAssets == 0) {
            return info;
        }

        IrmMarket memory m = IrmMarket({
            totalSupplyAssets: totalSupplyAssets,
            totalSupplyShares: totalSupplyShares,
            totalBorrowAssets: totalBorrowAssets,
            totalBorrowShares: totalBorrowShares,
            lastUpdate: lastUpdate,
            fee: feeWad
        });
        uint256 borrowPerSecWad = IAdaptiveCurveIrm(_marketParams.irm).borrowRateView(_marketParams, m);

        uint256 utilWad = (uint256(totalBorrowAssets) * 1e18) / uint256(totalSupplyAssets);
        uint256 feeShareWad = uint256(feeWad) >= 1e18 ? 0 : 1e18 - uint256(feeWad);
        uint256 supplyPerSecWad = (borrowPerSecWad * utilWad / 1e18) * feeShareWad / 1e18;
        info.morphoSupplyRate = DecimalValue(supplyPerSecWad * 365 days * 1e9, 27);
    }

    // ═══════════════════════════════════════ Internal ═══════════════════════════════════════

    function _sharesToAssets(uint256 shares) internal view returns (uint256) {
        (uint128 totalSupplyAssets, uint128 totalSupplyShares, , , , ) = MORPHO.market(MARKET_ID);
        return (shares * (uint256(totalSupplyAssets) + VIRTUAL_ASSETS)) / (uint256(totalSupplyShares) + VIRTUAL_SHARES);
    }
}
