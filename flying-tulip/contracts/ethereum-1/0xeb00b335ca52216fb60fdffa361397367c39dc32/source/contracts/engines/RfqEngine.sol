// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Flying Tulip Inc. All rights reserved.
pragma solidity ^0.8.30;

import {IPositionsManager} from "../interfaces/IPositionsManager.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IConfigRegistry} from "../interfaces/IConfigRegistry.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import {RiskLib} from "../utils/RiskLib.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Constants} from "../utils/Constants.sol";
import {IFlash, ILiquidationFlashCallback} from "../interfaces/IFlash.sol";
import {IOracleUSD} from "@ft-common/interfaces/IOracleUSD.sol";
import {IAccountValuesRouterEx} from "../interfaces/IAccountValuesRouterEx.sol";
import {IAccountValuesLens, AccountSnapshot} from "../interfaces/IAccountValuesLens.sol";

interface IEngineBeforeLiquidationHook {
    function onBeforeLiquidation(address pmAddr, address user, bytes calldata data) external;
}

/// @title RfqEngine
/// @notice External RFQ engine that rebalances user positions by repaying debt and seizing collateral
///         using PositionsManager's onlyEngine hooks. Keeps heavy RFQ logic out of PositionsManager.
contract RfqEngine is ReentrancyGuardTransient, ILiquidationFlashCallback {
    using SafeERC20 for IERC20;
    IPositionsManager public immutable pm;

    // Best-effort pre-liquidation unwind hooks (to release engine holds).
    uint256 internal constant _UNWIND_MAX_ORDERS = 16;

    // ===== Errors =====
    error RfqZeroAddress();
    error RfqAmountZero();
    error RfqAmountExceedsUint128();
    error RfqHFNotBelowTarget();
    error RfqHFPostTooLow();
    error RfqHFPostTooHigh();
    error RfqOnlyPermissionedLiquidator();
    error RfqRepayAboveMin();
    error RfqRepayBelowMin();
    error RfqSeizeEffectiveGtRepay();
    error RfqSeizeAssetIneligible();
    error RfqResidualDebtDust();
    error RfqResidualCollateralDust();
    error RfqMarginConfigUnset();
    error RfqInvalidBps();
    error RfqOnlyPositionsManager();
    error RfqOraclePriceZero();
    error RfqOnlyAdminOrCollector();

    // Permissioned liquidation
    mapping(address => bool) public privilegedAccounts; // traders that require a permissioned liquidator
    mapping(address => bool) public permissionedLiquidators; // addresses allowed to liquidate privileged traders

    /// @notice Minimum liquidation repay size in USD-WAD (1e18). Only enforced when collateral is seized.
    /// @dev Set to 0 to disable.
    uint256 public minRepayUSDWad;
    /// @notice Minimum post-liquidation debt value allowed when debt remains, in USD-WAD.
    /// @dev Set to 0 to disable.
    uint256 public minResidualDebtUSDWad;
    /// @notice Minimum post-liquidation eligible collateral value allowed when debt remains, in USD-WAD.
    /// @dev Set to 0 to disable.
    uint256 public minResidualCollateralUSDWad;

    // Liquidation incentive (engine-local): allows effective seized collateral
    // up to repayUSD * (1 + liqBonusBps / BPS).
    uint256 public liqBonusBps; // default 0 = strict parity

    // Protocol share of the realized liquidation bonus (bps of the actual bonus, not of seized amount).
    // The realized bonus = seizeUSD - debtInUSD. Protocol keeps protocolLiqSplitBps/BPS of that.
    // E.g. liqBonusBps=500 (5%) and protocolLiqSplitBps=1000 (10%): if the filler seizes the
    // full cap, the protocol keeps 0.5% and the filler keeps 4.5%. If the filler seizes less,
    // the split applies to the actual surplus -- the protocol never takes from principal.
    uint256 public protocolLiqSplitBps;
    address public liqFeeRecipient;
    address public liqFeeCollector;

    event PrivilegedAccountUpdated(address indexed account, bool isPrivileged);
    event PermissionedLiquidatorUpdated(address indexed account, bool isAuthorized);
    event LiqBonusSet(uint16 bps);
    event MinRepayUSDWadSet(uint256 minRepayUSDWad);
    event ResidualDustThresholdsSet(
        uint256 minResidualDebtUSDWad, uint256 minResidualCollateralUSDWad
    );
    event ProtocolLiqSplitSet(uint16 bps);
    event LiqFeeRecipientSet(address recipient);
    event LiqFeeCollectorSet(address liqFeeCollector);
    event LiquidationFeeCollected(address indexed asset, address indexed to, uint256 amount);
    event RFQFill(address indexed filler, address indexed user, DebtIn[] debtIn, CollOut[] collOut);
    event RFQFillFlash(
        address indexed filler, address indexed user, DebtIn[] debtIn, CollOut[] collOut, bytes data
    );

    // ===== Structs =====
    struct DebtIn {
        address asset;
        uint256 amount;
    }

    struct CollOut {
        address asset;
        uint256 amount;
    }

    struct PreLiquidationState {
        uint16 hfTarget;
        uint16 hfSafe;
        uint256 equityUSDWad;
        uint256 maintUSDWad;
        uint256 debtUSDWad;
        uint256 eligibleCollUSDWad;
    }

    address public admin;

    event AdminTransferred(address indexed prev, address indexed next);

    constructor(address pm_, address admin_) {
        if (pm_ == address(0) || admin_ == address(0)) revert RfqZeroAddress();
        pm = IPositionsManager(pm_);
        admin = admin_;
        liqFeeRecipient = admin_;
        liqFeeCollector = admin_;
        emit AdminTransferred(address(0), admin_);
        emit LiqFeeRecipientSet(admin_);
        emit LiqFeeCollectorSet(admin_);
    }

    modifier onlyAdmin() {
        if (msg.sender != admin) revert IPositionsManager.ftPositionManagerOnlyOwner();
        _;
    }

    modifier onlyAdminOrCollector() {
        if (msg.sender != liqFeeCollector && msg.sender != admin) {
            revert RfqOnlyAdminOrCollector();
        }
        _;
    }

    function setAdmin(address newAdmin) external onlyAdmin {
        if (newAdmin == address(0)) revert RfqZeroAddress();
        emit AdminTransferred(admin, newAdmin);
        admin = newAdmin;
    }

    function setPrivilegedAccount(address account, bool isPrivileged) external onlyAdmin {
        privilegedAccounts[account] = isPrivileged;
        emit PrivilegedAccountUpdated(account, isPrivileged);
    }

    function setPermissionedLiquidator(address account, bool isAuthorized) external onlyAdmin {
        permissionedLiquidators[account] = isAuthorized;
        emit PermissionedLiquidatorUpdated(account, isAuthorized);
    }

    function setLiqBonusBps(uint16 bps) external onlyAdmin {
        if (bps > Constants.BPS) revert RfqInvalidBps();
        liqBonusBps = bps;
        emit LiqBonusSet(bps);
    }

    function setMinRepayUSDWad(uint256 minRepayUSDWad_) external onlyAdmin {
        minRepayUSDWad = minRepayUSDWad_;
        emit MinRepayUSDWadSet(minRepayUSDWad_);
    }

    function setResidualDustThresholds(
        uint256 minResidualDebtUSDWad_,
        uint256 minResidualCollateralUSDWad_
    )
        external
        onlyAdmin
    {
        minResidualDebtUSDWad = minResidualDebtUSDWad_;
        minResidualCollateralUSDWad = minResidualCollateralUSDWad_;
        emit ResidualDustThresholdsSet(minResidualDebtUSDWad_, minResidualCollateralUSDWad_);
    }

    function setProtocolLiqSplit(uint16 bps) external onlyAdmin {
        if (bps > Constants.BPS) revert RfqInvalidBps();
        protocolLiqSplitBps = bps;
        emit ProtocolLiqSplitSet(bps);
    }

    function setLiqFeeRecipient(address liqFeeRecipient_) external onlyAdmin {
        if (liqFeeRecipient_ == address(0)) revert RfqZeroAddress();
        liqFeeRecipient = liqFeeRecipient_;
        emit LiqFeeRecipientSet(liqFeeRecipient_);
    }

    function setLiqFeeCollector(address collector_) external onlyAdmin {
        if (collector_ == address(0)) revert RfqZeroAddress();
        liqFeeCollector = collector_;
        emit LiqFeeCollectorSet(collector_);
    }

    function collectLiquidationFee(address asset) external onlyAdminOrCollector {
        if (asset == address(0)) revert RfqZeroAddress();
        uint256 amt = IERC20(asset).balanceOf(address(this));
        if (amt == 0) return;
        IERC20(asset).safeTransfer(liqFeeRecipient, amt);
        emit LiquidationFeeCollected(asset, liqFeeRecipient, amt);
    }

    function _requirePermissionedLiquidationIfPrivileged(address user) internal view {
        if (privilegedAccounts[user] && !permissionedLiquidators[msg.sender]) {
            revert RfqOnlyPermissionedLiquidator();
        }
    }

    function _getAccountHFThresholds(IConfigRegistry cfg)
        internal
        view
        returns (uint16 hfTarget, uint16 hfSafe)
    {
        hfTarget = cfg.marginHfTargetBps();
        hfSafe = cfg.marginHfSafeBps();
        if (hfTarget == 0 || hfSafe == 0 || hfSafe <= hfTarget) {
            revert RfqMarginConfigUnset();
        }
    }

    function _requireBelowTargetHF(
        uint256 equityUSDWad,
        uint256 maintUSDWad,
        uint16 hfTarget
    )
        internal
        pure
    {
        uint16 hf = RiskLib.hfBps(equityUSDWad, maintUSDWad);
        if (hf >= hfTarget) revert RfqHFNotBelowTarget();
    }

    function _enforcePostHF(
        address user,
        IConfigRegistry cfg,
        PreLiquidationState memory pre,
        uint256 repayUSDWad,
        uint256 repayMaintUSDWad,
        CollOut[] calldata collOut
    )
        internal
        view
    {
        AccountSnapshot memory snapPost = pm.valuesLens().accountValues(address(pm), user);
        bool fullClose = (pm.userDebtAssets(user).length == 0);
        uint256 eligibleCollUSDWadPost = snapPost.collUSDWad; // raw; does not include engine PnL
        bool terminalBadDebt = (pre.equityUSDWad == 0 && eligibleCollUSDWadPost == 0);
        uint16 hf = RiskLib.hfBps(snapPost.equityUSDWad, snapPost.maintUSDWad);

        if (hf < pre.hfTarget && !terminalBadDebt) revert RfqHFPostTooLow();

        (uint256 seizedRawUSD, uint256 seizedMaintUSD) = _collOutValuesUSDWad(cfg, collOut);

        _enforceSeizeFairnessCap(repayUSDWad, seizedRawUSD);

        // ── Insolvency terminal ──────────────────────────────────────────
        if (terminalBadDebt) return;

        // ── Solvency path (partial and full closes) ──────────────────────
        // Reaching this point with repayUSDWad == 0 implies seizedRawUSD > 0; otherwise the
        // HF floor would have reverted.
        if (repayUSDWad == 0) revert RfqSeizeEffectiveGtRepay();
        _enforceMinRepay(repayUSDWad, seizedRawUSD, fullClose);
        _enforceRepayCap(
            pre, repayUSDWad, repayMaintUSDWad, seizedRawUSD, seizedMaintUSD, fullClose
        );

        if (fullClose) return;

        _enforceResidualDust(snapPost.debtUSDWad, eligibleCollUSDWadPost);
        // Skip when post maintenance is zero: hfBps returns max-uint16, blocking the liquidation.
        if (snapPost.maintUSDWad != 0 && hf > pre.hfSafe) revert RfqHFPostTooHigh();
    }

    /// @dev Seized raw collateral (USD) must not exceed repaid debt (USD) * (1 + liqBonusBps/BPS).
    ///      This is the hard ceiling on liquidator profit per liquidation event.
    function _enforceSeizeFairnessCap(uint256 repayUSDWad, uint256 seizedRawUSD) internal view {
        if (seizedRawUSD == 0) return;
        uint256 maxSeizeUSD = Math.mulDiv(
            repayUSDWad, Constants.BPS + liqBonusBps, Constants.BPS, Math.Rounding.Ceil
        );
        if (seizedRawUSD > maxSeizeUSD) revert RfqSeizeEffectiveGtRepay();
    }

    // Pure-repay liquidations (no seize) are used by the protocol to clear bad debt
    // and must not be subject to the min-repay floor. Full closes are also exempt:
    // forcing a minimum on the final chunk would block complete debt clearance on
    // small positions.
    function _enforceMinRepay(
        uint256 repayUSDWad,
        uint256 seizedRawUSD,
        bool fullClose
    )
        internal
        view
    {
        if (fullClose || seizedRawUSD == 0) return;
        if (minRepayUSDWad != 0 && repayUSDWad < minRepayUSDWad) {
            revert RfqRepayBelowMin();
        }
    }

    /// @dev Net maintenance reduction per USD repaid at the seize bound (repay x, seize x*(1+b)).
    ///      a = kDebt + (1+b)*kColl, where kDebt and kColl are the maintenance ratios of the
    ///      repaid and seized asset bundles respectively.
    function _computeAWad(
        uint256 repayUSDWad,
        uint256 repayMaintUSDWad,
        uint256 seizedRawUSD,
        uint256 seizedMaintUSD
    )
        internal
        view
        returns (uint256)
    {
        uint256 kDebtWad =
            Math.mulDiv(repayMaintUSDWad, Constants.WAD, repayUSDWad, Math.Rounding.Ceil);
        uint256 kCollWad =
            Math.mulDiv(seizedMaintUSD, Constants.WAD, seizedRawUSD, Math.Rounding.Ceil);
        return kDebtWad
            + Math.mulDiv(kCollWad, Constants.BPS + liqBonusBps, Constants.BPS, Math.Rounding.Ceil);
    }

    /// @dev Cap repayment to the amount that would restore HF to hfSafe (or hfTarget,
    ///      whichever is more permissive) under the bonus-constrained seizure model.
    ///      Prevents over-liquidation while allowing mid-corridor partial liquidations.
    ///      When the cap would leave residual dust, a full close is allowed to exceed it.
    function _enforceRepayCap(
        PreLiquidationState memory pre,
        uint256 repayUSDWad,
        uint256 repayMaintUSDWad,
        uint256 seizedRawUSD,
        uint256 seizedMaintUSD,
        bool fullClose
    )
        internal
        view
    {
        if (seizedRawUSD == 0) return;

        uint256 aWad = _computeAWad(repayUSDWad, repayMaintUSDWad, seizedRawUSD, seizedMaintUSD);

        // The closed-form xMax is NOT monotonically increasing in H when a*E < M*b
        // (deep Regime B). Using hfSafe alone could shrink xMax below the hfTarget value,
        // breaking full-closeout liveness. Take the max of both to preserve backward
        // compatibility while extending the corridor for partial liquidations.
        uint256 xMaxTarget = _computeMinRepaymentWithK(
            pre.equityUSDWad, pre.maintUSDWad, uint256(pre.hfTarget), liqBonusBps, aWad
        );
        uint256 xMaxSafe = _computeMinRepaymentWithK(
            pre.equityUSDWad, pre.maintUSDWad, uint256(pre.hfSafe), liqBonusBps, aWad
        );
        uint256 xMax = xMaxTarget > xMaxSafe ? xMaxTarget : xMaxSafe;
        if (repayUSDWad > xMax) {
            // Dust escape: if enforcing xMax would strand a below-threshold residual,
            // allow the full close to proceed despite exceeding the cap.
            bool allowFullCloseForDust = fullClose
                && _fullCloseRequiredByResidualDust(
                    pre.debtUSDWad, pre.eligibleCollUSDWad, repayUSDWad, seizedRawUSD, xMax
                );
            if (!allowFullCloseForDust) revert RfqRepayAboveMin();
        }
    }

    /// @dev After a partial liquidation, remaining debt and eligible collateral must each
    ///      exceed their configured minimums. Prevents dust positions that are too small to
    ///      economically liquidate and would clog protocol accounting.
    function _enforceResidualDust(
        uint256 debtUSDWadPost,
        uint256 eligibleCollUSDWadPost
    )
        internal
        view
    {
        if (minResidualDebtUSDWad != 0 && debtUSDWadPost < minResidualDebtUSDWad) {
            revert RfqResidualDebtDust();
        }
        if (
            minResidualCollateralUSDWad != 0 && eligibleCollUSDWadPost < minResidualCollateralUSDWad
        ) {
            revert RfqResidualCollateralDust();
        }
    }

    function _requireSeizeEligible(
        IConfigRegistry cfg,
        address asset
    )
        internal
        view
        returns (IConfigRegistry.AssetCfg memory assetCfg)
    {
        assetCfg = cfg.getAssetCfg(asset);
        if (!assetCfg.collateral) {
            revert RfqSeizeAssetIneligible();
        }
    }

    function _priceAssetUSD(
        address oracle,
        address asset,
        uint256 amount,
        Math.Rounding rounding
    )
        internal
        view
        returns (uint256 usd)
    {
        uint256 pxWad = IOracleUSD(oracle).priceUSD(asset);
        if (pxWad == 0) revert RfqOraclePriceZero();
        // forge-lint: disable-next-line(unsafe-typecast)
        uint256 scale = 10 ** uint256(IERC20Metadata(asset).decimals());
        usd = Math.mulDiv(amount, pxWad, scale, rounding);
    }

    function _collOutValuesUSDWad(
        IConfigRegistry cfg,
        CollOut[] calldata collOut
    )
        internal
        view
        returns (uint256 seizedRawUSD, uint256 seizedMaintUSD)
    {
        address oracleRouter = cfg.oracleRouter();
        uint256 n = collOut.length;
        for (uint256 i = 0; i < n; ++i) {
            address asset = collOut[i].asset;
            uint256 amt = collOut[i].amount;
            if (amt != 0) {
                IConfigRegistry.AssetCfg memory assetCfg = _requireSeizeEligible(cfg, asset);
                uint256 rawUSD = _priceAssetUSD(oracleRouter, asset, amt, Math.Rounding.Ceil);
                seizedRawUSD += rawUSD;

                uint16 mmBps = assetCfg.mmBps;
                if (mmBps != 0) {
                    seizedMaintUSD += Math.mulDiv(rawUSD, mmBps, Constants.BPS, Math.Rounding.Ceil);
                }
            }
        }
    }

    function _fullCloseRequiredByResidualDust(
        uint256 debtUSDWadPre,
        uint256 eligibleCollUSDWadPre,
        uint256 repayUSDWad,
        uint256 seizedRawUSD,
        uint256 xMax
    )
        internal
        view
        returns (bool)
    {
        if (debtUSDWadPre <= xMax) return false;

        uint256 debtRemainingAtCap = debtUSDWadPre - xMax;
        if (minResidualDebtUSDWad != 0 && debtRemainingAtCap < minResidualDebtUSDWad) {
            return true;
        }
        if (minResidualCollateralUSDWad == 0 || repayUSDWad == 0) return false;

        // Keep the dust escape hatch conservative: only allow a full close when the capped
        // liquidation would still strand dust even after scaling the requested seize bundle down.
        uint256 seizedRawUSDAtCap = Math.mulDiv(seizedRawUSD, xMax, repayUSDWad);
        uint256 collRemainingAtCap = eligibleCollUSDWadPre > seizedRawUSDAtCap
            ? eligibleCollUSDWadPre - seizedRawUSDAtCap
            : 0;
        return collRemainingAtCap < minResidualCollateralUSDWad;
    }

    function _computeMinRepaymentWithK(
        uint256 equityUSDWad,
        uint256 maintUSDWad,
        uint256 hfTarget,
        uint256 liqBonus,
        uint256 kWad
    )
        internal
        pure
        returns (uint256 x)
    {
        uint256 BPS = Constants.BPS;
        uint256 WAD = Constants.WAD;

        // NOTE (CS-FLTP-3-007 / design): This routine is used to compute `xMax`, a *cap* on repayment:
        // liquidations revert if `repayUSD > xMax`. While rounding down would be marginally more
        // borrower-friendly, it can also make the cap too tight and block otherwise-valid liquidations
        // due to integer rounding across USD conversions and HF math.
        // We intentionally round up in key steps to favor liveness; the inflation is bounded to
        // dust-level amounts (a few wei of USD-WAD per liquidation).

        // H_wad = (hfTarget / BPS) * WAD
        uint256 H = Math.mulDiv(hfTarget, WAD, BPS, Math.Rounding.Ceil);
        // b_wad = (liqBonus / BPS) * WAD
        uint256 bWad = Math.mulDiv(liqBonus, WAD, BPS, Math.Rounding.Ceil);

        // Solve for repayment x (USD WAD) under the model:
        // - HF = equity / maintenance
        // - seize is bounded by repay*(1+b) (engine's fairness cap)
        // - equity decreases by b*x at the bound (repay x, seize x*(1+b))
        // - maintenance decreases by a*x at the bound
        //     where `aWad` = kDebtWad + (1+b)*kCollWad and is passed in as `kWad`
        // Equation: (E - b*x) / (M - a*x) = H
        // => x = (H*M - E) / (H*a - b)

        uint256 HM = Math.mulDiv(H, maintUSDWad, WAD, Math.Rounding.Ceil);
        if (HM <= equityUSDWad) return 0;
        uint256 num = HM - equityUSDWad;

        // haWad = H*a in WAD scale
        uint256 haWad = Math.mulDiv(H, kWad, WAD, Math.Rounding.Ceil);
        if (haWad <= bWad) return type(uint256).max;
        uint256 denomWad = haWad - bWad;

        x = Math.mulDiv(num, WAD, denomWad, Math.Rounding.Ceil);
    }

    /// @notice Compute minimum repayment x (USD WAD) to restore HF to `hfTarget` under the
    ///         bonus-constrained seizure model.
    /// @dev In position-level margining (MM-bps) mode, this uses a closed-form solution based on
    ///      pre-state account values:
    ///      - Equity E (USD WAD)
    ///      - Maintenance requirement M (USD WAD)
    ///      - Raw collateral value R (USD WAD; used to approximate average maintenance ratio)
    ///      and assumes seized collateral value is bounded by x*(1+b) and the repaid/seized bundles
    ///      have the account's average maintenance ratio.
    function computeMinRepayment(
        uint256 equityUSDWad,
        uint256 pnlAdjCollUSDWad,
        uint256 maintUSDWad,
        uint256 hfTarget,
        uint256 liqBonusBps_
    )
        public
        pure
        returns (uint256 x)
    {
        if (maintUSDWad == 0) return 0;

        uint256 WAD = Constants.WAD;

        // Approximate raw debt using equity + pnl-adjusted collateral:
        // equity = max(pnlAdjColl - rawDebt, 0)  => rawDebt ~= pnlAdjColl - equity (floored at 0)
        uint256 rawDebtUSDWad =
            pnlAdjCollUSDWad > equityUSDWad ? pnlAdjCollUSDWad - equityUSDWad : 0;
        uint256 notionalUSDWad = pnlAdjCollUSDWad + rawDebtUSDWad;
        if (notionalUSDWad == 0) return type(uint256).max;

        // Average maintenance ratio across long+short notionals: kAvg = M / notional
        uint256 kAvgWad = Math.mulDiv(maintUSDWad, WAD, notionalUSDWad, Math.Rounding.Ceil);
        // a = kDebt + (1+b)*kColl, approximating kDebt ~= kColl ~= kAvg => a ~= (2+b)*kAvg
        uint256 aWad = Math.mulDiv(
            kAvgWad, (2 * Constants.BPS) + liqBonusBps_, Constants.BPS, Math.Rounding.Ceil
        );

        return _computeMinRepaymentWithK(equityUSDWad, maintUSDWad, hfTarget, liqBonusBps_, aWad);
    }

    /// @notice Compute minimum repayment x (USD WAD) to restore HF to `hfTarget` under the
    ///         bonus-constrained seizure model for a given maintenance reduction factor `kWad`.
    /// @dev `kWad` is `aWad`: the maintenance reduction per repaid USD at the seize bound
    ///      (repay x, seize x*(1+b)), in WAD scale.
    function computeMinRepaymentWithK(
        uint256 equityUSDWad,
        uint256 maintUSDWad,
        uint256 hfTarget,
        uint256 liqBonusBps_,
        uint256 kWad
    )
        external
        pure
        returns (uint256 x)
    {
        return _computeMinRepaymentWithK(equityUSDWad, maintUSDWad, hfTarget, liqBonusBps_, kWad);
    }

    /// @notice RFQ: seize collateral and repay debts without a filler flash callback.
    function rfqFill(
        address user,
        DebtIn[] calldata debtIn,
        CollOut[] calldata collOut
    )
        external
        nonReentrant
    {
        _rfqFill(user, debtIn, collOut, false);
    }

    /// @notice RFQ: same as `rfqFill`, but allows skipping best-effort engine unwind hooks.
    /// @dev Useful when the liquidator expects to repay without needing held collateral released.
    function rfqFill(
        address user,
        DebtIn[] calldata debtIn,
        CollOut[] calldata collOut,
        bool skipUnwind
    )
        external
        nonReentrant
    {
        _rfqFill(user, debtIn, collOut, skipUnwind);
    }

    /// @notice Flash RFQ: seize collateral first, allow filler callback to trade, then repay.
    function rfqFillFlash(
        address user,
        DebtIn[] calldata debtIn,
        CollOut[] calldata collOut,
        bytes calldata data
    )
        external
        nonReentrant
    {
        _rfqFillFlash(user, debtIn, collOut, data, false);
    }

    /// @notice Flash RFQ: same as `rfqFillFlash`, but allows skipping best-effort engine unwind hooks.
    function rfqFillFlash(
        address user,
        DebtIn[] calldata debtIn,
        CollOut[] calldata collOut,
        bytes calldata data,
        bool skipUnwind
    )
        external
        nonReentrant
    {
        _rfqFillFlash(user, debtIn, collOut, data, skipUnwind);
    }

    /// @dev Snapshot the account state required by post-liquidation checks. Called before
    ///      any PM interaction so the values reflect the genuine pre-liquidation position.
    function _snapshotPreLiquidation(
        IConfigRegistry cfg,
        address user
    )
        internal
        view
        returns (PreLiquidationState memory pre)
    {
        (uint16 hfTarget, uint16 hfSafe) = _getAccountHFThresholds(cfg);
        AccountSnapshot memory snap = pm.valuesLens().accountValues(address(pm), user);
        pre = PreLiquidationState({
            hfTarget: hfTarget,
            hfSafe: hfSafe,
            equityUSDWad: snap.equityUSDWad,
            maintUSDWad: snap.maintUSDWad,
            debtUSDWad: snap.debtUSDWad,
            eligibleCollUSDWad: snap.collUSDWad
        });
    }

    function _rfqFill(
        address user,
        DebtIn[] calldata debtIn,
        CollOut[] calldata collOut,
        bool skipUnwind
    )
        internal
    {
        _requirePermissionedLiquidationIfPrivileged(user);
        IConfigRegistry cfg = pm.config();
        PreLiquidationState memory pre = _snapshotPreLiquidation(cfg, user);
        _requireBelowTargetHF(pre.equityUSDWad, pre.maintUSDWad, pre.hfTarget);

        (uint256 repayUSDWad, uint256 repayMaintUSDWad) =
            _runPmFlashLiquidation(user, cfg, debtIn, collOut, bytes(""), false, skipUnwind);
        _enforcePostHF(user, cfg, pre, repayUSDWad, repayMaintUSDWad, collOut);
        emit RFQFill(msg.sender, user, debtIn, collOut);
    }

    function _rfqFillFlash(
        address user,
        DebtIn[] calldata debtIn,
        CollOut[] calldata collOut,
        bytes calldata data,
        bool skipUnwind
    )
        internal
    {
        _requirePermissionedLiquidationIfPrivileged(user);
        IConfigRegistry cfg = pm.config();
        PreLiquidationState memory pre = _snapshotPreLiquidation(cfg, user);
        _requireBelowTargetHF(pre.equityUSDWad, pre.maintUSDWad, pre.hfTarget);

        (uint256 repayUSDWad, uint256 repayMaintUSDWad) =
            _runPmFlashLiquidation(user, cfg, debtIn, collOut, data, true, skipUnwind);

        _enforcePostHF(user, cfg, pre, repayUSDWad, repayMaintUSDWad, collOut);
        emit RFQFillFlash(msg.sender, user, debtIn, collOut, data);
    }

    function _runPmFlashLiquidation(
        address user,
        IConfigRegistry cfg,
        DebtIn[] calldata debtIn,
        CollOut[] calldata collOut,
        bytes memory data,
        bool callFillerCallback,
        bool skipUnwind
    )
        internal
        returns (uint256 repayUSDWad, uint256 repayMaintUSDWad)
    {
        // Validate and prepare arrays for PositionsManager flash liquidation hook.
        uint256 m = collOut.length;
        address[] memory seizeAssets = new address[](m);
        uint256[] memory seizeAmounts = new uint256[](m);
        for (uint256 j = 0; j < m; ++j) {
            uint256 amt = collOut[j].amount;
            if (amt == 0) revert RfqAmountZero();
            if (amt > type(uint128).max) revert RfqAmountExceedsUint128();
            address asset = collOut[j].asset;
            _requireSeizeEligible(cfg, asset);
            seizeAssets[j] = asset;
            seizeAmounts[j] = amt;
        }

        uint256 n = debtIn.length;
        address[] memory repayAssets = new address[](n);
        uint256[] memory repayAmounts = new uint256[](n);
        for (uint256 i = 0; i < n; ++i) {
            uint256 amt = debtIn[i].amount;
            if (amt == 0) revert RfqAmountZero();
            address asset = debtIn[i].asset;
            repayAssets[i] = asset;
            repayAmounts[i] = amt;
        }

        bytes memory pmCallbackData =
            abi.encode(msg.sender, user, callFillerCallback, abi.encode(debtIn, collOut, data));

        if (!skipUnwind) {
            // Strictly unwind modules that contribute to HF (active risk modules).
            // If a risk module cannot unwind, the liquidation should fail rather than proceed with
            // stale risk contributions that can break post-target HF checks.
            _unwindRiskModulesBeforeLiquidation(user);
        }

        uint256[] memory repayUsed;
        try pm.liquidateFlash(
            user,
            address(this), // seized assets recipient (this engine). splits the liquidation bonus between the filler and the protocol.
            seizeAssets,
            seizeAmounts,
            repayAssets,
            repayAmounts,
            pmCallbackData
        ) returns (
            uint256[] memory usedArr
        ) {
            repayUsed = usedArr;
        } catch (bytes memory reason) {
            if (_isTargetHfRevert(reason)) revert RfqHFPostTooLow();
            _revertWith(reason);
        }

        (repayUSDWad, repayMaintUSDWad) = _repayUsedValueUSDWadAndMaint(cfg, repayAssets, repayUsed);

        for (uint256 i = 0; i < n; ++i) {
            IERC20(repayAssets[i]).forceApprove(address(pm), 0);
        }
    }

    function _unwindRiskModulesBeforeLiquidation(address user) internal {
        address lens = address(pm.valuesLens());
        address[] memory mods;
        try IAccountValuesRouterEx(lens).getActiveRiskModules(address(pm), user) returns (
            address[] memory m
        ) {
            mods = m;
        } catch {
            return;
        }

        uint256 n = mods.length;
        if (n == 0) return;

        bytes memory hookData = abi.encode(_UNWIND_MAX_ORDERS);

        for (uint256 i = 0; i < n; ++i) {
            // Intentionally not wrapped in try/catch: active risk modules are assumed to be
            // liquidation-aware and must not block liveness.
            IEngineBeforeLiquidationHook(mods[i]).onBeforeLiquidation(address(pm), user, hookData);
        }
    }

    /// @dev PositionsManager callback during `liquidateFlash`.
    ///      Distributes seized collateral (retaining protocol share of the realized bonus,
    ///      pushing remainder to filler), runs filler callback, then pulls repayment funds
    ///      and approves PositionsManager to debit them from this engine.
    function onLiquidationFlash(bytes calldata callbackData) external override {
        if (msg.sender != address(pm)) revert RfqOnlyPositionsManager();

        (address filler, address user, bool callFillerCallback, bytes memory payload) =
            abi.decode(callbackData, (address, address, bool, bytes));
        (DebtIn[] memory debtIn, CollOut[] memory collOut, bytes memory data) =
            abi.decode(payload, (DebtIn[], CollOut[], bytes));

        _distributeSeizedCollateral(filler, user, debtIn, collOut);

        if (callFillerCallback) {
            // Execute filler callback (may trade seized collateral and set up repayment approvals).
            IFlash(filler).onFlash(data);
        }

        // Pull repayment funds from the filler and approve PM to pull them from this engine.
        uint256 n = debtIn.length;
        for (uint256 i = 0; i < n; ++i) {
            address asset = debtIn[i].asset;
            uint256 amt = debtIn[i].amount;
            if (amt == 0) revert RfqAmountZero();

            // Skip assets with no recorded debt to avoid unnecessary pulls.
            if (pm.debtShares(user, asset) != 0) {
                IERC20 token = IERC20(asset);
                uint256 balBefore = token.balanceOf(address(this));
                token.safeTransferFrom(filler, address(this), amt);
                uint256 pulled = token.balanceOf(address(this)) - balBefore;
                if (pulled == 0) revert RfqAmountZero();
                token.forceApprove(address(pm), pulled);
            }
        }
    }

    /// @notice Preview the collateral distribution for a prospective liquidation.
    ///         Returns per-asset filler and protocol token amounts that
    ///         `_distributeSeizedCollateral` would produce under current on-chain state.
    /// @dev    Useful for liquidator bots to predict exact received amounts before submitting
    ///         an `rfqFill` / `rfqFillFlash` transaction.
    /// @param  user     The borrower whose debt shares are checked (zero-share entries excluded).
    /// @param  debtIn   Declared repayment bundle (assets + amounts).
    /// @param  collOut  Declared collateral seizure bundle (assets + amounts).
    /// @return fillerAmounts   Tokens the filler would receive per `collOut` entry.
    /// @return protocolAmounts Tokens the protocol would retain per `collOut` entry.
    function previewDistribution(
        address user,
        DebtIn[] calldata debtIn,
        CollOut[] calldata collOut
    )
        external
        view
        returns (uint256[] memory fillerAmounts, uint256[] memory protocolAmounts)
    {
        return _computeDistribution(
            user, pm.config().oracleRouter(), protocolLiqSplitBps, debtIn, collOut
        );
    }

    /// @dev Core fee-split arithmetic shared by `previewDistribution` (view) and
    ///      `_distributeSeizedCollateral` (mutating).
    ///
    ///      For each `debtIn` entry, only assets where `pm.debtShares(user, asset) != 0`
    ///      contribute to `totalDebtInUSD`. This prevents a filler from padding `debtIn`
    ///      with non-owed priced assets to inflate `totalDebtInUSD` and zero out the
    ///      protocol fee (the engine and PM skip transfer/repay for zero-share assets,
    ///      so padding would otherwise be free).
    ///
    ///      Over-declaring on an asset the user *does* owe remains self-punishing: the
    ///      engine pulls the full declared amount from the filler, PM caps repayment to
    ///      actual debt, and any excess is retained by the engine.
    function _computeDistribution(
        address user,
        address oracle,
        uint256 splitBps,
        DebtIn[] memory debtIn,
        CollOut[] memory collOut
    )
        internal
        view
        returns (uint256[] memory fillerAmounts, uint256[] memory protocolAmounts)
    {
        uint256 m = collOut.length;
        fillerAmounts = new uint256[](m);
        protocolAmounts = new uint256[](m);

        if (splitBps == 0) {
            for (uint256 i = 0; i < m; ++i) {
                fillerAmounts[i] = collOut[i].amount;
            }
            return (fillerAmounts, protocolAmounts);
        }

        uint256[] memory collUSD = new uint256[](m);
        uint256 totalSeizeUSD;
        for (uint256 i = 0; i < m; ++i) {
            uint256 amt = collOut[i].amount;
            if (amt != 0) {
                uint256 usd = _priceAssetUSD(oracle, collOut[i].asset, amt, Math.Rounding.Ceil);
                collUSD[i] = usd;
                totalSeizeUSD += usd;
            }
        }

        uint256 totalDebtInUSD;
        uint256 n = debtIn.length;
        for (uint256 i = 0; i < n; ++i) {
            uint256 amt = debtIn[i].amount;
            if (amt != 0 && pm.debtShares(user, debtIn[i].asset) != 0) {
                totalDebtInUSD += _priceAssetUSD(oracle, debtIn[i].asset, amt, Math.Rounding.Floor);
            }
        }

        uint256 feeUSD;
        if (totalSeizeUSD > totalDebtInUSD) {
            feeUSD = Math.mulDiv(
                totalSeizeUSD - totalDebtInUSD, splitBps, Constants.BPS, Math.Rounding.Floor
            );
        }

        for (uint256 i = 0; i < m; ++i) {
            uint256 seized = collOut[i].amount;
            if (seized == 0) continue;

            uint256 feeTokens;
            if (feeUSD != 0 && totalSeizeUSD != 0) {
                uint256 assetFeeUSD =
                    Math.mulDiv(feeUSD, collUSD[i], totalSeizeUSD, Math.Rounding.Floor);
                feeTokens = Math.mulDiv(seized, assetFeeUSD, collUSD[i], Math.Rounding.Floor);
                if (feeTokens > seized) feeTokens = seized;
            }

            protocolAmounts[i] = feeTokens;
            fillerAmounts[i] = seized - feeTokens;
        }
    }

    /// @dev Distribute seized collateral between the filler and the protocol using the
    ///      fee-split logic in `_computeDistribution`. When `protocolLiqSplitBps == 0`
    ///      all seized tokens go directly to the filler (fast path, no oracle reads).
    function _distributeSeizedCollateral(
        address filler,
        address user,
        DebtIn[] memory debtIn,
        CollOut[] memory collOut
    )
        private
    {
        uint256 splitBps = protocolLiqSplitBps;
        uint256 m = collOut.length;

        if (splitBps == 0) {
            for (uint256 i = 0; i < m; ++i) {
                if (collOut[i].amount != 0) {
                    IERC20(collOut[i].asset).safeTransfer(filler, collOut[i].amount);
                }
            }
            return;
        }

        (uint256[] memory fillerAmounts,) =
            _computeDistribution(user, pm.config().oracleRouter(), splitBps, debtIn, collOut);

        for (uint256 i = 0; i < m; ++i) {
            if (fillerAmounts[i] != 0) {
                IERC20(collOut[i].asset).safeTransfer(filler, fillerAmounts[i]);
            }
        }
    }

    function _revertWith(bytes memory reason) private pure {
        assembly {
            revert(add(reason, 32), mload(reason))
        }
    }

    function _isTargetHfRevert(bytes memory reason) private pure returns (bool) {
        if (reason.length < 4) return false;
        bytes4 sel;
        assembly {
            sel := mload(add(reason, 32))
        }
        return sel == IPositionsManager.ftPositionManagerHealthFactorBelowTarget.selector;
    }

    function _repayUsedValueUSDWadAndMaint(
        IConfigRegistry cfg,
        address[] memory assets,
        uint256[] memory usedAmounts
    )
        private
        view
        returns (uint256 repayUSDWad, uint256 repayMaintUSDWad)
    {
        address oracleRouter = cfg.oracleRouter();
        uint256 n = assets.length;
        for (uint256 i = 0; i < n; ++i) {
            uint256 used = i < usedAmounts.length ? usedAmounts[i] : 0;
            if (used != 0) {
                address asset = assets[i];
                uint256 valueUSDWad = _priceAssetUSD(oracleRouter, asset, used, Math.Rounding.Floor);
                repayUSDWad += valueUSDWad;

                uint16 mmBps = cfg.getAssetCfg(asset).mmBps;
                if (mmBps != 0) {
                    repayMaintUSDWad += Math.mulDiv(valueUSDWad, mmBps, Constants.BPS);
                }
            }
        }
    }
}
