// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {ConfigRegistry} from "../ConfigRegistry.sol";
import {IAccountValuesLens} from "../interfaces/IAccountValuesLens.sol";
import {IPerpPnlView} from "../interfaces/IPerpPnlView.sol";
import {Constants} from "../utils/Constants.sol";
import {IPMViews} from "../interfaces/IPMViews.sol";

abstract contract PMStorage is IPMViews {
    uint256 internal constant WAD = Constants.WAD;
    uint256 internal constant BPS = Constants.BPS;

    struct DebtData {
        uint256 principal;
        uint256 indexAtOpenWad;
    }

    struct AssetState {
        uint256 borrowIndexWad;
        uint256 lastAccrual;
        uint256 cash;
        uint256 borrows;
        uint256 reserves;
        // Supplier interest index (additive, WAD) and total supplied principal (token units)
        uint256 supplyIndexWad;
        uint256 totalSupplied;
        // Unclaimable supplier interest bucket (asset units) accrued since last settlement
        uint256 supplierInterestAccrued;
        // FT rewards index paid per unit of supplier interest (WAD)
        uint256 ftPerInterestIndexWad;
        // FT index snapshot at epoch open (WAD) to bound prior-epoch settlement
        uint256 ftIndexAtEpochOpenWad;
        // Snapshot of supply index at last FT settlement (WAD)
        uint256 lastSupplyIndexSettledWad;
        // Snapshot of supply index at the previous epoch open (WAD) to split multi-epoch catch-ups
        uint256 prevSupplyIndexSettledWad;
        // Frozen base units for a settlement epoch (asset units) — denominator for FT per-interest index
        uint256 settlementBaseUnits;
        // Amount of base units already settled in the current epoch (asset units)
        uint256 settlementUnitsSettled;
        // Monotonic settlement epoch id (increments each epoch start)
        uint64 settleEpoch;
        // Underlying principal invested into Aave (asset units)
        uint256 idlePrincipal;
    }

    // --- PositionsManager storage (prefix must match exact declaration order) ---
    ConfigRegistry public config;
    // Skip fields before collateral/debt only if order matches; we include full block necessary
    address public admin;
    mapping(address => bool) public engines; // PositionsManager, RFQ, ftLP, OrderBook, AMM, etc

    // Core ledgers
    // user => token => {avail,hold}
    mapping(address => mapping(address => Balance)) public collateral;
    mapping(address => mapping(address => DebtData)) public debt; // user->asset->debt
    mapping(address => AssetState) public astate;

    // Per-account active asset sets (separate for clarity & simpler netting)
    mapping(address => address[]) internal _userCollAssets; // user -> assets with non-zero collateral
    mapping(address => mapping(address => uint256)) internal _collIx; // user->asset->index+1 (0 = absent)
    mapping(address => address[]) internal _userDebtAssets; // user -> assets with non-zero debt
    mapping(address => mapping(address => uint256)) internal _debtIx; // user->asset->index+1 (0 = absent)

    // ===== Perp PnL (view-only, liquidation/HF only) =====
    IPerpPnlView public perpPnlView; // single engine
    uint32 public perpPnlMaxAge = 60; // seconds; 0 = no staleness check

    // Externalized account valuation lens (upgradeable)
    IAccountValuesLens public valuesLens;

    // Emergency per-asset borrow pause (deposits/withdraws still governed by asset enabled flag)
    mapping(address => bool) public borrowPaused;
    // Emergency per-asset deposit/withdraw pause (orthogonal to `enabled` and borrowPaused)
    mapping(address => bool) public depositPaused;
    mapping(address => bool) public withdrawPaused;

    // ========== Supplier interest accounting (Aave-like) ==========
    // Per-user last synchronized index for an asset
    mapping(address => mapping(address => uint256)) public userSupplyIndexWad; // user->asset->index
    // Note: supplier interest is not claimable in-kind; FT settlement uses userInterestSettledUnits.
    // Historical per-user interest is derived on-the-fly via indices; no storage bucket needed.

    // System token used to settle supplier interest into FT collateral
    address public systemTokenFT;
    // FT sweep guardrails
    uint256 public ftDustThreshold; // max FT amount sweepable per call
    uint256 public ftRequiredCashBuffer; // min FT cash to retain after sweep
    // Per-user FT reward index snapshots per source asset (per interest unit)
    mapping(address => mapping(address => uint256)) public userFtPerInterestIndexWad; // user->asset->idx
    // Per-user eligible supplier interest units realized up to last settlement boundary
    mapping(address => mapping(address => uint256)) public userInterestSettledUnits; // user->asset->interestUnits
    // Per-user supply index snapshot at last FT settlement boundary applied to the user
    mapping(address => mapping(address => uint256)) public userSupplyIdxAtSettleWad; // user->asset->idx
    // Per-user last observed settlement epoch for srcAsset
    mapping(address => mapping(address => uint64)) public userSettleEpoch; // user->asset->epoch

    bytes32 public DOMAIN_SEPARATOR;
    mapping(address => mapping(bytes32 => uint256)) public noncesTyped;
    address public ftModule;
    address public metaActions;
    // Caps in token units (0 = no cap)
    mapping(address => uint256) public supplyCap; // asset => max (cash + borrows)
    mapping(address => uint256) public borrowCap; // asset => max borrows
    // Per-account, per-asset nominal debt cap in token units (0 = no cap)
    mapping(address => mapping(address => uint256)) public accountBorrowCap; // user => asset => cap

    address public idleModule;
}
