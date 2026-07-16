/**
 * Copyright 2025 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma solidity ^0.8.22;

import {BaseContract} from "../utils/BaseContract.sol";
import {ISecuritizeAmmNavProvider} from "./ISecuritizeAmmNavProvider.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

/**
 * @title SecuritizeAmmNavProvider
 * @dev Simplified NAV provider using a virtual constant-product AMM centered
 *      around an externally supplied anchor price.
 *
 *      This contract:
 *        - Maintains *virtual* reserves (not actual token balances).
 *        - Uses AMM math (x * y = k) only to compute *relative inventory pressure*.
 *        - Applies a deviation multiplier m = P_curve / r0 over the external anchor price.
 *        - Allows updating (resetting) the virtual baseline reserves.
 *        - Does NOT transfer tokens; it is purely math for pricing.
 *
 *
 *      Pricing (WAD domain, Quote/Base):
 *          1) Compute curve-implied average price from virtual reserves:
 *              - BUY (Quote in):  P_curve = amountInQuote / (baseReserves - newBase)
 *              - SELL (Base in):  P_curve = (quoteReserves - newQuote) / amountInBase
 *
 *             where new reserves are derived from the constant-product invariant k = X * Y:
 *              - BUY:  newQuote = Y + amountInQuote; newBase  = k / newQuote
 *              - SELL: newBase  = X + amountInBase;  newQuote = k / newBase
 *
 *          2) Compute the baseline ratio: r0 = quoteBaseline / baseBaseline
 *          3) Compute deviation multiplier: m = P_curve / r0
 *          4) Compute raw execution price relative to anchor: P_raw = anchorPriceWad * m
 *          5) Smooth towards the anchor with scale factor SF = priceScaleFactor: P_exec = (P_raw + (SF - 1) * anchorPriceWad) / SF
 *
 *      Notes:
 *        - SF = 1 => P_exec = P_raw (no smoothing)
 *        - Larger SF moves execution price closer to anchorPriceWad (more smoothing)
 *
 *      Internal math works in 1e18 fixed precision (WAD). Public-facing
 *      prices returned by view and execute functions are expressed as
 *      Quote per Base in the Base asset's decimals.
 *
 */
contract SecuritizeAmmNavProvider is ISecuritizeAmmNavProvider, BaseContract {
    // ------------------------------------------------------------------------
    // Storage
    // ------------------------------------------------------------------------

    /**
     * @dev Role allowed to execute trades (update virtual reserves).
     */
    bytes32 public constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");

    /**
     * @dev Underlying asset
     */
    IERC20Metadata public asset;

    /**
     * @dev Last market status used in a trade.
     */
    uint8 public lastMarketStatus;

    /**
     * @dev Current virtual base reserves (R_base).
     */
    uint256 public baseReserves;

    /**
     * @dev Current virtual quote reserves (R_quote).
     */
    uint256 public quoteReserves;

    /**
     * @dev Baseline snapshot of base reserves (R_base0) used only to compute the baseline ratio r0.
     */
    uint256 public baseBaseline;

    /**
     * @dev Baseline snapshot of quote reserves (R_quote0) used only to compute the baseline ratio r0.
     */
    uint256 public quoteBaseline;

    /**
     * @dev Virtual AMM invariant k = R_base * R_quote.
     */
    uint256 public k;

    /**
     * @dev Fixed-point precision (1e18) for prices and ratios.
     */
    uint256 private constant WAD = 1e18;

    /**
     * @dev Indicates that the market is closed.
     */
    uint8 public constant CLOSED_MARKET = 0;

    /**
     * @dev Indicates that the market is open.
     */
    uint8 public constant OPEN_MARKET = 1;

    /**
     * @dev Last anchor price (WAD) used in a trade.
     */
    uint256 public lastAnchorPriceWad;

    /**
     * @dev Scale factor controlling how fast prices move away from the anchor.
     *      Applied as: P_exec = (P_raw + (SF - 1) * anchorPriceWad) / SF
     *      so higher values => slower deviation from the anchor.
     */
    uint256 public priceScaleFactor;

    /**
     * @dev Minimum allowed value for reserves (both base and quote) to ensure adequate liquidity depth.
     *      Set to 1 whole token (10^decimals) during initialization.
     */
    uint256 public minReserves;

    // ------------------------------------------------------------------------
    // Modifiers
    // ------------------------------------------------------------------------

    /**
     * @dev Ensures the AMM virtual reserves and baseline are initialized.
     */
    modifier initialized() {
        require(baseReserves > 0 && quoteReserves > 0, "uninitialized");
        require(baseBaseline > 0 && quoteBaseline > 0, "baseline=0");
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Initializes the virtual AMM reserves, baseline and underlying asset.
     * @param _baseReserves Initial virtual base reserves.
     * @param _quoteReserves Initial virtual quote reserves.
     * @param _asset RWA.
     */
    function initialize(uint256 _baseReserves, uint256 _quoteReserves, address _asset) public onlyProxy initializer {
        require(_baseReserves > 0, "baseReserves=0");
        require(_quoteReserves > 0, "quoteReserves=0");

        __BaseDSContract_init();

        baseReserves = _baseReserves;
        quoteReserves = _quoteReserves;

        baseBaseline = _baseReserves;
        quoteBaseline = _quoteReserves;

        k = _baseReserves * _quoteReserves;

        asset = IERC20Metadata(_asset);

        uint256 minReservesTemp = 10 ** IERC20Metadata(_asset).decimals();  // 1 whole token minimum

        require(_baseReserves >= minReservesTemp, "baseReserves too small");
        require(_quoteReserves >= minReservesTemp, "quoteReserves too small");
        minReserves = minReservesTemp;

        priceScaleFactor = 2;
    }

    // ------------------------------------------------------------------------
    // Admin
    // ------------------------------------------------------------------------

    /**
     * @dev Resets both the baseline and current virtual reserves.
     * @param newBase New base reserve value.
     * @param newQuote New quote reserve value.
     */
    function resetBaseline(uint256 newBase, uint256 newQuote) onlyRole(DEFAULT_ADMIN_ROLE) external whenNotPaused {
        _resetBaseline(newBase, newQuote);
    }

    /**
     * @dev Updates the price scale factor used to smooth the curve-implied price
     *      towards the anchor price: P_exec = (P_raw + (SF - 1) * anchorPriceWad) / SF
     *
     *      Larger values make the execution price move more slowly away from the anchor.
     *
     * @param newScaleFactor New scale factor value (must be >= 1).
     */
    function setPriceScaleFactor(uint256 newScaleFactor) external whenNotPaused onlyRole(DEFAULT_ADMIN_ROLE) {
        require(newScaleFactor >= 1, "scaleFactor < 1");

        emit PriceScaleFactorUpdated(priceScaleFactor, newScaleFactor);
        priceScaleFactor = newScaleFactor;
    }

    // ------------------------------------------------------------------------
    // Internal: curve price helpers
    // ------------------------------------------------------------------------

    /**
     * @dev Pure curve math for BUY_BASE (Quote in, Base out).
     *
     * @param amountInQuote Amount of quote asset being exchanged.
     *
     * @return curvePriceWad Average curve-implied price (Quote/Base, WAD precision).
     * @return newBase       Resulting virtual base reserve after trade.
     * @return newQuote      Resulting virtual quote reserve after trade.
     */
    function _curveBuy(uint256 amountInQuote) internal view initialized returns (uint256 curvePriceWad, uint256 newBase, uint256 newQuote) {
        require(amountInQuote > 0, "amountInQuote = 0");

        newQuote = quoteReserves + amountInQuote;
        newBase = Math.ceilDiv(k, newQuote);

        require(newBase >= minReserves, "base reserves too low");

        uint256 deltaBase = baseReserves - newBase;
        require(deltaBase > 0, "deltaBase = 0");

        curvePriceWad = Math.mulDiv(amountInQuote, WAD, deltaBase, Math.Rounding.Ceil);
        require(curvePriceWad > 0, "curvePriceWad = 0");
    }

    /**
     * @dev Pure curve math for SELL_BASE (Base in, Quote out).
     *
     * @param amountInBase Amount of base asset being exchanged.
     *
     * @return curvePriceWad Average curve-implied price (Quote/Base, WAD precision).
     * @return newBase       Resulting virtual base reserve after trade.
     * @return newQuote      Resulting virtual quote reserve after trade.
     */
    function _curveSell(uint256 amountInBase) internal view initialized returns (uint256 curvePriceWad, uint256 newBase, uint256 newQuote) {
        require(amountInBase > 0, "amountInBase = 0");

        newBase = baseReserves + amountInBase;
        newQuote = Math.ceilDiv(k, newBase);

        require(newQuote >= minReserves, "quote reserves too low");

        uint256 deltaQuote = quoteReserves - newQuote;
        require(deltaQuote > 0, "deltaQuote = 0");

        curvePriceWad = Math.mulDiv(deltaQuote, WAD, amountInBase, Math.Rounding.Floor);
        require(curvePriceWad > 0, "curvePriceWad = 0");
    }

    /**
     * @dev Pure curve math for BUY_BASE from explicit state inputs
     *      rather than storage values.
     *
     * @param amountInQuote Amount of quote asset being exchanged
     * @param baseRes Current virtual base reserves
     * @param quoteRes Current virtual quote reserves
     * @param kLocal Virtual AMM invariant k = baseRes * quoteRes
     *
     * @return curvePriceWad Average curve-implied price (Quote/Base, WAD precision)
     * @return newBase Resulting virtual base reserve after trade
     * @return newQuote Resulting virtual quote reserve after trade
     */
    function _curveBuyFromState(
        uint256 amountInQuote,
        uint256 baseRes,
        uint256 quoteRes,
        uint256 kLocal
    ) internal view returns (uint256 curvePriceWad, uint256 newBase, uint256 newQuote) {
        require(amountInQuote > 0, "amountInQuote = 0");

        newQuote = quoteRes + amountInQuote;
        newBase = Math.ceilDiv(kLocal, newQuote);

        require(newBase >= minReserves, "base reserves too low");

        uint256 deltaBase = baseRes - newBase;
        require(deltaBase > 0, "deltaBase = 0");

        curvePriceWad = Math.mulDiv(amountInQuote, WAD, deltaBase, Math.Rounding.Ceil);
        require(curvePriceWad > 0, "curvePriceWad = 0");
    }

    /**
     * @dev Pure curve math for SELL_BASE from explicit state inputs
     *      rather than storage values.
     *
     * @param amountInBase Amount of base asset being exchanged
     * @param baseRes Current virtual base reserves
     * @param quoteRes Current virtual quote reserves
     * @param kLocal Virtual AMM invariant k = baseRes * quoteRes
     *
     * @return curvePriceWad Average curve-implied price (Quote/Base, WAD precision)
     * @return newBase Resulting virtual base reserve after trade
     * @return newQuote Resulting virtual quote reserve after trade
     */
    function _curveSellFromState(
        uint256 amountInBase,
        uint256 baseRes,
        uint256 quoteRes,
        uint256 kLocal
    ) internal view returns (uint256 curvePriceWad, uint256 newBase, uint256 newQuote) {
        require(amountInBase > 0, "amountInBase = 0");

        newBase = baseRes + amountInBase;
        newQuote = Math.ceilDiv(kLocal, newBase);

        require(newQuote >= minReserves, "quote reserves too low");

        uint256 deltaQuote = quoteRes - newQuote;
        require(deltaQuote > 0, "deltaQuote = 0");

        curvePriceWad = Math.mulDiv(deltaQuote, WAD, amountInBase, Math.Rounding.Floor);
        require(curvePriceWad > 0, "curvePriceWad = 0");
    }


    // ------------------------------------------------------------------------
    // Internal: anchor pricing
    // ------------------------------------------------------------------------

    /**
     * @dev Computes execution pricing for a BUY from curve math + anchor price.
     *
     *      Steps:
     *        1) Compute the baseline ratio: r0 = quoteBaseline / baseBaseline
     *        2) Compute the curve-implied average price: P_curve = curvePriceWad
     *        3) Compute the deviation multiplier: m = P_curve / r0
     *        4) Compute the unscaled execution price: baseExecPriceWad = anchorPriceWad * m
     *        5) Smooth towards the anchor using the scale factor:
     *             execPriceWad = (P_raw + (SF - 1) * anchorPriceWad) / SF
     *
     *      All intermediate prices are in WAD precision (1e18).
     *
     * @param amountInQuote Amount of quote asset being spent.
     * @param curvePriceWad Curve-implied average price (Quote/Base, WAD).
     * @param anchorPriceWad Reference anchor price (Quote/Base, WAD).
     *
     * @return baseOut Base amount the user receives.
     * @return execPriceWad Final execution price (WAD).
     */
    function _pricingFromCurveBuy(
        uint256 amountInQuote,
        uint256 curvePriceWad,
        uint256 anchorPriceWad
    ) internal view returns (uint256 baseOut, uint256 execPriceWad) {
        return _pricingFromCurveBuyWithBaseline(
            amountInQuote,
            curvePriceWad,
            anchorPriceWad,
            baseBaseline,
            quoteBaseline
        );
    }

    /**
     * @dev Computes execution pricing for a SELL from curve math + anchor price.
     *
     *      Steps:
     *        1) Compute the baseline ratio: r0 = quoteBaseline / baseBaseline
     *        2) Compute the curve-implied average price: P_curve = curvePriceWad
     *        3) Compute the deviation multiplier: m = P_curve / r0
     *        4) Compute the unscaled execution price: baseExecPriceWad = anchorPriceWad * m
     *        5) Smooth towards the anchor using the scale factor:
     *             execPriceWad = (P_raw + (SF - 1) * anchorPriceWad) / SF
     *
     *      All intermediate prices are in WAD precision (1e18).
     *
     * @param amountInBase Amount of base asset being sold.
     * @param curvePriceWad Curve-implied average price (Quote/Base, WAD).
     * @param anchorPriceWad Reference anchor price (Quote/Base, WAD).
     *
     * @return quoteOut Quote amount the user receives.
     * @return execPriceWad Final execution price (WAD).
     */
    function _pricingFromCurveSell(
        uint256 amountInBase,
        uint256 curvePriceWad,
        uint256 anchorPriceWad
    ) internal view returns (uint256 quoteOut, uint256 execPriceWad) {
        return _pricingFromCurveSellWithBaseline(
            amountInBase,
            curvePriceWad,
            anchorPriceWad,
            baseBaseline,
            quoteBaseline
        );
    }

    function _pricingFromCurveBuyWithBaseline(
        uint256 amountInQuote,
        uint256 curvePriceWad,
        uint256 anchorPriceWad,
        uint256 baseBL,
        uint256 quoteBL
    ) internal view returns (uint256 baseOut, uint256 execPriceWad) {
        uint256 _priceScaleFactor = priceScaleFactor;
        require(_priceScaleFactor > 0, "scaleFactor = 0");

        uint256 r0Wad = Math.mulDiv(quoteBL, WAD, baseBL, Math.Rounding.Floor);
        require(r0Wad > 0, "r0 = 0");

        uint256 mWad = Math.mulDiv(curvePriceWad, WAD, r0Wad, Math.Rounding.Ceil);
        uint256 baseExecPriceWad = Math.mulDiv(anchorPriceWad, mWad, WAD, Math.Rounding.Ceil);

        execPriceWad = Math.ceilDiv(baseExecPriceWad + (_priceScaleFactor - 1) * anchorPriceWad, _priceScaleFactor);
        require(execPriceWad > 0, "execPriceWad = 0");

        baseOut = (amountInQuote * WAD) / execPriceWad;
    }

    function _pricingFromCurveSellWithBaseline(
        uint256 amountInBase,
        uint256 curvePriceWad,
        uint256 anchorPriceWad,
        uint256 baseBL,
        uint256 quoteBL
    ) internal view returns (uint256 quoteOut, uint256 execPriceWad) {
        require(anchorPriceWad > 0, "anchor = 0");
        uint256 _priceScaleFactor = priceScaleFactor;
        require(_priceScaleFactor > 0, "scaleFactor = 0");

        uint256 r0Wad = Math.mulDiv(quoteBL, WAD, baseBL, Math.Rounding.Ceil);
        require(r0Wad > 0, "r0 = 0");

        uint256 mWad = Math.mulDiv(curvePriceWad, WAD, r0Wad, Math.Rounding.Floor);
        uint256 baseExecPriceWad = Math.mulDiv(anchorPriceWad, mWad, WAD, Math.Rounding.Floor);

        execPriceWad = (baseExecPriceWad + (_priceScaleFactor - 1) * anchorPriceWad) / _priceScaleFactor;
        require(execPriceWad > 0, "execPriceWad = 0");

        quoteOut = (amountInBase * execPriceWad) / WAD;
    }

    function _resetBaseline(uint256 newBase, uint256 newQuote) internal {
        require(newBase > 0, "newBase=0");
        require(newQuote > 0, "newQuote=0");

        uint256 minReservesCache = minReserves;
        require(newBase >= minReservesCache, "newBase too small");
        require(newQuote >= minReservesCache, "newQuote too small");

        baseReserves = newBase;
        quoteReserves = newQuote;

        baseBaseline = newBase;
        quoteBaseline = newQuote;

        k = newBase * newQuote;

        emit BaselineReset(newBase, newQuote);
    }

    /**
     * @dev Checks whether the baseline should be reset based on the previous
     *      and current market status and anchor price.
     *
     *      Rules:
     *        - If the market was open and now is closed: reset baseline.
     *        - If the market was closed and remains closed, and the anchor price changed since the last trade: reset baseline.
     *
     *      Baseline is reset to:
     *          baseBaseline  = current baseReserves
     *          quoteBaseline = baseReserves * anchorPrice (WAD-scaled)
     */
    function _checkAndResetBaseline(uint8 marketStatus, uint256 anchorPriceWad) internal {
        // No previous trade recorded: skip auto-reset
        uint256 previousAnchor = lastAnchorPriceWad;
        uint8 previousMarketStatus = lastMarketStatus;
        if (previousAnchor == 0 && previousMarketStatus == CLOSED_MARKET) {
            return;
        }

        bool shouldReset;

        if (previousMarketStatus == OPEN_MARKET && marketStatus == CLOSED_MARKET) {
            // Market transitioned from open -> closed
            shouldReset = true;
        } else if (
            previousMarketStatus == CLOSED_MARKET &&
            marketStatus == CLOSED_MARKET &&
            previousAnchor != 0 &&
            previousAnchor != anchorPriceWad
        ) {
            // Market remained closed, but anchor price changed
            shouldReset = true;
        }

        if (shouldReset) {
            uint256 newBase = baseReserves;

            // anchorPriceWad is Quote/Base in WAD, so:
            // newQuote = newBase * anchorPrice (scaled back from WAD)
            uint256 newQuote = Math.mulDiv(newBase, anchorPriceWad, WAD);
            _resetBaseline(newBase, newQuote);
        }
    }

    // ------------------------------------------------------------------------
    // View quote functions
    // ------------------------------------------------------------------------

    /**
     * @dev Returns a BUY quote (user pays Quote, receives Base) without updating reserves.
     *
     * @param amountInQuote Amount of quote asset supplied.
     * @param anchorPriceWad Reference anchor price (WAD).
     * @param marketStatus The current market status.
     *
     * @return baseOut Base tokens the user *would* receive.
     * @return execPrice Execution price (asset decimals).
     */
    function quoteBuyBase(uint256 amountInQuote, uint256 anchorPriceWad, uint8 marketStatus) external view returns (uint256 baseOut, uint256 execPrice) {
        require(anchorPriceWad > 0, "anchor = 0");

        uint8 d = asset.decimals();
        require(d <= 18, "decimals > 18");
        uint256 scaleDown = 10 ** (18 - d);

        uint256 rawExecPriceWad;

        if (marketStatus == CLOSED_MARKET) {
            (
                uint256 effBaseRes,
                uint256 effQuoteRes,
                uint256 effK,
                uint256 effBaseBL,
                uint256 effQuoteBL
            ) = _effectiveStateForQuote(marketStatus, anchorPriceWad);
            (uint256 curvePriceWad,,) = _curveBuyFromState(amountInQuote, effBaseRes, effQuoteRes, effK);
            (baseOut, rawExecPriceWad) = _pricingFromCurveBuyWithBaseline(amountInQuote, curvePriceWad, anchorPriceWad, effBaseBL, effQuoteBL);
        } else if (marketStatus == OPEN_MARKET) {
            rawExecPriceWad = anchorPriceWad;
            baseOut = (amountInQuote * WAD) / rawExecPriceWad;
        } else {
            revert("invalid market status");
        }

        require(baseOut > 0, "baseOut = 0");
        execPrice = Math.ceilDiv(rawExecPriceWad, scaleDown);
        require(execPrice > 0, "execPrice = 0");
    }

    /**
     * @dev Returns a SELL quote (user pays Base, receives Quote) without updating reserves.
     *
     * @param amountInBase Amount of base asset supplied.
     * @param anchorPriceWad Reference anchor price (WAD).
     * @param marketStatus The current market status.
     *
     * @return quoteOut Quote tokens the user *would* receive.
     * @return execPrice Execution price (asset decimals).
     */
    function quoteSellBase(uint256 amountInBase, uint256 anchorPriceWad, uint8 marketStatus) external view returns (uint256 quoteOut, uint256 execPrice) {
        require(anchorPriceWad > 0, "anchor = 0");

        uint8 d = asset.decimals();
        require(d <= 18, "decimals > 18");
        uint256 scaleDown = 10 ** (18 - d);

        uint256 rawExecPriceWad;

        if (marketStatus == CLOSED_MARKET) {
            (
                uint256 effBaseRes,
                uint256 effQuoteRes,
                uint256 effK,
                uint256 effBaseBL,
                uint256 effQuoteBL
            ) = _effectiveStateForQuote(marketStatus, anchorPriceWad);
            (uint256 curvePriceWad,,) = _curveSellFromState(amountInBase, effBaseRes, effQuoteRes, effK);
            (quoteOut, rawExecPriceWad) = _pricingFromCurveSellWithBaseline(amountInBase, curvePriceWad, anchorPriceWad, effBaseBL, effQuoteBL);
        } else if (marketStatus == OPEN_MARKET) {
            rawExecPriceWad = anchorPriceWad;
            quoteOut = (amountInBase * rawExecPriceWad) / WAD;
        } else {
            revert("invalid market status");
        }

        require(quoteOut > 0, "quoteOut = 0");
        execPrice = rawExecPriceWad / scaleDown;
        require(execPrice > 0, "execPrice = 0");
    }

    // ------------------------------------------------------------------------
    // Execute (state-changing) functions
    // ------------------------------------------------------------------------

    /**
     * @dev Executes a BUY (Quote in, Base out) and updates virtual reserves.
     * Can only be called by accounts with EXECUTOR_ROLE
     *
     * @param amountInQuote Amount of quote asset the user pays.
     * @param anchorPriceWad Anchor price (WAD).
     * @param marketStatus The current market status.
     *
     * @return baseOut Base amount sent to the user.
     * @return execPrice Execution price (asset decimals).
     */
    function executeBuyBase(
        uint256 amountInQuote,
        uint256 anchorPriceWad,
        uint8 marketStatus
    ) external whenNotPaused onlyRole(EXECUTOR_ROLE) returns (uint256 baseOut, uint256 execPrice) {
        require(anchorPriceWad > 0, "anchor = 0");
        require(priceScaleFactor > 0, "scaleFactor = 0");

        // Auto baseline reset based on previous trade & current inputs
        _checkAndResetBaseline(marketStatus, anchorPriceWad);

        (uint256 curvePriceWad, uint256 newBase, uint256 newQuote) = _curveBuy(amountInQuote);

        uint256 rawExecPriceWad;

        if (marketStatus == CLOSED_MARKET) {
            (baseOut, rawExecPriceWad) = _pricingFromCurveBuy(amountInQuote, curvePriceWad, anchorPriceWad);
        } else if (marketStatus == OPEN_MARKET) {
            rawExecPriceWad = anchorPriceWad;
            baseOut = (amountInQuote * WAD) / rawExecPriceWad;
        } else {
            revert("invalid market status");
        }

        require(baseOut > 0, "baseOut = 0");

        baseReserves = newBase;
        quoteReserves = newQuote;
        k = newBase * newQuote;

        // record trade values
        _recordTrade(marketStatus, anchorPriceWad);

        uint8 d = asset.decimals();
        require(d <= 18, "decimals > 18");
        uint256 scaleDown = 10 ** (18 - d);

        execPrice = Math.ceilDiv(rawExecPriceWad, scaleDown);
        require(execPrice > 0, "execPrice = 0");

        emit ExecuteBuy(msg.sender, amountInQuote, baseOut, rawExecPriceWad);
    }


    /**
     * @dev Executes a SELL (Base in, Quote out) and updates virtual reserves.
     * Can only be called by accounts with EXECUTOR_ROLE
     *
     * @param amountInBase Amount of base asset the user pays.
     * @param anchorPriceWad Anchor price (WAD).
     * @param marketStatus The current market status.
     *
     * @return quoteOut Quote amount sent to the user.
     * @return execPrice Execution price (asset decimals).
     */
    function executeSellBase(
        uint256 amountInBase,
        uint256 anchorPriceWad,
        uint8 marketStatus
    ) external whenNotPaused onlyRole(EXECUTOR_ROLE) returns (uint256 quoteOut, uint256 execPrice) {
        require(anchorPriceWad > 0, "anchor = 0");
        require(priceScaleFactor > 0, "scaleFactor = 0");

        // Auto baseline reset based on previous trade & current inputs
        _checkAndResetBaseline(marketStatus, anchorPriceWad);

        (uint256 curvePriceWad, uint256 newBase, uint256 newQuote) = _curveSell(amountInBase);

        uint256 rawExecPriceWad;

        if (marketStatus == CLOSED_MARKET) {
            (quoteOut, rawExecPriceWad) = _pricingFromCurveSell(amountInBase, curvePriceWad, anchorPriceWad);
        } else if (marketStatus == OPEN_MARKET) {
            rawExecPriceWad = anchorPriceWad;
            quoteOut = (amountInBase * rawExecPriceWad) / WAD;
        } else {
            revert("invalid market status");
        }

        require(quoteOut > 0, "quoteOut = 0");

        baseReserves = newBase;
        quoteReserves = newQuote;
        k = newBase * newQuote;

        // record trade values
        _recordTrade(marketStatus, anchorPriceWad);

        uint8 d = asset.decimals();
        require(d <= 18, "decimals > 18");
        uint256 scaleDown = 10 ** (18 - d);

        execPrice = rawExecPriceWad / scaleDown;

        require(execPrice > 0, "execPrice = 0");

        emit ExecuteSell(msg.sender, amountInBase, quoteOut, rawExecPriceWad);
    }

    // ------------------------------------------------------------------------
    // Private methods
    // ------------------------------------------------------------------------

    /**
     * @dev Stores trade metadata: market status and anchor price.
     */
    function _recordTrade(uint8 marketStatus, uint256 anchorPriceWad) private {
        lastMarketStatus = marketStatus;
        lastAnchorPriceWad = anchorPriceWad;
        emit TradeMetadata(marketStatus, anchorPriceWad);
    }

    /**
     * @dev Returns the effective state values that would be used for quoting after any
     *      potential baseline reset. Mirrors the state changes that would occur during
     *      execution to ensure quotes match execution results.
     *
     * @param marketStatus Current market status (OPEN_MARKET or CLOSED_MARKET)
     * @param anchorPriceWad Reference anchor price in WAD precision
     *
     * @return effBaseRes Effective base reserves that would be used for quoting
     * @return effQuoteRes Effective quote reserves that would be used for quoting
     * @return effK Effective k invariant that would be used for quoting
     * @return effBaseBL Effective base baseline that would be used for quoting
     * @return effQuoteBL Effective quote baseline that would be used for quoting
     */
    function _effectiveStateForQuote(
        uint8 marketStatus,
        uint256 anchorPriceWad
    )
    private view returns (uint256 effBaseRes, uint256 effQuoteRes, uint256 effK, uint256 effBaseBL, uint256 effQuoteBL) {
        // defaults: current storage state
        effBaseRes  = baseReserves;
        effQuoteRes = quoteReserves;
        effBaseBL   = baseBaseline;
        effQuoteBL  = quoteBaseline;
        effK        = k;

        uint256 previousAnchor = lastAnchorPriceWad;
        uint8 previousMarketStatus = lastMarketStatus;

        // same “no previous trade” shortcut as execute path
        if (previousAnchor == 0 && previousMarketStatus == CLOSED_MARKET) {
            return (effBaseRes, effQuoteRes, effK, effBaseBL, effQuoteBL);
        }

        bool shouldReset = (previousMarketStatus == OPEN_MARKET && marketStatus == CLOSED_MARKET) ||
            (
                previousMarketStatus == CLOSED_MARKET &&
                marketStatus == CLOSED_MARKET &&
                previousAnchor != 0 &&
                previousAnchor != anchorPriceWad
            );

        if (shouldReset) {
            // Mirror _checkAndResetBaseline + _resetBaseline effect:
            // newBase = baseReserves
            // newQuote = baseReserves * anchorPrice / WAD
            uint256 newBase  = effBaseRes;
            uint256 newQuote = Math.mulDiv(newBase, anchorPriceWad, WAD);

            // If _resetBaseline would revert, quote should revert too (match execution).
            uint256 minReservesCache = minReserves;
            require(newBase  >= minReservesCache, "newBase too small");
            require(newQuote >= minReservesCache, "newQuote too small");

            effBaseRes  = newBase;
            effQuoteRes = newQuote;
            effBaseBL   = newBase;
            effQuoteBL  = newQuote;
            effK        = newBase * newQuote; // same as _resetBaseline
        }
    }
}
