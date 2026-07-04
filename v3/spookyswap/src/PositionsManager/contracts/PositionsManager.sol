// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IAccountValuesLens} from "./interfaces/IAccountValuesLens.sol";
import {IAccountValuesRouterEx} from "./interfaces/IAccountValuesRouterEx.sol";
import {ConfigRegistry} from "./ConfigRegistry.sol";
import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {IIRM} from "./interfaces/IIRM.sol";
import {
    ReentrancyGuardTransientUpgradeable
} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardTransientUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {PMLedgerBase} from "./utils/PMLedgerBase.sol";
import {RiskLib} from "./utils/RiskLib.sol";
import {IPerpPnlView} from "./interfaces/IPerpPnlView.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IPositionsManager} from "./interfaces/IPositionsManager.sol";

contract PositionsManager is
    PMLedgerBase,
    IPositionsManager,
    Initializable,
    ReentrancyGuardTransientUpgradeable
{
    using SafeERC20 for IERC20;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /*//////////////////////////////////////////////////////////////
                                TYPES
    //////////////////////////////////////////////////////////////*/

    /* ========== EIP-712 meta-transactions ========== */
    // External verifier for meta-signatures

    string private constant _NAME = "PositionsManager";
    string private constant _VERSION = "1";
    bytes32 private constant _EIP712_DOMAIN_TYPEHASH = keccak256(
        "EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"
    );

    bytes32 private constant _DEPOSIT_TYPEHASH = keccak256(
        "Deposit(address user,address asset,uint256 amount,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant _WITHDRAW_TYPEHASH = keccak256(
        "Withdraw(address user,address asset,uint256 amount,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant _BORROW_TYPEHASH = keccak256(
        "Borrow(address user,address asset,uint256 amount,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant _REPAY_TYPEHASH = keccak256(
        "Repay(address user,address asset,uint256 amount,uint256 nonce,uint256 deadline)"
    );

    function _useTypedNonce(address user, bytes32 typehash) internal returns (uint256 n) {
        n = noncesTyped[user][typehash];
        unchecked {
            noncesTyped[user][typehash] = n + 1;
        }
    }

    function _peekTypedNonce(
        address user,
        bytes32 typehash
    )
        internal
        view
        returns (uint256 n)
    {
        return noncesTyped[user][typehash];
    }

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    event AdminTransferred(address indexed prev, address indexed next);
    event EngineSet(address indexed m, bool ok);
    event Deposit(address indexed u, address indexed a, uint256 amt);
    event DepositWithPermit(address indexed u, address indexed a, uint256 amt, uint256 deadline);
    event Withdraw(address indexed u, address indexed a, uint256 amt);
    event Borrow(address indexed u, address indexed a, uint256 amt);
    event Repay(address indexed u, address indexed a, uint256 amt);
    event Accrue(address indexed a, uint256 newIndex);
    event DepositFor(
        address indexed from, address indexed beneficiary, address indexed asset, uint256 amount
    );
    event RepayFor(
        address indexed from, address indexed borrower, address indexed asset, uint256 amount
    );
    event PerpPnlViewSet(address indexed v);
    event PerpPnlMaxAgeSet(uint32 secs);
    event ValuesLensSet(address indexed lens);
    event BorrowPauseSet(address indexed asset, bool paused);
    event DepositPauseSet(address indexed asset, bool paused);
    event WithdrawPauseSet(address indexed asset, bool paused);
    event SystemTokenFTSet(address indexed ft);
    event FTModuleSet(address indexed module);
    event IdleModuleSet(address indexed module);
    event MetaActionsSet(address indexed module);

    event Skimmed(address indexed asset, uint256 delta, uint256 newCash);
    event FTSweepLimitsSet(uint256 dustThreshold, uint256 requiredBuffer);
    event FTSwept(address indexed to, uint256 amount);

    // Settlement primitives (orderbook engines)
    event HoldReserved(address indexed user, address indexed token, uint128 amt);
    event HoldReleasedToAvail(address indexed user, address indexed token, uint128 amt);
    event HoldReleased(address indexed user, address indexed token, uint128 amt);
    event Credited(address indexed user, address indexed asset, uint128 amt);
    event DebitedAvail(address indexed user, address indexed asset, uint128 amt);

    modifier onlyAdmin() {
        _onlyAdmin();
        _;
    }

    modifier onlyEngine() {
        _onlyEngine();
        _;
    }

    function setPerpPnlView(address v) external onlyAdmin {
        if (v == address(0)) revert ftPositionManagerPerpPnlZero();
        perpPnlView = IPerpPnlView(v);
        emit PerpPnlViewSet(v);
    }

    function setPerpPnlMaxAge(uint32 secs) external onlyAdmin {
        perpPnlMaxAge = secs;
        emit PerpPnlMaxAgeSet(secs);
    }

    function setValuesLens(address lens) external onlyAdmin {
        if (lens == address(0)) revert ftPositionManagerLensZero();
        valuesLens = IAccountValuesLens(lens);
        emit ValuesLensSet(lens);
    }

    function setBorrowPaused(address asset, bool paused) external onlyAdmin {
        borrowPaused[asset] = paused;
        emit BorrowPauseSet(asset, paused);
    }

    function setDepositPaused(address asset, bool paused) external onlyAdmin {
        depositPaused[asset] = paused;
        emit DepositPauseSet(asset, paused);
    }

    function setWithdrawPaused(address asset, bool paused) external onlyAdmin {
        withdrawPaused[asset] = paused;
        emit WithdrawPauseSet(asset, paused);
    }

    function setSystemTokenFT(address ft) external onlyAdmin {
        if (ft == address(0)) revert ftPositionManagerFtZero();
        systemTokenFT = ft;
        emit SystemTokenFTSet(ft);
    }

    // ========== Modules ==========
    function setFTModule(address m) external onlyAdmin {
        ftModule = m;
        emit FTModuleSet(m);
    }

    function setFTSweepLimits(
        uint256 dustThreshold,
        uint256 requiredBuffer
    )
        external
        onlyAdmin
    {
        ftDustThreshold = dustThreshold;
        ftRequiredCashBuffer = requiredBuffer;
        emit FTSweepLimitsSet(dustThreshold, requiredBuffer);
    }

    function initialize(address _cfg, address _admin) external initializer {
        __ReentrancyGuardTransient_init();
        config = ConfigRegistry(_cfg);
        admin = _admin;
        emit AdminTransferred(address(0), admin);

        // Preserve intended default for PnL staleness checks under proxy deployments.
        // Inline initializers are constructor-time and do not populate proxy storage.
        perpPnlMaxAge = 60; // seconds; 0 would disable staleness checks

        DOMAIN_SEPARATOR = keccak256(
            abi.encode(
                _EIP712_DOMAIN_TYPEHASH,
                keccak256(bytes(_NAME)),
                keccak256(bytes(_VERSION)),
                block.chainid,
                address(this)
            )
        );
    }
    // Meta-actions router authorization
    modifier onlyMetaActions() {
        _onlyMetaActions();
        _;
    }

    function _onlyAdmin() internal view {
        if (msg.sender != admin) revert ftPositionManagerOnlyOwner();
    }

    function _onlyEngine() internal view {
        if (!engines[msg.sender]) revert ftPositionManagerOnlyEngine();
    }

    function _onlyMetaActions() internal view {
        if (msg.sender != metaActions) revert ftPositionManagerOnlyOwner();
    }

    function setMetaActions(address m) external onlyAdmin {
        metaActions = m;
        emit MetaActionsSet(m);
    }

    /*//////////////////////////////////////////////////////////////
                           ADMIN CONFIGURATION
    //////////////////////////////////////////////////////////////*/

    event CapsSet(address indexed asset, uint256 supplyCap, uint256 borrowCap);
    event AccountBorrowCapSet(address indexed user, address indexed asset, uint256 capUnits);

    function setCaps(
        address asset,
        uint256 supplyCap_,
        uint256 borrowCap_
    )
        external
        onlyAdmin
    {
        supplyCap[asset] = supplyCap_;
        borrowCap[asset] = borrowCap_;
        emit CapsSet(asset, supplyCap_, borrowCap_);
    }

    /// @notice Set nominal per-account borrow cap for a specific asset (token units). 0 disables.
    function setAccountBorrowCap(
        address user,
        address asset,
        uint256 capUnits
    )
        external
        onlyAdmin
    {
        accountBorrowCap[user][asset] = capUnits;
        emit AccountBorrowCapSet(user, asset, capUnits);
    }

    function setAdmin(address _admin) external onlyAdmin {
        if (_admin == address(0)) revert ftPositionManagerZeroAdmin();
        emit AdminTransferred(admin, _admin);
        admin = _admin;
    }

    function setEngine(address m, bool ok) external onlyAdmin {
        if (m == address(0)) revert ftPositionManagerZeroAddress();
        engines[m] = ok;
        emit EngineSet(m, ok);
    }

    // ===== Meta entry points (called by MetaActions) =====
    function metaUseNonce(
        address user,
        bytes32 typehash
    )
        external
        onlyMetaActions
        returns (uint256 n)
    {
        n = _useTypedNonce(user, typehash);
    }

    function metaDeposit(
        address user,
        address asset,
        uint256 amount
    )
        external
        onlyMetaActions
        nonReentrant
    {
        _deposit(user, asset, amount);
    }

    function metaWithdraw(
        address user,
        address asset,
        uint256 amount
    )
        external
        onlyMetaActions
        nonReentrant
    {
        _withdraw(user, asset, amount);
    }

    function metaBorrow(
        address user,
        address asset,
        uint256 amount
    )
        external
        onlyMetaActions
        nonReentrant
    {
        _borrow(user, asset, amount);
    }

    function metaRepay(
        address user,
        address asset,
        uint256 amount
    )
        external
        onlyMetaActions
        nonReentrant
    {
        _repay(user, user, asset, amount);
    }

    /* ===================== Interest ===================== */
    function accrue(address asset) public {
        AssetState storage s = astate[asset];
        uint256 t = block.timestamp;

        if (s.lastAccrual == 0) {
            s.lastAccrual = t;
            if (s.borrowIndexWad == 0) s.borrowIndexWad = WAD;
            // opportunistically realize external idle yield if configured
            _harvestIdle(asset, false);
            emit Accrue(asset, s.borrowIndexWad);
            return;
        }

        if (t == s.lastAccrual) return;

        // realize external idle yield before borrow interest progression
        _harvestIdle(asset, false);

        // Short-circuit if no outstanding borrows: skip IRM call and math
        if (s.borrows == 0) {
            if (s.borrowIndexWad == 0) s.borrowIndexWad = WAD;
            s.lastAccrual = t;
            emit Accrue(asset, s.borrowIndexWad);
            return;
        }

        // Pull IRM and reserve factor, but do not gate accrual on `enabled`.
        // Disabled blocks new actions; interest keeps accruing to avoid free rides.
        ConfigRegistry.AssetCfg memory c = config.getAssetCfg(asset);

        uint256 dt = t - s.lastAccrual;
        uint256 denom = s.cash + s.borrows + s.idlePrincipal;
        if (denom == 0) {
            s.lastAccrual = t;
            emit Accrue(asset, s.borrowIndexWad);
            return;
        }

        // Utilization and borrow APR
        uint256 utilWad = (s.borrows * WAD) / denom;
        uint256 aprWad = IIRM(c.irm).borrowAPR(asset, utilWad);

        // Borrow index factor
        uint256 bFactorWad = WAD + ((aprWad * dt) / 365 days);

        // interest in token units since last accrual (based on global borrows)
        uint256 interestUnits = (s.borrows * (bFactorWad - WAD)) / WAD;

        // reserve factor (bps) portion is protocol profit (token units)
        uint256 reserveAdd = (interestUnits * c.reserveFactorBps) / BPS;

        // Update indexes
        s.borrowIndexWad = (s.borrowIndexWad * bFactorWad) / WAD;
        // grow borrows by full interest (keeps utilization consistent)
        s.borrows += interestUnits;
        // accrue protocol reserves as withdrawable tokens
        s.reserves += reserveAdd;

        // Distribute net interest to suppliers via cumulative supply index
        uint256 toSuppliers = interestUnits - reserveAdd;
        uint256 ts = s.totalSupplied;
        if (toSuppliers > 0) {
            if (ts > 0) {
                // deltaIndex = toSuppliers / totalSupplied, in WAD
                uint256 deltaIndex = (toSuppliers * WAD) / ts;
                s.supplyIndexWad += deltaIndex;
                // track unclaimable supplier interest bucket (asset units)
                s.supplierInterestAccrued += toSuppliers;
            } else {
                // No suppliers to distribute to; conservatively send to reserves
                s.reserves += toSuppliers;
            }
        }

        s.lastAccrual = t;
        emit Accrue(asset, s.borrowIndexWad);
    }

    /// @dev Interndal idle yield harvester. If `strict` is true, will revert on loss that exceeds reserves;
    ///      if false, will skip realizing negative delta and leave principal unchange.
    // ========== Idle module ==========
    function setIdleModule(address m) external onlyAdmin {
        idleModule = m;
        emit IdleModuleSet(m);
    }

    function _harvestIdle(address asset, bool strict) internal {
        if (idleModule == address(0)) return;
        (bool ok, bytes memory ret) = idleModule.delegatecall(
            abi.encodeWithSignature("harvestIdle(address,bool)", asset, strict)
        );
        if (!ok) {
            // Map IdleModule custom errors to PM custom errors
            if (ret.length >= 4) {
                bytes4 sel;
                assembly ("memory-safe") {
                    sel := mload(add(ret, 0x20))
                }
                // IdleLossGtReserves()
                if (sel == bytes4(keccak256("IdleLossGtReserves()"))) {
                    revert ftPositionManagerIdleLossExceedsReserves();
                }
            }
            if (ret.length > 0) {
                assembly ("memory-safe") {
                    revert(add(ret, 0x20), mload(ret))
                }
            }
            revert ftPositionManagerIdleDelegateFail();
        }
    }

    /// @notice Public/admin callable: realize idle yield now and reconcile potential losses using reserves.
    function harvestIdle(address asset) external onlyAdmin nonReentrant {
        _harvestIdle(asset, true);
    }

    /// @notice Rebalance idle funds for `asset` between on-hand cash and Aave according to config.
    ///         Deposits excess cash above buffer, or withdraws to refill buffer.
    function rebalanceIdle(address asset) external onlyAdmin nonReentrant {
        if (idleModule == address(0)) revert ftPositionManagerIdleNotEnabled();
        (bool ok, bytes memory ret) =
            idleModule.delegatecall(abi.encodeWithSignature("rebalanceIdle(address)", asset));
        if (!ok) {
            if (ret.length >= 4) {
                bytes4 sel;
                assembly ("memory-safe") {
                    sel := mload(add(ret, 0x20))
                }
                // IdleNotEnabled()
                if (sel == bytes4(keccak256("IdleNotEnabled()"))) {
                    revert ftPositionManagerIdleNotEnabled();
                }
                // IdlePoolZero()
                if (sel == bytes4(keccak256("IdlePoolZero()"))) {
                    revert ftPositionManagerIdlePoolZero();
                }
                // IdleATokenZero()
                if (sel == bytes4(keccak256("IdleATokenZero()"))) {
                    revert ftPositionManagerIdleATokenZero();
                }
                // IdleMinRebalance()
                if (sel == bytes4(keccak256("IdleMinRebalance()"))) {
                    revert ftPositionManagerIdleMinRebalance();
                }
                // IdleNothingToRebalance()
                if (sel == bytes4(keccak256("IdleNothingToRebalance()"))) {
                    revert ftPositionManagerIdleNothingToRebalance();
                }
            }
            if (ret.length > 0) {
                assembly ("memory-safe") {
                    revert(add(ret, 0x20), mload(ret))
                }
            }
            revert ftPositionManagerIdleDelegateFail();
        }
    }

    /// @dev Best-effort on-demand pull from Aave to raise `s.cash` to at least `minCash`.
    ///      Returns amount actually pulled. No minRebalance guard; used for user-facing liveness.
    function _pullFromIdleIfNeeded(
        address asset,
        uint256 minCash
    )
        internal
        returns (uint256 pulled)
    {
        if (idleModule == address(0)) return 0;
        (bool ok2, bytes memory ret2) = idleModule.delegatecall(
            abi.encodeWithSignature("pullFromIdleIfNeeded(address,uint256)", asset, minCash)
        );
        if (!ok2) {
            if (ret2.length > 0) {
                assembly ("memory-safe") {
                    revert(add(ret2, 0x20), mload(ret2))
                }
            }
            revert ftPositionManagerIdleDelegateFail();
        }
        if (ret2.length >= 32) {
            pulled = abi.decode(ret2, (uint256));
        }
    }

    /// @notice Preview the current borrow index for `asset` as of now (view-only).
    function previewBorrowIndexWad(address asset) public view returns (uint256 idxNow) {
        return _previewBorrowIndexWad(asset);
    }

    /* ===================== User flows ===================== */

    function _depositFrom(
        address from,
        address beneficiary,
        address asset,
        uint256 amt
    )
        internal
    {
        // 1) bring interest up-to-date under pre-action util
        accrue(asset);
        _syncFT(beneficiary, asset);
        _syncSupplier(beneficiary, asset);

        ConfigRegistry.AssetCfg memory c = config.getAssetCfg(asset);
        if (!c.enabled) revert ftPositionManagerAssetDisabled();
        if (depositPaused[asset]) revert ftPositionManagerDepositPaused();

        // Pull funds first; credit the actual received amount to defend against fee-on-transfer tokens
        uint256 balBefore = IERC20(asset).balanceOf(address(this));
        IERC20(asset).safeTransferFrom(from, address(this), amt);
        uint256 balAfter = IERC20(asset).balanceOf(address(this));
        uint256 received = balAfter - balBefore; // underflow-safe given transfer succeeded
        if (received == 0) revert ftPositionManagerAmountZero();

        // supply cap check using actual received units
        AssetState storage s = astate[asset];
        uint256 newTotalSupplyUnits = (s.cash + s.borrows + s.idlePrincipal) + received;
        uint256 cap = supplyCap[asset];
        if (cap != 0 && newTotalSupplyUnits > cap) revert ftPositionManagerSupplyCap();

        // Credit beneficiary with actual received amount
        collateral[beneficiary][asset].avail += received;
        s.cash += received;
        s.totalSupplied += received;
        // Align FT settlement baseline to beneficiary's current supply index
        _alignFTBaseline(beneficiary, asset);
        _touchCollAsset(beneficiary, asset);

        // Emit appropriate event with actual credited amount
        if (from == beneficiary) {
            emit Deposit(beneficiary, asset, received);
        } else {
            emit DepositFor(from, beneficiary, asset, received);
        }
    }

    function _deposit(address user, address asset, uint256 amt) internal {
        _depositFrom(user, user, asset, amt);
    }

    function deposit(address asset, uint256 amt) external nonReentrant {
        if (amt == 0) revert ftPositionManagerAmountZero();
        _deposit(msg.sender, asset, amt);
    }

    function depositFor(
        address beneficiary,
        address asset,
        uint256 amount
    )
        external
        nonReentrant
    {
        if (amount == 0) revert ftPositionManagerAmountZero();
        if (beneficiary == address(0)) revert ftPositionManagerZeroAddress();
        _depositFrom(msg.sender, beneficiary, asset, amount);
    }

    function depositWithPermit(
        address asset,
        address user,
        uint256 amount,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    )
        external
        nonReentrant
    {
        // 1) Grant allowance to escrow via ERC-2612
        IERC20Permit(asset).permit(user, address(this), value, deadline, v, r, s);

        _deposit(user, asset, amount);
    }

    function _withdraw(address user, address asset, uint256 amt) internal {
        // Values lens is required for solvency checks
        if (address(valuesLens) == address(0)) revert ftPositionManagerLensZero();
        // 1) accrue first so HF check uses fresh debt/indices & pre-action util
        accrue(asset);
        _syncBorrower(user, asset);
        _syncFT(user, asset);
        _syncSupplier(user, asset);

        if (withdrawPaused[asset]) revert ftPositionManagerWithdrawPaused();
        if (!_canWithdraw(user, asset, amt)) revert ftPositionManagerHealthFactor();
        // Attempt on-demand idle pull if local cash is insufficient
        AssetState storage s = astate[asset];
        if (s.cash < amt) {
            _pullFromIdleIfNeeded(asset, amt);
        }
        if (s.cash < amt) revert ftPositionManagerInsufficientLiquidity();

        collateral[user][asset].avail -= amt;
        s.cash -= amt;
        s.totalSupplied -= amt;
        IERC20(asset).safeTransfer(user, amt);

        _touchCollAsset(user, asset);
        // Align FT settlement baseline to user's current supply index after withdrawal
        _alignFTBaseline(user, asset);
        emit Withdraw(user, asset, amt);
    }

    function withdraw(address asset, uint256 amt) external nonReentrant {
        if (amt == 0) revert ftPositionManagerAmountZero();
        _withdraw(msg.sender, asset, amt);
    }

    function _borrow(address user, address asset, uint256 amt) internal {
        ConfigRegistry.AssetCfg memory c = config.getAssetCfg(asset);
        if (!c.enabled) revert ftPositionManagerAssetDisabled();
        if (borrowPaused[asset]) revert ftPositionManagerBorrowPaused();
        // Values lens is required for solvency and USD headroom checks
        if (address(valuesLens) == address(0)) revert ftPositionManagerLensZero();

        accrue(asset);
        _syncBorrower(user, asset);

        AssetState storage s = astate[asset];
        // Attempt on-demand idle pull if local cash is insufficient
        if (s.cash < amt) {
            _pullFromIdleIfNeeded(asset, amt);
        }
        if (s.cash < amt) revert ftPositionManagerInsufficientLiquidity();

        // enforce borrow cap
        uint256 newBorrows = s.borrows + amt;
        uint256 bcap = borrowCap[asset];
        if (bcap != 0 && newBorrows > bcap) revert ftPositionManagerBorrowCap();

        DebtData storage d = debt[user][asset];
        // Enforce per-account nominal cap for this asset (token units)
        uint256 acctCap = accountBorrowCap[user][asset];
        if (acctCap > 0) {
            uint256 projected = d.principal + amt;
            if (projected > acctCap) revert ftPositionManagerAccountDebtCap();
        }

        // Enforce per-account USD cap via the values lens (router-aware).
        // Compute USD delta for this borrow and ensure router headroom covers it.
        uint256 px = _oracle().priceUSD(asset); // USD WAD
        uint256 dec = 10 ** uint256(IERC20Metadata(asset).decimals());
        // USD WAD; use ceil division to avoid understating USD delta
        uint256 usdDelta = Math.mulDiv(amt, px, dec, Math.Rounding.Ceil); // USD WAD (ceil)
        if (usdDelta > 0) {
            uint256 headroomUSD;
            // Optional interface: if valuesLens supports remainingBorrowCapacityUSD, use it; otherwise skip.
            try IAccountValuesRouterEx(address(valuesLens))
                .remainingBorrowCapacityUSD(address(this), user) returns (
                uint256 h
            ) {
                headroomUSD = h;
            } catch {
                headroomUSD = type(uint256).max;
            }
            if (usdDelta > headroomUSD) revert ftPositionManagerAccountUSDCap();
        }
        if (d.principal == 0) d.indexAtOpenWad = s.borrowIndexWad;
        d.principal += amt;

        s.borrows += amt;
        s.cash -= amt;
        _touchDebtAsset(user, asset);

        (uint256 collUSD, uint256 debtUSD,) = accountValues(user);

        if (RiskLib.hfBps(collUSD, debtUSD) < config.hfSafeBps()) {
            revert ftPositionManagerHealthFactor();
        }
        IERC20(asset).safeTransfer(user, amt);
        emit Borrow(user, asset, amt);
    }

    function borrow(address asset, uint256 amt) external nonReentrant {
        if (amt == 0) revert ftPositionManagerAmountZero();
        _borrow(msg.sender, asset, amt);
    }

    function _repay(address from, address user, address asset, uint256 amt) internal {
        accrue(asset);
        _syncBorrower(user, asset);

        DebtData storage d = debt[user][asset];
        if (d.principal == 0) revert ftPositionManagerNoDebt();

        // Pull funds to PM bucket; use actual received to remain robust to fee-on-transfer tokens
        uint256 want = amt > d.principal ? d.principal : amt;
        uint256 balBefore = IERC20(asset).balanceOf(address(this));
        IERC20(asset).safeTransferFrom(from, address(this), want);
        uint256 balAfter = IERC20(asset).balanceOf(address(this));
        uint256 received = balAfter - balBefore; // underflow-safe if transfer succeeded
        if (received == 0) {
            // Nothing received; avoid altering debt state
            revert ftPositionManagerAmountZero();
        }

        uint256 used = received > d.principal ? d.principal : received;
        d.principal -= used;

        AssetState storage s = astate[asset];
        s.borrows -= used;
        s.cash += received;

        _touchDebtAsset(user, asset);

        // Emit appropriate event
        if (from == user) {
            emit Repay(user, asset, used);
        } else {
            emit RepayFor(from, user, asset, used);
        }
    }

    function repay(address asset, uint256 amt) external nonReentrant {
        if (amt == 0) revert ftPositionManagerAmountZero();
        _repay(msg.sender, msg.sender, asset, amt);
    }

    function repayFor(
        address borrower,
        address asset,
        uint256 amount
    )
        external
        nonReentrant
    {
        if (borrower == address(0)) revert ftPositionManagerZeroAddress();
        _repay(msg.sender, borrower, asset, amount);
    }

    /// @dev Computes withdraw feasibility using LTV haircut on the withdrawn piece.
    /// Note: USD conversions and LTV application use integer division and round down,
    /// which can allow withdrawing a minimal extra unit in edge cases. The global
    /// HF gate on withdraw and borrow still enforces solvency.
    function _canWithdraw(
        address user,
        address asset,
        uint256 amt
    )
        internal
        view
        returns (bool)
    {
        if (collateral[user][asset].avail < amt) return false;

        (uint256 collUSD, uint256 debtUSD,) = accountValues(user);

        // If truly flat (no debt), HF is irrelevant.
        if (debtUSD == 0) return true;

        // Value (USD) of the piece we're trying to withdraw, after LTV
        uint256 px = _oracle().priceUSD(asset);
        ConfigRegistry.AssetCfg memory c = config.getAssetCfg(asset);
        uint256 dec = 10 ** uint256(IERC20Metadata(asset).decimals());
        // Conservative rounding: ceil both the units->USD and LTV application to avoid underestimation
        uint256 valueUSD = Math.mulDiv(amt, px, dec, Math.Rounding.Ceil);
        uint256 deltaUSD = Math.mulDiv(valueUSD, c.ltvBps, BPS, Math.Rounding.Ceil);

        if (collUSD < deltaUSD) return false;
        collUSD -= deltaUSD;

        return collUSD >= debtUSD;
    }

    /* ===================== Account valuation ===================== */

    function accountValues(address user)
        public
        view
        returns (uint256 collUSD, uint256 debtUSD, uint256 collUSDNoLTV)
    {
        (collUSD, debtUSD, collUSDNoLTV) = valuesLens.accountValues(address(this), user);

        if (address(perpPnlView) != address(0)) {
            (int256 pnl, uint64 ts) = perpPnlView.pnlUSD(user);
            if (perpPnlMaxAge == 0 || (ts != 0 && uint64(block.timestamp) - ts <= perpPnlMaxAge)) {
                if (pnl < 0) {
                    debtUSD += uint256(-pnl);
                }
            }
        }
    }

    /* ===================== RFQ-specific (removed direct seize) ===================== */

    /* ============= Helpers ============= */

    // admin can withdraw accrued reserves (protocol profit) when liquid
    function withdrawReserves(
        address asset,
        address to,
        uint256 amount
    )
        external
        onlyAdmin
        nonReentrant
    {
        if (to == address(0)) revert ftPositionManagerZeroTo();
        accrue(asset); // keep economics consistent
        AssetState storage s = astate[asset];
        if (amount == 0) revert ftPositionManagerZeroAmount();
        if (s.reserves < amount) revert ftPositionManagerInsufficientReserves();
        if (s.cash < amount) revert ftPositionManagerInsufficientCash();

        // Effects
        s.reserves -= amount;
        s.cash -= amount;

        // Interactions
        IERC20(asset).safeTransfer(to, amount);
    }

    /// @notice Reconcile `s.cash` to on-chain token balance for donated or direct-transferred tokens.
    ///         Does not credit to any user. Disabled for systemTokenFT by default for safety.
    function skim(address asset) external onlyAdmin nonReentrant {
        if (asset == systemTokenFT) revert ftPositionManagerSkimFtDisabled();
        uint256 bal = IERC20(asset).balanceOf(address(this));
        AssetState storage s = astate[asset];
        if (bal <= s.cash) revert ftPositionManagerNoSurplus();
        uint256 delta = bal - s.cash;
        s.cash = bal; // bring cash in-line with actual balance
        emit Skimmed(asset, delta, s.cash);
    }

    // admin can sweep FT residuals (e.g., rounding dust) when liquid; trusted admin operation
    function sweepFT(address to, uint256 amount) external onlyAdmin nonReentrant {
        if (systemTokenFT == address(0)) revert ftPositionManagerFtNotSet();
        if (to == address(0)) revert ftPositionManagerZeroTo();
        if (amount == 0) revert ftPositionManagerZeroAmount();
        AssetState storage sft = astate[systemTokenFT];
        if (amount > ftDustThreshold) revert ftPositionManagerSweepFTExceedsDust();
        if (sft.cash < amount) revert ftPositionManagerInsufficientCash();
        if (sft.cash - amount < ftRequiredCashBuffer) revert ftPositionManagerSweepFTBelowBuffer();
        sft.cash -= amount;
        IERC20(systemTokenFT).safeTransfer(to, amount);
        emit FTSwept(to, amount);
    }

    /// @notice View your global balance for a token.
    function getBalance(
        address user,
        address token
    )
        external
        view
        returns (uint256 avail, uint256 _hold)
    {
        Balance memory b = collateral[user][token];
        return (b.avail, b.hold);
    }

    /* ===================== Views ===================== */

    function userCollateralAssets(address user) external view returns (address[] memory) {
        return _userCollAssets[user];
    }

    function userDebtAssets(address user) external view returns (address[] memory) {
        return _userDebtAssets[user];
    }

    // surplusOf read-only helper removed to reduce runtime size

    /*//////////////////////////////////////////////////////////////
                        ORDERBOOK-ONLY SETTLEMENT HOOKS
    //////////////////////////////////////////////////////////////*/

    /// @notice Reserve `amt` of `token` for `user` on order placement.
    ///         (Moves avail -> hold; requires sufficient avail.)
    function hold(address user, address token, uint128 amt) external onlyEngine nonReentrant {
        accrue(token);
        _syncFT(user, token);
        _syncSupplier(user, token);
        Balance storage b = collateral[user][token];
        b.avail -= amt; // underflow-safe (revert) if insufficient
        b.hold += amt;
        _touchCollAsset(user, token);
        emit HoldReserved(user, token, amt);
    }

    /// @notice Release a reservation back to avail (on cancel/expire).
    function releaseHoldToAvail(
        address user,
        address token,
        uint128 amt
    )
        external
        onlyEngine
        nonReentrant
    {
        accrue(token);
        _syncFT(user, token);
        _syncSupplier(user, token);
        Balance storage b = collateral[user][token];
        b.hold -= amt;
        b.avail += amt;
        _touchCollAsset(user, token);
        emit HoldReleasedToAvail(user, token, amt);
    }

    /// @notice Consume `amt` of held `token` at settlement (maker/taker consumption).
    ///         (Reduces hold; counterparties are credited via credit()).
    function releaseHold(
        address user,
        address token,
        uint128 amt
    )
        external
        onlyEngine
        nonReentrant
    {
        accrue(token);
        _syncFT(user, token);
        _syncSupplier(user, token);
        Balance storage b = collateral[user][token];
        b.hold -= amt;
        astate[token].totalSupplied -= amt;
        _touchCollAsset(user, token);
        emit HoldReleased(user, token, amt);
    }

    // Direct seize to engine is deprecated; RFQ paths use debitAvail/credit instead.

    /// @notice Credit `amt` of `token` to `user`â€™s available balance (post-settlement).
    function credit(
        address user,
        address asset,
        uint128 amt
    )
        external
        onlyEngine
        nonReentrant
    {
        accrue(asset);
        _syncFT(user, asset);
        _syncSupplier(user, asset);
        collateral[user][asset].avail += amt;
        astate[asset].totalSupplied += amt;
        // Align FT settlement baseline to user's current supply index
        _alignFTBaseline(user, asset);
        _touchCollAsset(user, asset);
        emit Credited(user, asset, amt);
    }

    /// @notice Debit `amt` from `user`â€™s available balance (fees, etc.).
    function debitAvail(
        address user,
        address asset,
        uint128 amt
    )
        external
        onlyEngine
        nonReentrant
    {
        accrue(asset);
        _syncFT(user, asset);
        _syncSupplier(user, asset);
        collateral[user][asset].avail -= amt;
        astate[asset].totalSupplied -= amt;
        // Align FT settlement baseline to user's current supply index
        _alignFTBaseline(user, asset);
        _touchCollAsset(user, asset);
        emit DebitedAvail(user, asset, amt);
    }

    /* ===================== Supplier interest helpers ===================== */
    /// @notice Preview supplier interest units (non-claimable) for user/asset.
    function supplyInterestOf(address user, address asset) external view returns (uint256) {
        // Preview-only: total supplier interest units implied by indices since user's last sync.
        // Not claimable in-kind; FT settlement uses epoch fences and userInterestSettledUnits.
        uint256 idxGlobal = astate[asset].supplyIndexWad;
        uint256 idxUser = userSupplyIndexWad[user][asset];
        if (idxGlobal <= idxUser) return 0;
        Balance memory b = collateral[user][asset];
        uint256 principal = b.avail + b.hold;
        if (principal == 0) return 0;
        uint256 delta = idxGlobal - idxUser;
        return (principal * delta) / WAD;
    }

    /// Deprecated read-only helpers are intentionally removed to reduce runtime size.

    // FT preview helpers moved to LendingLens to reduce PM size

    /// @notice Settle supplier interest for `asset` by depositing FT and withdrawing asset tokens.
    /// Distributes FT proportionally per unit of supplier interest outstanding at settlement time.
    function settleSupplyInterestWithFT(
        address asset,
        uint256 expectedOutAsset,
        uint256 ftAmountIn
    )
        external
        onlyAdmin
        nonReentrant
    {
        if (ftModule == address(0)) revert ftPositionManagerFtNotSet();
        if (systemTokenFT == address(0)) revert ftPositionManagerFtNotSet();
        if (!(expectedOutAsset > 0 && ftAmountIn > 0)) revert ftPositionManagerAmountZero();
        accrue(asset);
        (bool ok, bytes memory ret) = ftModule.delegatecall(
            abi.encodeWithSignature(
                "settleSupplyInterestWithFT(address,uint256,uint256)",
                asset,
                expectedOutAsset,
                ftAmountIn
            )
        );
        if (!ok) {
            // Map FTModule custom errors to PM custom errors
            if (ret.length >= 4) {
                bytes4 sel;
                assembly ("memory-safe") {
                    sel := mload(add(ret, 0x20))
                }
                // ExceedsEpoch()
                if (sel == bytes4(keccak256("ExceedsEpoch()"))) {
                    revert ftPositionManagerExceedsSupplierInterest();
                }
                // InsufficientCash()
                if (sel == bytes4(keccak256("InsufficientCash()"))) {
                    revert ftPositionManagerInsufficientCash();
                }
                // NoSupplierInterest()
                if (sel == bytes4(keccak256("NoSupplierInterest()"))) {
                    revert ftPositionManagerNoSupplierInterest();
                }
            }
            if (ret.length > 0) {
                assembly ("memory-safe") {
                    revert(add(ret, 0x20), mload(ret))
                }
            }
            revert ftPositionManagerDelegateFail();
        }
    }

    // ----- FT rewards lazy credit -----
    function _syncFT(address user, address srcAsset) internal {
        if (systemTokenFT == address(0) || ftModule == address(0)) return;
        (bool ok2, bytes memory ret2) = ftModule.delegatecall(
            abi.encodeWithSignature("syncFT(address,address)", user, srcAsset)
        );
        if (!ok2) {
            if (ret2.length > 0) {
                assembly ("memory-safe") {
                    revert(add(ret2, 0x20), mload(ret2))
                }
            }
            revert ftPositionManagerDelegateFail();
        }
    }
}
