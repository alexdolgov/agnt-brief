// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {IPositionsManager} from "../interfaces/IPositionsManager.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IConfigRegistry} from "../interfaces/IConfigRegistry.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import {RiskLib} from "../utils/RiskLib.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Constants} from "../utils/Constants.sol";
import {IFlash} from "../interfaces/IFlash.sol";

/// @title RfqEngine
/// @notice External RFQ engine that rebalances user positions by repaying debt and seizing collateral
///         using PositionsManager's onlyEngine hooks. Keeps heavy RFQ logic out of PositionsManager.
contract RfqEngine is ReentrancyGuardTransient {
    using SafeERC20 for IERC20;
    IPositionsManager public immutable pm;

    // ===== Errors =====
    error RfqAmountZero();
    error RfqAmountExceedsUint128();
    error RfqHFNotBelowTarget();
    error RfqHFBadTarget();
    error RfqHFPostTooLow();
    error RfqHFPostTooHigh();

    constructor(address pm_) {
        pm = IPositionsManager(pm_);
    }

    function _repayFromFiller(address user, DebtIn[] calldata debtIn) internal {
        uint256 n = debtIn.length;
        for (uint256 i = 0; i < n; i++) {
            uint256 amt = debtIn[i].amount;
            if (amt == 0) revert RfqAmountZero();
            IERC20 token = IERC20(debtIn[i].asset);
            token.safeTransferFrom(msg.sender, address(this), amt);
            token.forceApprove(address(pm), amt);
            pm.repayFor(user, debtIn[i].asset, amt);
            token.forceApprove(address(pm), 0);
        }
    }

    function _requireBelowTargetHF(address user, uint16 hfTarget) internal view {
        (uint256 collUSD, uint256 debtUSD,) = pm.accountValues(user);
        uint16 hf = RiskLib.hfBps(collUSD, debtUSD);
        if (hf >= hfTarget) revert RfqHFNotBelowTarget();
    }

    function _enforcePostHF(
        address user,
        IConfigRegistry cfg,
        uint16 hfTarget
    )
        internal
        view
    {
        (uint256 collUSD, uint256 debtUSD, uint256 collUSDNoLTV) = pm.accountValues(user);
        bool fullRepayment = pm.userDebtAssets(user).length == 0;
        bool maxRepayMode =
            _needToMaxRepay(collUSD, debtUSD, collUSDNoLTV, hfTarget) || fullRepayment;

        uint16 hf = RiskLib.hfBps(collUSD, debtUSD);
        if (maxRepayMode) {
            if (hf < hfTarget) revert RfqHFBadTarget();
        } else {
            if (hf < hfTarget) revert RfqHFPostTooLow();
            if (hf > cfg.hfSafeBps()) revert RfqHFPostTooHigh();
        }
    }

    function _needToMaxRepay(
        uint256 collUSD,
        uint256 debtUSD,
        uint256 collUSDNoLTV,
        uint16 hfTarget
    )
        internal
        pure
        returns (bool)
    {
        if (debtUSD == 0) return false;
        uint256 WAD = Constants.WAD;
        uint256 BPS = Constants.BPS;
        uint256 targetHRWad = (uint256(hfTarget) * WAD) / BPS;
        // Already at/above target
        if (collUSDNoLTV * WAD >= targetHRWad * debtUSD) return false;
        if (collUSD == 0) return true;
        uint256 alphaWad = (collUSDNoLTV * WAD) / collUSD;
        if (targetHRWad <= alphaWad) return true;
        uint256 numer = (targetHRWad * debtUSD) / WAD;
        unchecked {
            numer -= collUSDNoLTV;
        }
        uint256 denom = targetHRWad - alphaWad;
        uint256 repayUsdWad = Math.mulDiv(numer, WAD, denom, Math.Rounding.Ceil);
        if (repayUsdWad > debtUSD) repayUsdWad = debtUSD;
        return repayUsdWad >= debtUSD;
    }

    struct DebtIn {
        address asset;
        uint256 amount;
    }

    struct CollOut {
        address asset;
        uint256 amount;
    }

    // ===== Events =====
    event RFQFill(address indexed filler, address indexed user, DebtIn[] debtIn, CollOut[] collOut);
    event RFQFillFlash(
        address indexed filler, address indexed user, DebtIn[] debtIn, CollOut[] collOut, bytes data
    );

    /// @notice Non-flash RFQ: repay debts then transfer specified collateral to the filler via internal ledger credit.
    function rfqFill(
        address user,
        DebtIn[] calldata debtIn,
        CollOut[] calldata collOut
    )
        external
        nonReentrant
    {
        // Precondition: user must be below target HF
        IConfigRegistry cfg = pm.config();
        uint16 hfTarget = cfg.hfTargetBps();
        _requireBelowTargetHF(user, hfTarget);

        // Repay debts from msg.sender on behalf of user
        _repayFromFiller(user, debtIn);

        uint256 m = collOut.length;
        for (uint256 j = 0; j < m; j++) {
            uint256 amt = collOut[j].amount;
            if (amt == 0) revert RfqAmountZero();
            if (amt > type(uint128).max) revert RfqAmountExceedsUint128();
            pm.debitAvail(user, collOut[j].asset, uint128(amt));
            pm.credit(msg.sender, collOut[j].asset, uint128(amt));
        }
        _enforcePostHF(user, cfg, hfTarget);
        emit RFQFill(msg.sender, user, debtIn, collOut);
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
        IConfigRegistry cfg = pm.config();
        uint16 hfTarget = cfg.hfTargetBps();
        // Precondition: user must be below target HF
        _requireBelowTargetHF(user, hfTarget);

        // Seize collateral and credit to filler (msg.sender) so they can trade in callback
        uint256 m = collOut.length;
        for (uint256 j = 0; j < m; j++) {
            uint256 amt = collOut[j].amount;
            if (amt == 0) revert RfqAmountZero();
            if (amt > type(uint128).max) revert RfqAmountExceedsUint128();
            pm.debitAvail(user, collOut[j].asset, uint128(amt));
            pm.credit(msg.sender, collOut[j].asset, uint128(amt));
        }

        // Execute filler callback
        IFlash(msg.sender).onFlash(data);

        // Repay debts from msg.sender on behalf of user
        _repayFromFiller(user, debtIn);

        _enforcePostHF(user, cfg, hfTarget);
        emit RFQFillFlash(msg.sender, user, debtIn, collOut, data);
    }
}
