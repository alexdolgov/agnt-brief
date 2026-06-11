// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.29 <0.9.0;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IExternalAssetsProvider } from "@superearn/v2/interfaces/IExternalAssetsProvider.sol";
import { IPendleOracle } from "@superearn/interface/IPendle.sol";
import { IMorphoBlue } from "@superearn/interface/IMorphoBlue.sol";

/**
 * @title PendleUSDGAssetsProviderV2
 * @notice Assets provider for CustomStrategy holding PT-USDG positions
 *         + Morpho Blue PT-USDG/USDC collateral/borrow leverage loop.
 *
 * @dev Calculates total assets as a USDC-denominated NET sum of:
 *      ASSETS:
 *      - Idle USDC balance (includes any borrowed USDC, even if forwarded to
 *        another strategy via the parent stack — the borrowed USDC sits in
 *        STRATEGY until it is moved out)
 *      - Idle USDG balance               (1:1 to USDC; both USD-pegged 6 decimals)
 *      - SY-USDG balance                 (1:1 to USDG → 1:1 to USDC)
 *      - PT-USDG balance                 × PendleOracle TWAP rate → USDG → USDC
 *      - Morpho collateral (PT-USDG)     × PendleOracle TWAP rate → USDG → USDC
 *      LIABILITIES (subtracted):
 *      - Morpho borrow debt (USDC, rounded up using Morpho Blue's
 *        share-to-asset formula)
 *
 *      Asset Chain:
 *        USDC ── Curve(USDG/USDC) ──> USDG ── Pendle ──> PT-USDG
 *                                              └─> Morpho.supplyCollateral
 *                                                   └─> Morpho.borrow USDC ──> [used by other strategy / loop]
 *
 *      Simplification: USDG ≈ USDC (both USD-pegged stablecoins, 6 decimals).
 *      For production with stricter pricing, integrate Curve get_dy or a
 *      Chainlink oracle for USDG/USDC.
 *
 *      Morpho borrow debt uses conservative (rounded up) calculation:
 *        borrowAssets = ceil(borrowShares * (totalBorrowAssets + 1) / (totalBorrowShares + 1e6))
 *
 *      Leverage rationale: USDC borrowed against PT-USDG collateral can be
 *      withdrawn from the strategy and redeployed into another strategy,
 *      effectively producing leverage on the PT-USDG yield while paying the
 *      Morpho borrow rate. The borrowed USDC that has been moved out of the
 *      strategy is NOT tracked here — it must be accounted for at the parent
 *      vault layer. The Morpho borrow debt remains tracked because the debt
 *      stays attached to STRATEGY's Morpho position regardless of where the
 *      borrowed USDC currently lives.
 *
 * ============================================================================
 * CustomStrategy Configuration Reference — PT-USDG via Pendle + Morpho Blue
 * ============================================================================
 *
 * Contract Addresses (Ethereum Mainnet):
 *   PENDLE_ROUTER       = 0x888888888889758F76e7103c6CbF23ABbF58F946
 *   PENDLE_ORACLE       = 0x5542be50420E88dd7D5B4a3D488FA6ED82F6DAc2
 *   MARKET (PT-USDG-28MAY2026) = 0xC5b32dba5f29F8395fb9591E1a15f23A75214F33
 *   SY_USDG             = 0xc1799CaB1F201946f7CFaFBaF1BCC089b2F08927
 *   PT_USDG             = 0x9db38D74a0D29380899aD354121DfB521aDb0548
 *   YT_USDG             = 0x4a1294749A70bc32A998B49dd11Bf26E9379e3C1
 *   USDG                = 0xe343167631d89B6Ffc58B88d6b7fB0228795491D  (6 decimals)
 *   USDC                = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48  (6 decimals)
 *   CURVE_USDG_USDC     = 0xc061caa073f3d95F80f8e5428d32D2d76F5e1622  (coins[0]=USDG, coins[1]=USDC)
 *   MORPHO_BLUE         = 0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb
 *   MORPHO_PT_USDG_MARKET_ID = <set per deployment — PT-USDG (collateral) / USDC (loan)>
 *
 * ----------------------------------------------------------------------------
 * 1. AllowedTargets (9)
 * ----------------------------------------------------------------------------
 *   setAllowedTarget(PENDLE_ROUTER, true)
 *   setAllowedTarget(SY_USDG, true)
 *   setAllowedTarget(PT_USDG, true)
 *   setAllowedTarget(YT_USDG, true)
 *   setAllowedTarget(MARKET, true)          // for oracle cardinality setup
 *   setAllowedTarget(USDG, true)
 *   setAllowedTarget(USDC, true)
 *   setAllowedTarget(CURVE_USDG_USDC, true)
 *   setAllowedTarget(MORPHO_BLUE, true)     // collateral + borrow
 *
 * ----------------------------------------------------------------------------
 * 2. AllowedSelectors
 * ----------------------------------------------------------------------------
 *
 *   PendleRouter (0x888...946):
 *     0xc81f847a  swapExactTokenForPt(...)
 *     0x594a88cc  swapExactPtForToken(...)
 *     0x47f1de22  redeemPyToToken(...)
 *     0x339748cb  redeemPyToSy(...)
 *     0x339a5572  redeemSyToToken(...)
 *     0x2e071dc6  mintSyFromToken(...)
 *
 *   SY_USDG (0xc17...927):
 *     0x095ea7b3  approve(address,uint256)
 *     0xa9059cbb  transfer(address,uint256)
 *     0x20e8c565  deposit(address,address,uint256,uint256)
 *     0x769f8e5d  redeem(address,uint256,address,uint256,bool)
 *
 *   PT_USDG (0x9db...548):
 *     0x095ea7b3  approve(address,uint256)        // approve to Router AND to Morpho
 *     0xa9059cbb  transfer(address,uint256)       // ONLY to YT_USDG
 *
 *   YT_USDG (0x4a1...3C1):
 *     0xbcb7ea5d  redeemPY(address)
 *
 *   USDG (0xe34...91D):
 *     0x095ea7b3  approve(address,uint256)
 *
 *   USDC (0xA0b...B48):
 *     0x095ea7b3  approve(address,uint256)        // approve to Curve AND to Morpho (for repay)
 *
 *   CURVE_USDG_USDC (0xc06...622):
 *     0x3df02124  exchange(int128,int128,uint256,uint256)
 *
 *   MORPHO_BLUE (0xBBB...FFCb):
 *     0x238d6579  supplyCollateral((address,address,address,address,uint256),uint256,address,bytes)
 *     0x8720316d  withdrawCollateral((address,address,address,address,uint256),uint256,address,address)
 *     0x50d8cd4b  borrow((address,address,address,address,uint256),uint256,uint256,address,address)
 *     0x20b76e81  repay((address,address,address,address,uint256),uint256,uint256,address,bytes)
 *
 * ----------------------------------------------------------------------------
 * 3. ParamChecks — receiver/destination restrictions
 * ----------------------------------------------------------------------------
 *
 *   PendleRouter — receiver = param[0] for all 6 functions:
 *     setParamCheck(PENDLE_ROUTER, <selector>, 0, true)
 *     setAllowedDestination(PENDLE_ROUTER, <selector>, 0, strategy, true)
 *
 *   SY.deposit / SY.redeem — receiver = param[0]:
 *     setParamCheck/AllowedDestination → strategy
 *
 *   YT.redeemPY — receiver = param[0]:
 *     setParamCheck/AllowedDestination → strategy
 *
 *   PT.transfer — recipient = param[0], ONLY allow YT_USDG (post-maturity redeem)
 *
 *   MORPHO_BLUE — onBehalf and receiver locked to strategy:
 *     supplyCollateral(marketParams, assets, onBehalf=param[6], data)
 *       setParamCheck(MORPHO_BLUE, 0x238d6579, 6, true)
 *       setAllowedDestination(MORPHO_BLUE, 0x238d6579, 6, strategy, true)
 *
 *     withdrawCollateral(marketParams, assets, onBehalf=param[6], receiver=param[7])
 *       setParamCheck(MORPHO_BLUE, 0x8720316d, 6, true) // onBehalf
 *       setAllowedDestination(MORPHO_BLUE, 0x8720316d, 6, strategy, true)
 *       setParamCheck(MORPHO_BLUE, 0x8720316d, 7, true) // receiver
 *       setAllowedDestination(MORPHO_BLUE, 0x8720316d, 7, strategy, true)
 *
 *     borrow(marketParams, assets, shares, onBehalf=param[7], receiver=param[8])
 *       setParamCheck(MORPHO_BLUE, 0x50d8cd4b, 7, true)
 *       setAllowedDestination(MORPHO_BLUE, 0x50d8cd4b, 7, strategy, true)
 *       setParamCheck(MORPHO_BLUE, 0x50d8cd4b, 8, true)
 *       setAllowedDestination(MORPHO_BLUE, 0x50d8cd4b, 8, strategy, true)
 *
 *     repay(marketParams, assets, shares, onBehalf=param[7], data)
 *       setParamCheck(MORPHO_BLUE, 0x20b76e81, 7, true)
 *       setAllowedDestination(MORPHO_BLUE, 0x20b76e81, 7, strategy, true)
 *
 * ----------------------------------------------------------------------------
 * 4. Other Settings
 * ----------------------------------------------------------------------------
 *   setAssetsChangeTolerance(500)  // 5% — covers Curve slippage + Pendle AMM spread
 *   setDepositToken(USDC, true)
 *   setWithdrawToken(USDC, true)
 *   setExternalAssetsProvider(address(this))  // this PendleUSDGAssetsProviderV2
 *
 * ----------------------------------------------------------------------------
 * 5. Operation Flows
 * ----------------------------------------------------------------------------
 *
 *   Deposit (USDC → PT-USDG):
 *     1. USDC.approve(CURVE_POOL, amount)
 *     2. CURVE_POOL.exchange(1, 0, amount, minUsdg)        // USDC → USDG
 *     3. USDG.approve(PENDLE_ROUTER, usdgAmount)
 *     4. PENDLE_ROUTER.swapExactTokenForPt(strategy, MARKET, ...)
 *
 *   Morpho Leverage (after acquiring PT-USDG):
 *     1. PT_USDG.approve(MORPHO_BLUE, ptAmount)
 *     2. MORPHO_BLUE.supplyCollateral(marketParams, ptAmount, strategy, "")
 *     3. MORPHO_BLUE.borrow(marketParams, usdcAmount, 0, strategy, strategy) // USDC borrowed
 *     4. Borrowed USDC stays in strategy until parent vault moves it to another strategy
 *
 *   Unwind Morpho Position:
 *     1. USDC.approve(MORPHO_BLUE, repayAmount)
 *     2. MORPHO_BLUE.repay(marketParams, repayAmount, 0, strategy, "")
 *     3. MORPHO_BLUE.withdrawCollateral(marketParams, ptAmount, strategy, strategy)
 *
 *   Redeem Pre-Maturity (PT → USDC):
 *     1. PT.approve(PENDLE_ROUTER, ptAmount)
 *     2. PENDLE_ROUTER.swapExactPtForToken(strategy, MARKET, ptAmount, output, limit)
 *     3. USDG.approve(CURVE_POOL, usdgAmount)
 *     4. CURVE_POOL.exchange(0, 1, usdgAmount, minUsdc)
 *
 *   Redeem Post-Maturity (PT → USDC):
 *     1. PT.transfer(YT_USDG, ptAmount)
 *     2. YT.redeemPY(strategy)                              // PT+YT → SY
 *     3. SY.redeem(strategy, syAmount, USDG, minOut, false) // SY → USDG
 *     4. USDG.approve(CURVE_POOL, usdgAmount)
 *     5. CURVE_POOL.exchange(0, 1, usdgAmount, minUsdc)
 *
 * ============================================================================
 */
contract PendleUSDGAssetsProviderV2 is IExternalAssetsProvider {
    // ============================================
    // CONSTANTS
    // ============================================

    /// @dev Morpho Blue virtual shares/assets for share math
    uint256 internal constant VIRTUAL_SHARES = 1e6;
    uint256 internal constant VIRTUAL_ASSETS = 1;

    // ============================================
    // IMMUTABLE STORAGE
    // ============================================

    address public immutable STRATEGY;
    address public immutable USDC;
    address public immutable USDG;
    address public immutable SY;
    address public immutable PT;
    address public immutable MARKET;
    address public immutable ORACLE;
    address public immutable MORPHO;
    bytes32 public immutable MORPHO_MARKET_ID;
    uint32 public immutable TWAP_DURATION;

    // ============================================
    // ERRORS
    // ============================================

    error ZeroAddress();
    error InvalidMorphoMarket();

    // ============================================
    // CONSTRUCTOR
    // ============================================

    /**
     * @notice Constructor
     * @param _strategy The strategy address whose balances/positions to track
     * @param _usdc USDC token address (denomination token)
     * @param _usdg USDG token address
     * @param _sy SY-USDG token address
     * @param _pt PT-USDG token address
     * @param _market Pendle Market address (for oracle TWAP query)
     * @param _oracle Pendle Oracle address (PendlePYLpOracle)
     * @param _morpho Morpho Blue singleton address
     * @param _morphoMarketId Morpho Blue market id (PT-USDG collateral / USDC loan)
     * @param _twapDuration Pendle oracle TWAP duration (seconds)
     */
    constructor(
        address _strategy,
        address _usdc,
        address _usdg,
        address _sy,
        address _pt,
        address _market,
        address _oracle,
        address _morpho,
        bytes32 _morphoMarketId,
        uint32 _twapDuration
    ) {
        if (_strategy == address(0)) revert ZeroAddress();
        if (_usdc == address(0)) revert ZeroAddress();
        if (_morpho == address(0)) revert ZeroAddress();

        // Validate Morpho market exists (loanToken should be USDC; collateral should be PT-USDG)
        (address loanToken,,,,) = IMorphoBlue(_morpho).idToMarketParams(_morphoMarketId);
        if (loanToken == address(0)) revert InvalidMorphoMarket();

        STRATEGY = _strategy;
        USDC = _usdc;
        USDG = _usdg;
        SY = _sy;
        PT = _pt;
        MARKET = _market;
        ORACLE = _oracle;
        MORPHO = _morpho;
        MORPHO_MARKET_ID = _morphoMarketId;
        TWAP_DURATION = _twapDuration;
    }

    // ============================================
    // IExternalAssetsProvider
    // ============================================

    function denominationToken() external view override returns (address) {
        return USDC;
    }

    /**
     * @notice Returns NET total assets denominated in USDC
     * @dev Aggregates all USDG-equivalent positions (idle USDG, SY, PT, Morpho PT collateral)
     *      plus idle USDC, then subtracts Morpho borrow debt.
     *
     *      USDG ≈ USDC (both 6 decimals, USD-pegged) — same simplification as V1.
     *
     *      grossAssets = idle USDC
     *                  + idle USDG
     *                  + SY balance
     *                  + (PT balance + Morpho PT collateral) × Pendle TWAP rate / 1e18
     *      netAssets   = grossAssets - Morpho borrow debt (USDC, rounded up)
     *
     *      If Morpho debt exceeds gross assets (underwater), returns 0.
     */
    function getTotalAssets() external view override returns (uint256) {
        // 1. Idle USDC (includes any borrowed USDC still sitting in the strategy)
        uint256 usdcBal = IERC20(USDC).balanceOf(STRATEGY);

        // 2. Idle USDG (≈ USDC, both 6 decimals)
        uint256 usdgBal = IERC20(USDG).balanceOf(STRATEGY);

        // 3. SY balance — SY wraps USDG ~1:1
        uint256 syBal = IERC20(SY).balanceOf(STRATEGY);

        // 4. Read Morpho position (collateral = PT-USDG, borrowShares = USDC debt)
        (, uint128 borrowShares, uint128 collateral) = IMorphoBlue(MORPHO).position(MORPHO_MARKET_ID, STRATEGY);

        // 5. PT-denominated total = idle PT + Morpho PT collateral
        uint256 totalPt = IERC20(PT).balanceOf(STRATEGY) + uint256(collateral);

        // 6. PT → USDG (≈ USDC) via Pendle Oracle TWAP (rate in 1e18, 1e18 = 1 PT = 1 underlying)
        uint256 ptValue = 0;
        if (totalPt > 0 && ORACLE != address(0)) {
            uint256 ptRate = IPendleOracle(ORACLE).getPtToAssetRate(MARKET, TWAP_DURATION);
            ptValue = (totalPt * ptRate) / 1e18;
        }

        // 7. Gross assets in USDC units (USDG ≈ USDC, SY ≈ USDG ≈ USDC)
        uint256 grossAssets = usdcBal + usdgBal + syBal + ptValue;

        // 8. Subtract Morpho borrow debt (USDC, rounded up)
        uint256 borrowDebt = _borrowSharesToAssets(uint256(borrowShares));
        if (borrowDebt >= grossAssets) return 0; // underwater safety
        return grossAssets - borrowDebt;
    }

    // ============================================
    // CONVENIENCE VIEW FUNCTIONS
    // ============================================

    /// @notice Get the current Pendle Oracle PT-to-asset rate (1e18 scale, USDG-denominated)
    function getPtToAssetRate() external view returns (uint256) {
        return IPendleOracle(ORACLE).getPtToAssetRate(MARKET, TWAP_DURATION);
    }

    /**
     * @notice Get Morpho position summary
     * @return collateralPt PT-USDG amount supplied as Morpho collateral
     * @return borrowShares Raw Morpho borrow shares
     * @return borrowAssetsUsdc USDC borrow debt (rounded up)
     */
    function getMorphoPosition()
        external
        view
        returns (uint256 collateralPt, uint256 borrowShares, uint256 borrowAssetsUsdc)
    {
        (, uint128 _borrowShares, uint128 _collateral) = IMorphoBlue(MORPHO).position(MORPHO_MARKET_ID, STRATEGY);
        collateralPt = uint256(_collateral);
        borrowShares = uint256(_borrowShares);
        borrowAssetsUsdc = _borrowSharesToAssets(borrowShares);
    }

    /**
     * @notice Get full position breakdown
     * @return usdcBalance Raw USDC balance in strategy (6 decimals)
     * @return usdgBalance Raw USDG balance in strategy (6 decimals)
     * @return syBalance Raw SY-USDG balance in strategy
     * @return ptBalance Raw PT-USDG balance in strategy
     * @return morphoCollateralPt PT-USDG amount on Morpho as collateral
     * @return morphoBorrowUsdc USDC borrow debt on Morpho (rounded up, 6 decimals)
     * @return ptToAssetRate Current Pendle TWAP PT→USDG rate (1e18 scale)
     */
    function getPositionBreakdown()
        external
        view
        returns (
            uint256 usdcBalance,
            uint256 usdgBalance,
            uint256 syBalance,
            uint256 ptBalance,
            uint256 morphoCollateralPt,
            uint256 morphoBorrowUsdc,
            uint256 ptToAssetRate
        )
    {
        usdcBalance = IERC20(USDC).balanceOf(STRATEGY);
        usdgBalance = IERC20(USDG).balanceOf(STRATEGY);
        syBalance = IERC20(SY).balanceOf(STRATEGY);
        ptBalance = IERC20(PT).balanceOf(STRATEGY);

        (, uint128 borrowShares, uint128 collateral) = IMorphoBlue(MORPHO).position(MORPHO_MARKET_ID, STRATEGY);
        morphoCollateralPt = uint256(collateral);
        morphoBorrowUsdc = _borrowSharesToAssets(uint256(borrowShares));

        ptToAssetRate = ORACLE != address(0) ? IPendleOracle(ORACLE).getPtToAssetRate(MARKET, TWAP_DURATION) : 0;
    }

    // ============================================
    // INTERNAL
    // ============================================

    /**
     * @notice Convert Morpho borrow shares to underlying assets (rounded up)
     * @dev Morpho Blue formula:
     *      borrowAssets = ceil(shares * (totalBorrowAssets + 1) / (totalBorrowShares + 1e6))
     *      Rounding up gives a conservative (overstating) debt estimate, which is the
     *      safe direction for net-asset reporting.
     */
    function _borrowSharesToAssets(uint256 shares) internal view returns (uint256) {
        if (shares == 0) return 0;
        (,, uint128 totalBorrowAssets, uint128 totalBorrowShares,,) = IMorphoBlue(MORPHO).market(MORPHO_MARKET_ID);
        uint256 numerator = shares * (uint256(totalBorrowAssets) + VIRTUAL_ASSETS);
        uint256 denominator = uint256(totalBorrowShares) + VIRTUAL_SHARES;
        return (numerator + denominator - 1) / denominator;
    }
}
