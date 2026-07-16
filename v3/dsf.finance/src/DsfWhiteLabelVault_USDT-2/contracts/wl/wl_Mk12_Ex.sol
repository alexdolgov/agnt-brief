// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/* ──────────────────────────────────────────────────────────────────────────────
 * DSF White-Label Vault (WL) — accounting of deposit *principal* in USDT (settleIndex)
 *
 * @author Andrei Averin — CTO dsf.finance
 *
 * Public methods are identical to DSF by signature:
 *   - deposit(uint256[POOL_ASSETS] memory amounts)
 *   - withdraw(uint256 lpShares, uint128 tokenIndex)
 *
 * Calculation flow:
 *   1) projectGrossUSDT        = previewTotalGrossPerToken()[settleIndex] for the entire WL
 *   2) projectAccruedFeeUSDT   = accumulated HWM-fee of WL (not yet collected)
 *   3) totalHoldings           = projectGrossUSDT - projectAccruedFeeUSDT
 *   4) LPprice                 = totalHoldings / totalSupply
 *   5) userNet                 = wlShares * LPprice
 *
 * Principal accounting (in USDT):
 *   - Deposit:    _userDepositBody[user] += availableToWithdrawal(wlMint)
 *   - Withdrawal: we calculate availableToWithdrawal(wlShares),
 *                 split it into principal / profit parts,
 *                 and reduce _userDepositBody[user] only by the "principal" part.
 *   - Transfer:   a proportional amount of _userDepositBody is moved from `from` → `to`.
 *
 * User operation history (always in USDT):
 *
 *   opCode - kind + mode + status:
 *
 *     kind:   0=deposit,1=withdraw,2=transferOut,3=transferIn
 *     mode:   0=Fast,1=Smart
 *     status: 0=Pending,1=Completed,2=Cancelled
 *
 *   Fast (Completed):
 *     opCode = kind + 1                // 1..4
 *
 *   Smart:
 *     opCode = (kind + 1) * 10 + status
 *     // 10 = deposit Smart Pending
 *     // 11 = deposit Smart Completed
 *     // 12 = deposit Smart Cancelled
 *     // 20 = withdraw Smart Pending
 *     // 21 = withdraw Smart Completed
 *     // 22 = withdraw Smart Cancelled
 *
 *   event UserTx(
 *       address indexed user,
 *       uint8   opCode,     // combined kind+mode+status
 *       uint8   tokenIndex, // 0..2 = DAI/USDC/USDT, 255 = NONE/USDT-only
 *       uint64  timestamp,
 *       uint64  requestId,  // 0 = no smart request
 *       uint256 amountUSDT, // NET in USDT
 *       uint256 amountToken,// raw token amount (if applicable)
 *       uint256 wlShares,   // WL shares involved in this operation
 *       address indexed otherParty // transfer counterparty
 *   );
 *
 * Future income (CRV + CVX + others):
 *   - External contract futureIncomeSource returns futureIncome() — GROSS income
 *     for the entire dsfLp.totalSupply(), denominated in USDT.
 *   - WL GROSS share:   futureGrossWL = futureTotal * dsfLpBalance(WL) / dsfLpTotalSupply
 *   - WL users NET share (after WL-fee):
 *         totalFutureIncomeUsersUSDT = futureGrossWL * (DENOM - partnerFeeBps) / DENOM
 *   - Per-user share:
 *         userFutureUSDT = totalFutureIncomeUsersUSDT * wlUser / totalSupply
 *
 * Smart requests:
 *   - createSmartDeposit(amounts)        — tokens are pulled from the user immediately,
 *                                         recorded as Pending (в стейте только payload + requestId).
 *   - completeSmartDeposits(address[])  — anyone may batch-complete multiple deposits;
 *                                         WL shares are minted to users.
 *   - cancelSmartDeposit()              — deletes the request and returns tokens to the user.
 *
 *   - createSmartWithdraw(wlShares, idx) — creates a withdrawal request for wlShares into tokenIndex.
 *   - completeSmartWithdraws(address[])  — anyone may batch-complete withdrawals.
 *   - cancelSmartWithdraw()              — deletes the request (WL shares remain with the user).
 *
 * IMPORTANT: slippage protection is handled inside core DSF contracts.
 * WL only forwards parameters.
 * ──────────────────────────────────────────────────────────────────────────── */

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/* ── Mini-interfaces to the already deployed DSF ───────────────────────────── */

interface IDSF {
    enum WithdrawalType { Base, OneCoin }

    function deposit(uint256[3] calldata amounts) external returns (uint256 lpMinted);

    function withdraw(
        uint256 lpShares,
        uint256[3] calldata minAmounts,
        WithdrawalType withdrawalType,
        uint128 tokenIndex
    ) external;

    function defaultWithdrawPid() external view returns (uint256);
    function poolInfo(uint256 pid)
        external
        view
        returns (address strategy, uint256 startTime, uint256 lpShares);
}

// Only to keep enum in the signature identical to DSF
interface IStrategy {
    enum WithdrawalType { Base, OneCoin }
}

// DSF Strategy: one-coin preview by LP share (1e18)
interface IStrategyView {
    function calcWithdrawOneCoin(uint256 lpShareRatio1e18, uint128 tokenIndex)
        external
        view
        returns (uint256 tokenAmount);
}

/**
 * @dev External contract that provides total future income for DSF LP (CRV+CVX etc.)
 *      in USDT.
 */
interface IFutureIncome {
    function futureIncome() external view returns (uint256);
}

contract DsfWhiteLabelVault_USDT is ERC20, Ownable, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // ════════════════════════════════════════════════════════════════════════
    //  STORAGE / CONSTANTS
    // ════════════════════════════════════════════════════════════════════════

    uint8   public constant POOL_ASSETS = 3;
    uint256 public constant DENOM       = 10_000;   // bps
    uint256 public constant USER_COOLDOWN_BLOCKS = 1;

    /// @notice Special token index value for “not applicable”
    uint8 public constant TOKEN_INDEX_NONE = type(uint8).max; // 255

    /// @notice Threshold for HWM skim, increase in WL GROSS price in bps
    uint256 public minSkimGainBps = 1; // 0.01%

    // External addresses
    IDSF   public immutable dsf;
    IERC20 public immutable dsfLp;
    IERC20[POOL_ASSETS] public tokens;     // [DAI, USDC, USDT]

    /// @notice Settle token index (0..2) — default USDT (usually 2)
    uint128 public settleIndex;

    /// @notice WL owner treasury (receives commission in DSF LP)
    address public principalTreasury;

    /// @notice WL owner fee (HWM fee), in bps (e.g., 3000 = 30%)
    uint16 public partnerFeeBps;

    /// @notice External source of future income (in USDT)
    IFutureIncome public futureIncomeSource;

    // HWM and anti-MEV accounting
    /// @notice HWM at the GROSS price of one WL share in USDT (1e18 precision)
    uint256 public HWM_grossPricePerShareUSDT;
    uint256 public lastNavTouchBlock;        // NAV protection within a single unit
    mapping(address => uint256) public lastUserActionBlock; // per-user cooldown

    /// @notice Snapshot of the “collected” commission (fee) in USDT — for analytical purposes only
    uint256 public ownerFeeSnapshotUSDT;

    /// @notice User deposit amount in USDT (NET)
    mapping(address => uint256) private _userDepositBody;

    /// @notice Global smart-request counter
    uint64 private _lastRequestId;

    // ── Smart applications ─────────────────────────────────────────────────────

    enum RequestStatus { None, Pending, Completed, Cancelled }

    struct SmartDeposit {
        uint64        requestId;   // 0 = no active application
        uint256[3]    amounts;     // tokens are already on WL
    }

    struct SmartWithdraw {
        uint64        requestId;   // 0 = no active application
        uint256       wlShares;
        uint128       tokenIndex;  // 0..2
    }

    mapping(address => SmartDeposit) private _smartDeposits;
    mapping(address => SmartWithdraw) private _smartWithdraws;

    // To select all applications
    address[] private _allSmartDepositUsers;
    mapping(address => bool) private _seenSmartDepositUser;

    address[] private _allSmartWithdrawUsers;
    mapping(address => bool) private _seenSmartWithdrawUser;

    // ════════════════════════════════════════════════════════════════════════
    //  EVENTS
    // ════════════════════════════════════════════════════════════════════════

    event SkimFeeUSDT(uint256 feeUSDT, uint256 dsfLpFeeToTreasury, uint256 newHwmGrossPricePerShareUSDT);

    event UpdatePartnerFeeBps(uint16 newBps);
    event UpdatePrincipalTreasury(address newTreasury);
    event UpdateMinSkimGainBps(uint256 newMinBps);
    event UpdateFutureIncomeSource(address newSource);

    /// @notice Deposit body update: old → new (in USDT)
    event UserDepositBodyUpdate(address indexed user, uint256 oldDepositBodyUSDT, uint256 newDepositBodyUSDT);

    /// @notice Universal user operations history event
    event UserTx(
        address indexed user,
        uint8   opCode,     // see encoding scheme in header
        uint8   tokenIndex, // 0..2 = DAI/USDC/USDT, 255 = NONE/settle-only
        uint64  timestamp,
        uint64  requestId,  // 0 = no smart request
        uint256 amountUSDT, // NET in USDT
        uint256 amountToken,// raw token amount
        uint256 wlShares,   // WL shares involved
        address indexed otherParty // transfer counterparty
    );

    // ════════════════════════════════════════════════════════════════════════
    //  CONSTRUCTOR
    // ════════════════════════════════════════════════════════════════════════

    constructor(
        address _dsf,
        address _dsfLp,
        address[POOL_ASSETS] memory _tokens,
        address _principalTreasury,
        uint16  _partnerFeeBps,
        uint128 _settleIndex,
        address _futureIncomeSource   // can be address(0) if not configured yet
    )
        Ownable(msg.sender)
        ERC20("DSF WL Shares", "DSFWL")
    {
        require(_dsf != address(0) && _dsfLp != address(0), "WL: bad DSF addrs");
        require(_principalTreasury != address(0), "WL: bad treasury");
        require(_partnerFeeBps <= DENOM, "WL: fee too high");
        require(_settleIndex < POOL_ASSETS, "WL: bad settle index");

        dsf = IDSF(_dsf);
        dsfLp = IERC20(_dsfLp);
        principalTreasury = _principalTreasury;
        partnerFeeBps = _partnerFeeBps;
        settleIndex = _settleIndex;

        for (uint i = 0; i < POOL_ASSETS;) {
            require(_tokens[i] != address(0), "WL: bad token");
            tokens[i] = IERC20(_tokens[i]);
            unchecked { ++i; }
        }

        if (_futureIncomeSource != address(0)) {
            futureIncomeSource = IFutureIncome(_futureIncomeSource);
        }

        HWM_grossPricePerShareUSDT = 0; // will be charged upon the first deposit
    }

    // ════════════════════════════════════════════════════════════════════════
    //  INTERNAL UTILS / MODIFIERS
    // ════════════════════════════════════════════════════════════════════════

    function _touchNav() internal {
        lastNavTouchBlock = block.number;
    }

    modifier userCooldown() {
        require(block.number > lastUserActionBlock[msg.sender] + USER_COOLDOWN_BLOCKS, "WL: cooldown");
        _;
        lastUserActionBlock[msg.sender] = block.number;
    }

    function _nextRequestId() internal returns (uint64) {
        _lastRequestId += 1;
        return _lastRequestId;
    }

    /// @dev Encode (kind, mode, status) → opCode для события UserTx.
    /// kind:   0=deposit,1=withdraw,2=transferOut,3=transferIn
    /// mode:   0=Fast,1=Smart
    /// status: 0=Pending,1=Completed,2=Cancelled
    function _encodeOp(
        uint8 kind,
        uint8 mode,
        uint8 status
    ) internal pure returns (uint8) {
        if (mode == 0) {
            // Fast operations (always Completed in the contract)
            // 1=deposit,2=withdraw,3=transferOut,4=transferIn
            return kind + 1;
        } else {
            // Smart
            // 10/11/12, 20/21/22
            return uint8((kind + 1) * 10 + status);
        }
    }

    /// @dev Determine whether the deposit was “one token,” and if so, which one and how many.
    function _detectSingleToken(uint256[POOL_ASSETS] memory amounts)
        internal
        pure
        returns (uint8 tokenIdx, uint256 amountToken)
    {
        uint256 nonzeroCount;
        uint256 lastIndex;

        for (uint256 i = 0; i < POOL_ASSETS;) {
            if (amounts[i] > 0) {
                nonzeroCount++;
                lastIndex = i;
                amountToken = amounts[i];
            }
            unchecked { ++i; }
        }

        if (nonzeroCount == 1) {
            tokenIdx = uint8(lastIndex);
        } else {
            tokenIdx = TOKEN_INDEX_NONE;
            amountToken = 0;
        }
    }

    /// @dev GROSS miscalculation: how many of each token [0..2] will WL receive,
    ///      if ALL dsfLp is withdrawn via defaultWithdrawPid as one-coin.
    function _previewTotalGrossPerToken()
        internal
        view
        returns (uint256[POOL_ASSETS] memory grossAll)
    {
        uint256 lpBalance = dsfLp.balanceOf(address(this));
        if (lpBalance == 0) return grossAll;

        uint256 pid = dsf.defaultWithdrawPid();
        (address strat,, uint256 poolLpShares) = dsf.poolInfo(pid);
        if (poolLpShares == 0) return grossAll;

        uint256 ratio1e18 = (lpBalance * 1e18) / poolLpShares;
        if (ratio1e18 == 0) return grossAll;

        for (uint i = 0; i < POOL_ASSETS;) {
            grossAll[i] = IStrategyView(strat).calcWithdrawOneCoin(ratio1e18, uint128(i));
            unchecked { ++i; }
        }
    }

    // ════════════════════════════════════════════════════════════════════════
    //  PROJECT / GLOBAL READ-ONLY (NAV, FEES, FUTURE INCOME)
    // ════════════════════════════════════════════════════════════════════════

    /// @dev GROSS NAV of the entire WL project in USDT (before WL fees)
    function projectGrossUSDT() public view returns (uint256) {
        uint256[POOL_ASSETS] memory grossAll = _previewTotalGrossPerToken();
        return grossAll[settleIndex];
    }

    /// @dev GROSS price of 1 WL share for the project in USDT, 1e18 precision
    function projectSharePriceGrossUSDT() public view returns (uint256) {
        uint256 ts = totalSupply();
        if (ts == 0) return 0;
        uint256 g = projectGrossUSDT();
        return (g * 1e18) / ts;
    }

    /// @dev Accumulated HWM-fia of the project in USDT (not yet collected in the treasury)
    function projectAccruedFeeUSDT() public view returns (uint256) {
        uint256 ts = totalSupply();
        if (ts == 0 || HWM_grossPricePerShareUSDT == 0) return 0;

        uint256 priceGross1e18 = projectSharePriceGrossUSDT();
        if (priceGross1e18 <= HWM_grossPricePerShareUSDT) return 0;

        // Profit per 1 WL share (GROSS), 1e18 precision
        uint256 profitPerShare1e18 = priceGross1e18 - HWM_grossPricePerShareUSDT;

        // Total WL profit in USDT:
        uint256 profitTotalUSDT = (profitPerShare1e18 * ts) / 1e18;

        // WL-fee share of this profit
        return (profitTotalUSDT * partnerFeeBps) / DENOM;
    }

    /// @notice NET total holdings of all WL users in USDT
    function totalHoldings() public view returns (uint256) {
        uint256 g = projectGrossUSDT();
        uint256 f = projectAccruedFeeUSDT();
        return g > f ? g - f : 0;
    }

    /// @notice NET price of 1 WL share (LPprice) in USDT, 1e18 precision
    function LPprice() public view returns (uint256) {
        uint256 ts = totalSupply();
        if (ts == 0) return 0;
        return (totalHoldings() * 1e18) / ts;
    }

    /// @dev Internal GROSS future income WL (before WL fees) in USDT
    function _totalFutureIncomeGrossUSDT() internal view returns (uint256) {
        IFutureIncome src = futureIncomeSource;
        if (address(src) == address(0)) return 0;

        uint256 futureTotal = src.futureIncome(); // revenue for the entire dsfLp.totalSupply()
        if (futureTotal == 0) return 0;

        uint256 lpBalance     = dsfLp.balanceOf(address(this));
        uint256 lpTotalSupply = dsfLp.totalSupply();
        if (lpBalance == 0 || lpTotalSupply == 0) return 0;

        // WL's GROSS share in the total future income of DSF LP
        return (futureTotal * lpBalance) / lpTotalSupply;
    }

    /// @notice NET future income of all WL users (after WL fee), in USDT
    function totalFutureIncomeUsersUSDT() public view returns (uint256) {
        uint256 gross = _totalFutureIncomeGrossUSDT();
        if (gross == 0) return 0;
        // User share: (DENOM - partnerFeeBps) / DENOM
        return (gross * (DENOM - partnerFeeBps)) / DENOM;
    }

    /// @notice Future revenue split: users / WL owner (estimate), in USDT
    function futureIncomeSplitUSDT()
        external
        view
        returns (uint256 usersFutureUSDT, uint256 ownerFutureUSDT)
    {
        uint256 gross = _totalFutureIncomeGrossUSDT();
        if (gross == 0) return (0, 0);

        ownerFutureUSDT = (gross * partnerFeeBps) / DENOM;
        usersFutureUSDT = gross - ownerFutureUSDT;
    }

    // ════════════════════════════════════════════════════════════════════════
    //  USER: READ-ONLY (NAV, BODY, PROFIT, HISTORY, SMART REQUESTS)
    // ════════════════════════════════════════════════════════════════════════

    /// @notice NET value of `wlShares` in USDT (which can be withdrawn now)
    function availableToWithdrawal(uint256 wlShares) public view returns (uint256) {
        return availableToWithdrawalPerToken(wlShares, settleIndex);
    }

    /// @notice NET value of `wlShares` in each of the three tokens (DAI/USDC/USDT)
    function availableToWithdrawalPerToken(uint256 wlShares)
        public
        view
        returns (uint256[POOL_ASSETS] memory out)
    {
        if (wlShares == 0) return out;
        for (uint256 i = 0; i < POOL_ASSETS;) {
            out[i] = availableToWithdrawalPerToken(wlShares, uint128(i));
            unchecked { ++i; }
        }
    }

    /// @notice NET value of `wlShares` in a specific token (DAI/USDC/USDT),
    ///         taking into account the WL HWM fee. Optimized: we only count 1 token.
    function availableToWithdrawalPerToken(uint256 wlShares, uint128 tokenIndex)
        public
        view
        returns (uint256 out)
    {
        if (wlShares == 0) return 0;
        require(tokenIndex < POOL_ASSETS, "WL: bad token index");

        uint256 ts = totalSupply();
        if (ts == 0) return 0;

        (uint256 grossUSDT, uint256 grossToken) = _previewGrossUSDTAndToken(tokenIndex);
        if (grossUSDT == 0 || grossToken == 0) return 0;

        // If HWM has not yet been set or the price has not increased, there is no commission, net = gross
        if (HWM_grossPricePerShareUSDT == 0) {
            // There is no commission yet
            uint256 netAllTokenNoFee = grossToken;
            return (wlShares * netAllTokenNoFee) / ts;
        }

        uint256 priceGross1e18 = (grossUSDT * 1e18) / ts;
        if (priceGross1e18 <= HWM_grossPricePerShareUSDT) {
            // price increase does not exceed HWM → no uncrystallized commission
            uint256 netAllTokenNoFee2 = grossToken;
            return (wlShares * netAllTokenNoFee2) / ts;
        }

        // Profit per 1 WL share (GROSS), 1e18
        uint256 profitPerShare1e18 = priceGross1e18 - HWM_grossPricePerShareUSDT;
        uint256 profitTotalUSDT    = (profitPerShare1e18 * ts) / 1e18;
        uint256 feeUSDT            = (profitTotalUSDT * partnerFeeBps) / DENOM;

        if (feeUSDT == 0 || grossUSDT <= feeUSDT) {
            // in fact, there is no net income, or everything has been “eaten up” by commissions
            return 0;
        }

        uint256 netUSDTAll = grossUSDT - feeUSDT;

        // netFactor = NET/GROSS in USDT → transfer to a specific token
        uint256 netAllToken = (grossToken * netUSDTAll) / grossUSDT;

        // now proportional to the share of wlShares from totalSupply
        out = (wlShares * netAllToken) / ts;
    }

    /// @notice Current NET value of the user (what can be withdrawn now) in USDT
    function userAvailableWithdraw(address user) external view returns (uint256) {
        return availableToWithdrawal(balanceOf(user));
    }

    /// @notice Current NET value of the user based on three tokens (DAI/USDC/USDT)
    function userAvailableWithdrawPerToken(address user)
        external
        view
        returns (uint256[POOL_ASSETS] memory)
    {
        return availableToWithdrawalPerToken(balanceOf(user));
    }

    /// @notice User deposit amount in USDT
    function userDepositBody(address user) external view returns (uint256) {
        return _userDepositBody[user];
    }

    /// @notice User's current NET income in USDT = NAV - deposit principal
    function userIncomeUSDT(address user) external view returns (uint256) {
        uint256 bal = balanceOf(user);
        if (bal == 0) return 0;
        uint256 totalUSDT = availableToWithdrawal(bal);
        uint256 body      = _userDepositBody[user];
        return totalUSDT > body ? totalUSDT - body : 0;
    }

    /// @notice Future income of a specific user (NET, after WL fees) in USDT
    function userFutureIncomeUSDT(address user) public view returns (uint256) {
        uint256 wl = balanceOf(user);
        if (wl == 0) return 0;

        uint256 ts = totalSupply();
        if (ts == 0) return 0;

        uint256 totalUsersFuture = totalFutureIncomeUsersUSDT();
        return (wl * totalUsersFuture) / ts;
    }

    /// @notice User's current smart requests (deposit/withdrawal)
    function userSmartRequests(address user)
        external
        view
        returns (SmartDeposit memory depositReq, SmartWithdraw memory withdrawReq)
    {
        depositReq  = _smartDeposits[user];
        withdrawReq = _smartWithdraws[user];
    }

    /// @notice Owner-level aggregated data: fees (realized/unrealized),
    ///         future income, and DSF LP balances (WL + treasury) with USDT value.
    function ownerData()
        external
        view
        returns (
            // Project-level NAV
            uint256 grossAllUSDT,          // GROSS NAV of WL in USDT
            uint256 netAllUSDT,            // NET NAV of WL in USDT (totalHoldings)
            uint256 wlSharePriceNet1e18,   // LPprice()  (NET WL share price)
            uint256 wlSharePriceGross1e18, // projectSharePriceGrossUSDT()

            // HWM-fee (owner's income from WL-fee)
            uint256 realizedFeeUSDT,       // already crystallized (ownerFeeSnapshotUSDT)
            uint256 uncrystallizedFeeUSDT, // projectAccruedFeeUSDT() — not yet skimmed fee
            uint256 totalOwnerFeeUSDT,     // realized + unrealized

            // Future income (CRV/CVX/etc) share of owner
            uint256 futureOwnerIncomeUSDT,     // owner’s share of future income
            uint256 totalOwnerWithFutureUSDT,  // totalOwnerFeeUSDT + futureOwnerIncomeUSDT

            // WL fee settings
            uint16  wlFeeBps,                  // partnerFeeBps (e.g. 3000 = 30%)

            // DSF LP balances and their USDT-equivalent
            uint256 dsfLpAtWL,                // dsfLp.balanceOf(address(this))
            uint256 dsfLpAtTreasury,          // dsfLp.balanceOf(principalTreasury)
            uint256 dsfLpPricePerLpUSDT1e18,  // price of 1 DSF LP in USDT (1e18)
            uint256 dsfLpValueWLUSDT,         // dsfLpAtWL * price
            uint256 dsfLpValueTreasuryUSDT    // dsfLpAtTreasury * price
        )
    {
        // NAV
        grossAllUSDT          = projectGrossUSDT();
        netAllUSDT            = totalHoldings();
        wlSharePriceNet1e18   = LPprice();
        wlSharePriceGross1e18 = projectSharePriceGrossUSDT();

        // HWM-fee
        realizedFeeUSDT       = ownerFeeSnapshotUSDT;
        uncrystallizedFeeUSDT = projectAccruedFeeUSDT();
        totalOwnerFeeUSDT     = realizedFeeUSDT + uncrystallizedFeeUSDT;

        // Future income (GROSS) for WL in USDT
        uint256 futureGrossWL = _totalFutureIncomeGrossUSDT();
        if (futureGrossWL == 0) {
            futureOwnerIncomeUSDT  = 0;
        } else {
            // owner share = futureGrossWL * partnerFeeBps / DENOM
            futureOwnerIncomeUSDT = (futureGrossWL * partnerFeeBps) / DENOM;
        }

        totalOwnerWithFutureUSDT = totalOwnerFeeUSDT + futureOwnerIncomeUSDT;

        // WL fee settings
        wlFeeBps = partnerFeeBps;
        
        // DSF LP balances
        dsfLpAtWL       = dsfLp.balanceOf(address(this));
        dsfLpAtTreasury = dsfLp.balanceOf(principalTreasury);

        dsfLpPricePerLpUSDT1e18 = _dsfLpPricePerLpUSDT1e18();

        if (dsfLpPricePerLpUSDT1e18 > 0) {
            dsfLpValueWLUSDT       = (dsfLpAtWL * dsfLpPricePerLpUSDT1e18) / 1e18;
            dsfLpValueTreasuryUSDT = (dsfLpAtTreasury * dsfLpPricePerLpUSDT1e18) / 1e18;
        } else {
            dsfLpValueWLUSDT       = 0;
            dsfLpValueTreasuryUSDT = 0;
        }
    }

    /// @notice Full snapshot per user: WL balance, deposit body, NAV, future income,
    /// tokens, approvals, ETH balance, and smart requests.
    function userData(address user)
        external
        view
        returns (
            uint256 wlBalance,
            uint256 depositBodyUSDT,
            uint256 netNowUSDT,
            uint256 futureIncomeUSDT,
            uint256 totalWithFutureUSDT,
            uint256[POOL_ASSETS] memory perTokenNet,
            uint256[POOL_ASSETS] memory walletTokenBalances,
            uint256[POOL_ASSETS] memory walletTokenAllowances,
            uint256 ethBalance,
            SmartDeposit memory depositReq,
            SmartWithdraw memory withdrawReq
        )
    {
        depositBodyUSDT = _userDepositBody[user];

        // Balances and approvals for three tokens
        for (uint256 i = 0; i < POOL_ASSETS;) {
            IERC20 t = tokens[i];
            walletTokenBalances[i]   = t.balanceOf(user);
            walletTokenAllowances[i] = t.allowance(user, address(this));
            unchecked { ++i; }
        }

        // ETH balance
        ethBalance = user.balance;

        // Smart requests
        depositReq  = _smartDeposits[user];
        withdrawReq = _smartWithdraws[user];

        wlBalance = balanceOf(user);
        if (wlBalance == 0) {
            // perTokenNet, netNowUSDT, futureIncomeUSDT, totalWithFutureUSDT remain zero
            return (
                wlBalance,
                depositBodyUSDT,
                0,
                0,
                0,
                perTokenNet,
                walletTokenBalances,
                walletTokenAllowances,
                ethBalance,
                depositReq,
                withdrawReq
            );
        }

        // Current NET in USDT
        netNowUSDT = availableToWithdrawal(wlBalance);

        // User's future income (NET) in USDT
        futureIncomeUSDT = userFutureIncomeUSDT(user);

        // Total current + future
        totalWithFutureUSDT = netNowUSDT + futureIncomeUSDT;

        // NET on three tokens
        perTokenNet = availableToWithdrawalPerToken(wlBalance);

        return (
            wlBalance,
            depositBodyUSDT,
            netNowUSDT,
            futureIncomeUSDT,
            totalWithFutureUSDT,
            perTokenNet,
            walletTokenBalances,
            walletTokenAllowances,
            ethBalance,
            depositReq,
            withdrawReq
        );
    }

    // ════════════════════════════════════════════════════════════════════════
    //  USER: ACTIONS (DIRECT DEPOSIT / WITHDRAW / TRANSFERS)
    // ════════════════════════════════════════════════════════════════════════

    /// @notice Deposit in WL (signature identical to DSF)
    function deposit(uint256[POOL_ASSETS] calldata amounts)
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        _trySkim();

        // helper for history: determine whether the user entered through a single token
        (uint8 depTokenIndex, uint256 depAmountToken) = _detectSingleToken(amounts);

        // 1) Collect tokens from the user
        for (uint i = 0; i < POOL_ASSETS;) {
            if (amounts[i] > 0) {
                tokens[i].safeTransferFrom(msg.sender, address(this), amounts[i]);
            }
            unchecked { ++i; }
        }
        // 2) Approve DSF and call deposit
        for (uint i = 0; i < POOL_ASSETS;) {
            if (amounts[i] > 0) {
                tokens[i].forceApprove(address(dsf), 0);
                tokens[i].forceApprove(address(dsf), amounts[i]);
            }
            unchecked { ++i; }
        }

        uint256 lpBefore = dsfLp.balanceOf(address(this));
        dsf.deposit(amounts); // all checks for slippage within DSF
        uint256 lpAfter  = dsfLp.balanceOf(address(this));
        uint256 lpGained = lpAfter - lpBefore;
        require(lpGained > 0, "WL: no dsf lp");

        // 3) Mint WL shares proportional to DSF LP
        uint256 tsBefore = totalSupply();
        uint256 wlMint;
        if (tsBefore == 0) {
            wlMint = lpGained; // start 1:1 WL↔LP
        } else {
            wlMint = (tsBefore * lpGained) / lpBefore;
        }
        _mint(msg.sender, wlMint);

        // 4) We fix the deposit amount in USDT at the current NET price.
        uint256 addedBodyUSDT = availableToWithdrawal(wlMint);
        if (addedBodyUSDT > 0) {
            uint256 oldBody = _userDepositBody[msg.sender];
            uint256 newBody = oldBody + addedBodyUSDT;
            _userDepositBody[msg.sender] = newBody;

            emit UserDepositBodyUpdate(msg.sender, oldBody, newBody);

            // History: deposit (kind = 0), Fast, Completed
            uint8 opCode = _encodeOp(0, 0, 1);

            // History: deposit (kind = 0), Fast, Completed
            emit UserTx(
                msg.sender,
                opCode,
                depTokenIndex,    // tokenIndex (single-token or NONE)
                uint64(block.timestamp),
                0,                // requestId = 0
                addedBodyUSDT,
                depAmountToken,
                wlMint,
                address(0)
            );
        }

        // 5) If this is the first deposit, we set the HWM at the GROSS price.
        if (tsBefore == 0) {
            HWM_grossPricePerShareUSDT = projectSharePriceGrossUSDT();
        }

        _touchNav();
    }

    /// @notice Withdrawal from WL (signature identical to DSF, but only OneCoin)
    /// @param lpShares Number of WL shares to burn (name left for compatibility with DSF)
    /// @param tokenIndex Index for OneCoin (0..2)
    function withdraw(
        uint256 lpShares,
        uint128 tokenIndex
    )
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        require(tokenIndex < POOL_ASSETS, "WL: bad token index");

        _trySkim();

        require(lpShares > 0 && balanceOf(msg.sender) >= lpShares, "WL: bad shares");

        // NET view in USDT for these WL shares
        uint256 previewOutNetUSDT = availableToWithdrawal(lpShares);

        // Divide by the deposit amount / profit
        uint256 userBody = _userDepositBody[msg.sender];
        uint256 depositBodyPortionUSDT = previewOutNetUSDT <= userBody ? previewOutNetUSDT : userBody;

        if (depositBodyPortionUSDT > 0) {
            uint256 oldBody = userBody;
            uint256 newBody = oldBody - depositBodyPortionUSDT;
            _userDepositBody[msg.sender] = newBody;
            emit UserDepositBodyUpdate(msg.sender, oldBody, newBody);
        }

        uint256 tsBefore    = totalSupply();
        uint256 lpBalBefore = dsfLp.balanceOf(address(this));
        require(tsBefore > 0 && lpBalBefore > 0, "WL: empty");

        // Proportional translation WL → DSF LP
        uint256 dsfLpRedeem = (lpBalBefore * lpShares) / tsBefore;
        require(dsfLpRedeem > 0, "WL: no redeem");

        _burn(msg.sender, lpShares);

        uint256[POOL_ASSETS] memory balBefore;
        for (uint i = 0; i < POOL_ASSETS;) {
            balBefore[i] = IERC20(tokens[i]).balanceOf(address(this));
            unchecked { ++i; }
        }

        dsfLp.forceApprove(address(dsf), 0);
        dsfLp.forceApprove(address(dsf), dsfLpRedeem);

        uint256[POOL_ASSETS] memory minOut;

        // All slippage conditions and minOut inside DSF
        dsf.withdraw(
            dsfLpRedeem,
            minOut,
            IDSF.WithdrawalType.OneCoin,
            tokenIndex
        );

        uint256[POOL_ASSETS] memory got;
        for (uint i = 0; i < POOL_ASSETS;) {
            uint256 balAfter = IERC20(tokens[i]).balanceOf(address(this));
            uint256 delta = balAfter - balBefore[i];
            got[i] = delta;
            if (delta > 0) tokens[i].safeTransfer(msg.sender, delta);
            unchecked { ++i; }
        }

        _touchNav();

        uint256 amountToken = got[uint256(tokenIndex)];

        // History: withdraw (kind = 1), Fast, Completed
        uint8 opCode = _encodeOp(1, 0, 1);
        emit UserTx(
            msg.sender,
            opCode,
            uint8(tokenIndex),
            uint64(block.timestamp),
            0,                    // requestId
            previewOutNetUSDT,
            amountToken,
            lpShares,
            address(0)
        );
    }

    /// @notice ERC20 v5 hook: mint/burn/transfer — before balance update
    /// Here, the deposit body is redistributed during transfer and the history is logged.
    function _update(address from, address to, uint256 value) internal override {
        // Mint
        if (from == address(0)) {
            super._update(from, to, value);
            return;
        }

        // Burn
        if (to == address(0)) {
            super._update(from, to, value);
            return;
        }

        // Regular transfer: transfer the proportional amount of the deposit + log in USDT
        if (value > 0) {
            uint256 fromBalanceBefore = balanceOf(from);
            uint256 fromBody          = _userDepositBody[from];

            // Proportional transfer of deposit body from → to
            if (fromBalanceBefore > 0 && fromBody > 0) {
                uint256 movedBody = (fromBody * value) / fromBalanceBefore;
                if (movedBody > 0) {
                    uint256 oldFromBody = fromBody;
                    uint256 oldToBody   = _userDepositBody[to];

                    _userDepositBody[from] = fromBody - movedBody;
                    _userDepositBody[to]   = oldToBody + movedBody;

                    emit UserDepositBodyUpdate(from, oldFromBody, _userDepositBody[from]);
                    emit UserDepositBodyUpdate(to,   oldToBody,   _userDepositBody[to]);
                }
            }

            // Log the transfer amount in USDT at the current WL NET price
            uint256 transferNetUSDT = availableToWithdrawal(value);
            if (transferNetUSDT > 0) {
                uint8 settleTokenIndex = uint8(settleIndex);

                // OUT - from
                uint8 opOut = _encodeOp(2, 0, 1); // transferOut, Fast, Completed
                emit UserTx(
                    from,
                    opOut,
                    settleTokenIndex,         // settle token index
                    uint64(block.timestamp),
                    0,                        // requestId
                    transferNetUSDT,
                    0,
                    value,
                    to
                );
                // IN - to
                uint8 opIn = _encodeOp(3, 0, 1);  // transferIn, Fast, Completed
                emit UserTx(
                    to,
                    opIn,
                    settleTokenIndex,
                    uint64(block.timestamp),
                    0,
                    transferNetUSDT,
                    0,
                    value,
                    from
                );
            }
        }

        super._update(from, to, value);
    }

    // ════════════════════════════════════════════════════════════════════════
    //  SMART DEPOSIT / WITHDRAW: CREATE / CANCEL / COMPLETE
    // ════════════════════════════════════════════════════════════════════════

    /// @notice Create a smart deposit: tokens are taken immediately, the request is waiting for completion.
    function createSmartDeposit(uint256[POOL_ASSETS] memory amounts)
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        SmartDeposit storage req = _smartDeposits[msg.sender];
        require(req.requestId == 0, "WL: deposit req exists");

        bool nonzero;
        for (uint i = 0; i < POOL_ASSETS;) {
            uint256 a = amounts[i];
            if (a > 0) {
                nonzero = true;
                tokens[i].safeTransferFrom(msg.sender, address(this), a);
            }
            unchecked { ++i; }
        }
        require(nonzero, "WL: zero amounts");

        uint64 requestId = _nextRequestId();

        req.requestId = requestId;
        req.amounts   = amounts;

        if (!_seenSmartDepositUser[msg.sender]) {
            _seenSmartDepositUser[msg.sender] = true;
            _allSmartDepositUsers.push(msg.sender);
        }

        // For Pending history: if the deposit is in one token, we remember this token and the amount.
        (uint8 depTokenIndex, uint256 depAmountToken) = _detectSingleToken(amounts);

        // History: Smart deposit, Pending (we will find out the amount in USDT later)
        uint8 opCode = _encodeOp(0, 1, 0); // deposit, Smart, Pending
        emit UserTx(
            msg.sender,
            opCode,
            depTokenIndex,
            uint64(block.timestamp),
            requestId,
            0,                    // amountUSDT unknown yet
            depAmountToken,
            0,                    // wlShares unknown yet
            address(0)
        );
    }

    /// @notice Smart deposit cancellation: the application is deleted, tokens are returned to the user.
    function cancelSmartDeposit()
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        SmartDeposit storage reqStorage = _smartDeposits[msg.sender];
        require(reqStorage.requestId != 0, "WL: no pending deposit");

        uint64 requestId = reqStorage.requestId;

        // 1) read amounts into memory
        uint256[POOL_ASSETS] memory amounts = reqStorage.amounts;

        // 2) clear
        reqStorage.requestId = 0;
        for (uint i = 0; i < POOL_ASSETS;) {
            reqStorage.amounts[i] = 0;
            unchecked { ++i; }
        }

        // 3) return tokens to the user
        for (uint i = 0; i < POOL_ASSETS;) {
            if (amounts[i] > 0) {
                tokens[i].safeTransfer(msg.sender, amounts[i]);
            }
            unchecked { ++i; }
        }

        // History: Smart deposit, Cancelled
        uint8 opCode = _encodeOp(0, 1, 2); // deposit, Smart, Cancelled
        emit UserTx(
            msg.sender,
            opCode,
            TOKEN_INDEX_NONE,
            uint64(block.timestamp),
            requestId,
            0,
            0,
            0,
            address(0)
        );
    } 

    /// @notice Batch execution of smart deposits (can be multi-token).
    /// For each token 0..2:
    ///   - sum up the deposits of all users in this token
    ///   - make one dsf.deposit
    ///   - distribute WL shares proportionally to the deposit amount in this token
    ///   - calculate the principal (depositBody) for each part separately
    function completeSmartDeposits(address[] calldata users)
        external
        nonReentrant
        whenNotPaused
    {
        uint256 len = users.length;
        require(len > 0, "WL: empty batch");

        _trySkim();

        uint256[POOL_ASSETS] memory totalByToken;
        // userTokenAmounts[i][j] = how many tokens j user i contributed
        uint256[POOL_ASSETS][] memory userTokenAmounts = new uint256[POOL_ASSETS][](len);
        uint64[] memory reqIds = new uint64[](len);

        // For later principal & history: how much WL minted per user / per token
        uint256[] memory wlMintTotalPerUser = new uint256[](len);
        uint256[POOL_ASSETS][] memory wlMintPerUserPerToken = new uint256[POOL_ASSETS][](len);

        // Calculate for each user:
        //   - read SmartDeposit
        //   - collect amounts by tokens
        //   - clear application storage
        for (uint256 i = 0; i < len;) {
            address u = users[i];
            SmartDeposit storage reqStorage = _smartDeposits[u];
            uint64 requestId = reqStorage.requestId;
            require(requestId != 0, "WL: no pending deposit");

            uint256[POOL_ASSETS] memory amounts = reqStorage.amounts;
            bool nonzero;

            for (uint256 j = 0; j < POOL_ASSETS;) {
                uint256 a = amounts[j];
                if (a > 0) {
                    nonzero = true;
                    totalByToken[j] += a;
                    userTokenAmounts[i][j] = a;
                }
                reqStorage.amounts[j] = 0;
                unchecked { ++j; }
            }

            require(nonzero, "WL: zero amounts");

            reqIds[i] = requestId;
            reqStorage.requestId = 0;

            unchecked { ++i; }
        }

        // If the vault was empty before the batch, remember this for HWM
        uint256 tsAtStart = totalSupply();

        // For each token, we create a separate dsf.deposit if the amount is > 0
        for (uint256 tokenIdx = 0; tokenIdx < POOL_ASSETS;) {
            uint256 tokenTotal = totalByToken[tokenIdx];
            if (tokenTotal > 0) {
                // 1) One common dsf.deposit for this token
                uint256[POOL_ASSETS] memory oneTokenAmounts;
                oneTokenAmounts[tokenIdx] = tokenTotal;

                tokens[tokenIdx].forceApprove(address(dsf), 0);
                tokens[tokenIdx].forceApprove(address(dsf), tokenTotal);

                uint256 lpBefore = dsfLp.balanceOf(address(this));
                uint256 tsBefore = totalSupply();

                dsf.deposit(oneTokenAmounts);

                uint256 lpAfter  = dsfLp.balanceOf(address(this));
                uint256 lpGained = lpAfter - lpBefore;
                require(lpGained > 0, "WL: no dsf lp");

                uint256 wlTotalMint;
                if (tsBefore == 0) {
                    wlTotalMint = lpGained;
                } else {
                    require(lpBefore > 0, "WL: zero lpBefore");
                    wlTotalMint = (tsBefore * lpGained) / lpBefore;
                }
                require(wlTotalMint > 0, "WL: no WL mint");

                // 2) Find the last user with a non-zero balance for this token
                uint256 lastIdx;
                for (uint256 i = 0; i < len;) {
                    if (userTokenAmounts[i][tokenIdx] > 0) {
                        lastIdx = i;
                    }
                    unchecked { ++i; }
                }

                // 3) Distribute WLtoken by tokenTotal shares
                uint256 remainingWl = wlTotalMint;
                for (uint256 i = 0; i < len;) {
                    uint256 userAmt = userTokenAmounts[i][tokenIdx];
                    if (userAmt > 0) {
                        uint256 wlForUser;
                        if (i == lastIdx) {
                            wlForUser = remainingWl;
                        } else {
                            wlForUser = (wlTotalMint * userAmt) / tokenTotal;
                            remainingWl -= wlForUser;
                        }

                        if (wlForUser > 0) {
                            address user = users[i];
                            _mint(user, wlForUser);

                            wlMintTotalPerUser[i]                 += wlForUser;
                            wlMintPerUserPerToken[i][tokenIdx]    = wlForUser;
                        }
                    }
                    unchecked { ++i; }
                }
            }
            unchecked { ++tokenIdx; }
        }

        // If the WL batch was empty before — set the HWM at the current GROSS price
        if (tsAtStart == 0 && totalSupply() > 0) {
            HWM_grossPricePerShareUSDT = projectSharePriceGrossUSDT();
        }

        // Calculate NET NAV and LPprice once, distribute the deposit amount, and log events
        uint256 price1e18 = LPprice();
        if (price1e18 > 0) {
            for (uint256 i = 0; i < len;) {
                uint256 wlUserTotal = wlMintTotalPerUser[i];
                if (wlUserTotal == 0) {
                    unchecked { ++i; }
                    continue;
                }

                address user   = users[i];
                uint256 oldBody = _userDepositBody[user];
                uint256 addedBodyTotal;

                // for each token through which this user logged in
                for (uint256 tokenIdx = 0; tokenIdx < POOL_ASSETS;) {
                    uint256 wlForTokenUser = wlMintPerUserPerToken[i][tokenIdx];
                    if (wlForTokenUser > 0) {
                        uint256 addedBodyPart = (wlForTokenUser * price1e18) / 1e18;
                        addedBodyTotal += addedBodyPart;

                        uint256 userAmtToken = userTokenAmounts[i][tokenIdx];

                        // History: Smart deposit, Completed (for a specific token)
                        uint8 opCode = _encodeOp(0, 1, 1); // deposit, Smart, Completed
                        emit UserTx(
                            user,
                            opCode,
                            uint8(tokenIdx),
                            uint64(block.timestamp),
                            reqIds[i],
                            addedBodyPart,              // NET in USDT
                            userAmtToken,               // raw quantity of this token
                            wlForTokenUser,
                            address(0)
                        );
                    }
                    unchecked { ++tokenIdx; }
                }

                if (addedBodyTotal > 0) {
                    uint256 newBody = oldBody + addedBodyTotal;
                    _userDepositBody[user] = newBody;
                    emit UserDepositBodyUpdate(user, oldBody, newBody);
                }

                unchecked { ++i; }
            }
        }

        _touchNav();
    }

    /// @notice Create smart output: wlShares will be output to tokenIndex upon completion (complete()).
    /// @dev WL shares remain with the user for now; burning will occur at the completion stage.
    function createSmartWithdraw(uint256 wlShares, uint128 tokenIndex)
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        require(wlShares > 0, "WL: zero shares");
        require(tokenIndex < POOL_ASSETS, "WL: bad token index");
        require(balanceOf(msg.sender) >= wlShares, "WL: not enough WL");

        SmartWithdraw storage req = _smartWithdraws[msg.sender];
        require(req.requestId == 0, "WL: withdraw req exists");

        uint64 requestId = _nextRequestId();

        req.requestId = requestId;
        req.wlShares  = wlShares;
        req.tokenIndex = tokenIndex;

        if (!_seenSmartWithdrawUser[msg.sender]) {
            _seenSmartWithdrawUser[msg.sender] = true;
            _allSmartWithdrawUsers.push(msg.sender);
        }

        // Preview in USDT and in a specific token
        uint256 previewNowUSDT = availableToWithdrawal(wlShares);
        uint256 previewTokenAmount = (tokenIndex == settleIndex)
            ? previewNowUSDT
            : availableToWithdrawalPerToken(wlShares, tokenIndex);

        // History: Smart withdraw, Pending
        uint8 opCode = _encodeOp(1, 1, 0); // withdraw, Smart, Pending
        emit UserTx(
            msg.sender,
            opCode,
            uint8(tokenIndex),
            uint64(block.timestamp),
            requestId,
            previewNowUSDT,
            previewTokenAmount,
            wlShares,
            address(0)
        );
    }

    /// @notice Smart withdrawal cancellation: the request is deleted, WL shares remain with the user.
    function cancelSmartWithdraw()
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        SmartWithdraw storage reqStorage = _smartWithdraws[msg.sender];
        require(reqStorage.requestId != 0, "WL: no pending withdraw");

        uint64 requestId = reqStorage.requestId;
        uint256 wlShares = reqStorage.wlShares;

        reqStorage.requestId  = 0;
        reqStorage.wlShares   = 0;
        reqStorage.tokenIndex = 0;

        // History: Smart withdraw, Cancelled
        uint8 opCode = _encodeOp(1, 1, 2); // withdraw, Smart, Cancelled
        emit UserTx(
            msg.sender,
            opCode,
            TOKEN_INDEX_NONE,
            uint64(block.timestamp),
            requestId,
            0,
            0,
            wlShares,
            address(0)
        );
    }

    /// @dev GROSS preview *only* for USDT (settleIndex) and one concrete tokenIndex
    ///      to reduce the number of calcWithdrawOneCoin to 2 instead of 3
    function _previewGrossUSDTAndToken(uint128 tokenIndex)
        internal
        view
        returns (uint256 grossUSDT, uint256 grossToken)
    {
        uint256 lpBalance = dsfLp.balanceOf(address(this));
        if (lpBalance == 0) return (0, 0);

        uint256 pid = dsf.defaultWithdrawPid();
        (address strat,, uint256 poolLpShares) = dsf.poolInfo(pid);
        if (poolLpShares == 0) return (0, 0);

        uint256 ratio1e18 = (lpBalance * 1e18) / poolLpShares;
        if (ratio1e18 == 0) return (0, 0);

        grossUSDT = IStrategyView(strat).calcWithdrawOneCoin(ratio1e18, settleIndex);

        if (tokenIndex == settleIndex) {
            // same token → save one call
            grossToken = grossUSDT;
        } else {
            // GROSS in a specific token
            grossToken = IStrategyView(strat).calcWithdrawOneCoin(ratio1e18, tokenIndex);
        }
    }

    /// @notice Batch execution of smart withdrawals (can be up to 3 tokenIndex).
    /// For each tokenIndex 0..2:
    ///   - sum wlShares of all requests with this tokenIndex
    ///   - calculate the share of DSF LP for this group
    ///   - one dsf.withdraw OneCoin
    ///   - distribute tokens proportionally to wlShares
    function completeSmartWithdraws(address[] calldata users)
        external
        nonReentrant
        whenNotPaused
    {
        uint256 len = users.length;
        require(len > 0, "WL: empty batch");

        _trySkim();

        uint256 tsCommon    = totalSupply();
        uint256 lpBalCommon = dsfLp.balanceOf(address(this));
        require(tsCommon > 0 && lpBalCommon > 0, "WL: empty");

        uint256 netAllUSDT = totalHoldings();

        uint128[] memory tokenIndexArr = new uint128[](len);
        uint256[] memory wlSharesArr   = new uint256[](len);
        uint64[]  memory reqIds        = new uint64[](len);
        uint256[] memory netUSDTArr    = new uint256[](len);

        uint256[POOL_ASSETS] memory sumWlByToken;
        uint256[POOL_ASSETS] memory lastIdxByToken;

        // 1) Read and clear requests, update principal (depositBody), group by tokenIndex
        for (uint256 i = 0; i < len;) {
            address user = users[i];
            SmartWithdraw storage reqStorage = _smartWithdraws[user];
            uint64 requestId = reqStorage.requestId;
            require(requestId != 0, "WL: no pending withdraw");

            uint256 wlShares = reqStorage.wlShares;
            require(wlShares > 0, "WL: zero shares");
            require(balanceOf(user) >= wlShares, "WL: not enough WL");

            uint128 tIndex = reqStorage.tokenIndex;
            require(tIndex < POOL_ASSETS, "WL: bad token index");

            // preview NET USDT for this application (based on the old NAV)
            uint256 previewOutNetUSDT = (wlShares * netAllUSDT) / tsCommon;

            // principal: subtract the body
            uint256 userBody = _userDepositBody[user];
            uint256 depositBodyPortionUSDT =
                previewOutNetUSDT <= userBody ? previewOutNetUSDT : userBody;
            if (depositBodyPortionUSDT > 0) {
                uint256 oldBody = userBody;
                uint256 newBody = oldBody - depositBodyPortionUSDT;
                _userDepositBody[user] = newBody;
                emit UserDepositBodyUpdate(user, oldBody, newBody);
            }

            // cleaning storage requests
            reqStorage.requestId  = 0;
            reqStorage.wlShares   = 0;
            reqStorage.tokenIndex = 0;

            tokenIndexArr[i] = tIndex;
            wlSharesArr[i]   = wlShares;
            reqIds[i]        = requestId;
            netUSDTArr[i]    = previewOutNetUSDT;

            sumWlByToken[tIndex] += wlShares;
            lastIdxByToken[tIndex] = i; // last position with this tokenIndex

            unchecked { ++i; }
        }

        // 2) We calculate how many DSF LP tokens need to be redeemed for each token group
        uint256[POOL_ASSETS] memory dsfLpRedeemByToken;
        for (uint256 t = 0; t < POOL_ASSETS;) {
            uint256 sumShares = sumWlByToken[t];
            if (sumShares > 0) {
                dsfLpRedeemByToken[t] = (lpBalCommon * sumShares) / tsCommon;
            }
            unchecked { ++t; }
        }

        // 3) For each tokenIndex, we make one dsf.withdraw OneCoin and distribute the token
        for (uint256 t = 0; t < POOL_ASSETS;) {
            uint256 groupShares = sumWlByToken[t];
            uint256 dsfLpRedeem = dsfLpRedeemByToken[t];
            if (groupShares > 0 && dsfLpRedeem > 0) {
                // Балансы до withdraw
                uint256[POOL_ASSETS] memory balBefore;
                for (uint256 k = 0; k < POOL_ASSETS;) {
                    balBefore[k] = tokens[k].balanceOf(address(this));
                    unchecked { ++k; }
                }

                dsfLp.forceApprove(address(dsf), 0);
                dsfLp.forceApprove(address(dsf), dsfLpRedeem);

                uint256[POOL_ASSETS] memory minOut;
                dsf.withdraw(
                    dsfLpRedeem,
                    minOut,
                    IDSF.WithdrawalType.OneCoin,
                    uint128(t)
                );

                uint256[POOL_ASSETS] memory got;
                for (uint256 k = 0; k < POOL_ASSETS;) {
                    uint256 balAfter = tokens[k].balanceOf(address(this));
                    got[k] = balAfter - balBefore[k];
                    unchecked { ++k; }
                }

                uint256 tokenTotalOut = got[t];
                uint256 remainingOut  = tokenTotalOut;

                // WL for the group and distribute the token proportionally to wlShares
                uint256 lastIdx = lastIdxByToken[t];

                for (uint256 i = 0; i < len;) {
                    if (tokenIndexArr[i] != t) {
                        unchecked { ++i; }
                        continue;
                    }

                    uint256 userShares = wlSharesArr[i];
                    if (userShares == 0) {
                        unchecked { ++i; }
                        continue;
                    }

                    address user = users[i];

                    // We take a share of the token at wlShares
                    uint256 userTokenAmount;
                    if (i == lastIdx) {
                        userTokenAmount = remainingOut;
                    } else {
                        userTokenAmount = (tokenTotalOut * userShares) / groupShares;
                        remainingOut -= userTokenAmount;
                    }

                    // Let's burn WL for this group (once)
                    _burn(user, userShares);

                    if (userTokenAmount > 0) {
                        tokens[t].safeTransfer(user, userTokenAmount);
                    }

                    // History: Smart withdraw, Completed (by specific tokenIndex)
                    uint8 opCode = _encodeOp(1, 1, 1); // withdraw, Smart, Completed
                    emit UserTx(
                        user,
                        opCode,
                        uint8(t),
                        uint64(block.timestamp),
                        reqIds[i],
                        netUSDTArr[i],         // NET in USDT (based on old NAV)
                        userTokenAmount,
                        userShares,
                        address(0)
                    );

                    unchecked { ++i; }
                }
            }
            unchecked { ++t; }
        }

        _touchNav();
    }

    // ════════════════════════════════════════════════════════════════════════
    //  SMART REQUESTS VIEW: LISTS OF ALL REQUESTS
    // ════════════════════════════════════════════════════════════════════════

    /// @notice List of all smart deposits (user + struct), only Pending or all.
    function getAllSmartDeposits()
        public
        view
        returns (address[] memory users)
    {
        uint256 lenAll = _allSmartDepositUsers.length;
        uint256 count;

        // 1-й pass: we consider suitable
        for (uint256 i = 0; i < lenAll;) {
            if (_smartDeposits[_allSmartDepositUsers[i]].requestId != 0) count++;
            unchecked { ++i; }
        }

        users = new address[](count);

        // 2-й pass: fill in
        uint256 idx;
        for (uint256 i = 0; i < lenAll;) {
            address u = _allSmartDepositUsers[i];

            if (_smartDeposits[u].requestId != 0) {
                users[idx] = u;
                idx++;
            }

            unchecked { ++i; }
        }
    }

    /// @notice List of all smart conclusions (user + struct), only Pending or all.
    function getAllSmartWithdraws()
        public
        view
        returns (address[] memory users)
    {
        uint256 lenAll = _allSmartWithdrawUsers.length;
        uint256 count;

        // 1st pass: we consider suitable
        for (uint256 i = 0; i < lenAll;) {
            if (_smartWithdraws[_allSmartWithdrawUsers[i]].requestId != 0) {
                count++;
            }
            unchecked { ++i; }
        }

        users = new address[](count);

        // 2nd pass: fill in
        uint256 idx;
        for (uint256 i = 0; i < lenAll;) {
            address u = _allSmartWithdrawUsers[i];
            if (_smartWithdraws[u].requestId != 0) {
                users[idx] = u;
                idx++;
            }
            unchecked { ++i; }
        }
    }

    /// @notice Receive all smart requests at once: both deposits and withdrawals.
    function getAllSmartRequests()
        external
        view
        returns (
            address[] memory depositUsers,
            address[] memory withdrawUsers
        )
    {
        depositUsers  = getAllSmartDeposits();
        withdrawUsers = getAllSmartWithdraws();
    }

    // ════════════════════════════════════════════════════════════════════════
    //  OWNER: SETTINGS / ACTIONS
    // ════════════════════════════════════════════════════════════════════════

    // ── Settings (onlyOwner) ────────────────────────────────────────────────

    function setPartnerFeeBps(uint16 bps) external onlyOwner {
        require(bps <= DENOM, "WL: fee too high");
        partnerFeeBps = bps;
        emit UpdatePartnerFeeBps(bps);
    }

    function setPrincipalTreasury(address t) external onlyOwner {
        require(t != address(0), "WL: bad treasury");
        principalTreasury = t;
        emit UpdatePrincipalTreasury(t);
    }

    function setMinSkimGainBps(uint256 bps) external onlyOwner {
        minSkimGainBps = bps;
        emit UpdateMinSkimGainBps(bps);
    }

    /// @notice Set the source of future income (DSF / strategy / analytics)
    function setFutureIncomeSource(address src) external onlyOwner {
        // address(0) — disable future income accounting
        futureIncomeSource = IFutureIncome(src);
        emit UpdateFutureIncomeSource(src);
    }

    function pause() external onlyOwner { _pause(); }
    function unpause() external onlyOwner { _unpause(); }

    // ── Actions of the owner: HWM-skim, emergency sweep ───────────────────────

    /// @notice Manual HWM skim: transfer accumulated commission in DSF LP to treasury
    function skimFeeInDsfLp() external onlyOwner nonReentrant whenNotPaused {
        require(block.number > lastNavTouchBlock, "WL: nav touched");

        uint256 ts = totalSupply();
        if (ts == 0) { HWM_grossPricePerShareUSDT = 0; return; }

        uint256 priceGross = projectSharePriceGrossUSDT();
        if (HWM_grossPricePerShareUSDT == 0) { HWM_grossPricePerShareUSDT = priceGross; return; }

        if (priceGross * DENOM < HWM_grossPricePerShareUSDT * (DENOM + minSkimGainBps)) return;

        uint256 feeUSDT = projectAccruedFeeUSDT();
        if (feeUSDT == 0) { HWM_grossPricePerShareUSDT = priceGross; return; }

        uint256 lpBalance   = dsfLp.balanceOf(address(this));
        uint256 grossUSDT   = projectGrossUSDT();
        if (grossUSDT == 0 || lpBalance == 0) { HWM_grossPricePerShareUSDT = priceGross; return; }

        uint256 feeLp = (feeUSDT * lpBalance) / grossUSDT;
        if (feeLp > lpBalance) feeLp = lpBalance;

        if (feeLp > 0) {
            dsfLp.safeTransfer(principalTreasury, feeLp);
            ownerFeeSnapshotUSDT += feeUSDT;
            _touchNav();
        }

        HWM_grossPricePerShareUSDT = priceGross;
        emit SkimFeeUSDT(feeUSDT, feeLp, priceGross);
    }

    /// @notice Emergency sweep of all tokens except DSF LP and pool tokens
    function sweep(address token, address to, uint256 amount) external onlyOwner {
        require(to != address(0), "WL: bad to");
        for (uint i = 0; i < POOL_ASSETS;) {
            require(token != address(tokens[i]), "WL: pool token");
            unchecked { ++i; }
        }
        require(token != address(dsfLp), "WL: dsf lp");
        IERC20(token).safeTransfer(to, amount);
    }

    // ─═══════════════════════════════════════════════════════════════════════
    //  INTERNAL: AUTO-SKIM (HWM)
    // ─═══════════════════════════════════════════════════════════════════════

    /// @dev Soft auto-skim — if there is accumulated profit, part of the DSF LP goes
    /// to the treasury, and HWM is updated to the current GROSS price.
    function _trySkim() internal {
        if (block.number <= lastNavTouchBlock) return;

        uint256 ts = totalSupply();
        if (ts == 0) {
            HWM_grossPricePerShareUSDT = 0;
            return;
        }

        uint256 lpBalance = dsfLp.balanceOf(address(this));
        if (lpBalance == 0) {
            HWM_grossPricePerShareUSDT = 0;
            return;
        }

        uint256 pid = dsf.defaultWithdrawPid();
        (address strat,, uint256 poolLpShares) = dsf.poolInfo(pid);
        if (poolLpShares == 0) {
            HWM_grossPricePerShareUSDT = 0;
            return;
        }

        uint256 ratio1e18 = (lpBalance * 1e18) / poolLpShares;
        if (ratio1e18 == 0) {
            HWM_grossPricePerShareUSDT = 0;
            return;
        }

        uint256 grossUSDT = IStrategyView(strat).calcWithdrawOneCoin(ratio1e18, settleIndex);
        if (grossUSDT == 0) {
            HWM_grossPricePerShareUSDT = 0;
            return;
        }

        uint256 priceGross = (grossUSDT * 1e18) / ts;

        if (HWM_grossPricePerShareUSDT == 0) {
            HWM_grossPricePerShareUSDT = priceGross;
            return;
        }

        // minSkimGainBps threshold
        if (priceGross * DENOM < HWM_grossPricePerShareUSDT * (DENOM + minSkimGainBps)) {
            return;
        }

        // Total WL profit in USDT:
        uint256 profitPerShare1e18 = priceGross - HWM_grossPricePerShareUSDT;
        uint256 profitTotalUSDT    = (profitPerShare1e18 * ts) / 1e18;

        uint256 feeUSDT = (profitTotalUSDT * partnerFeeBps) / DENOM;
        if (feeUSDT == 0) {
            HWM_grossPricePerShareUSDT = priceGross;
            return;
        }

        // feeLp = feeUSDT * lpBalance / grossUSDT
        uint256 feeLp = (feeUSDT * lpBalance) / grossUSDT;
        if (feeLp > lpBalance) feeLp = lpBalance;

        if (feeLp > 0) {
            dsfLp.safeTransfer(principalTreasury, feeLp);
            ownerFeeSnapshotUSDT += feeUSDT;
            _touchNav();
        }

        HWM_grossPricePerShareUSDT = priceGross;
        emit SkimFeeUSDT(feeUSDT, feeLp, priceGross);
    }

    // ════════════════════════════════════════════════════════════════════════
    //  DEBUG / BACKEND-ONLY VIEWS
    // ════════════════════════════════════════════════════════════════════════

    function debugPreviewAllAndUser(uint256 wlShares)
        external
        view
        returns (uint256 grossAllUSDT, uint256 feeUncrystallizedUSDT, uint256 netAllUSDT, uint256 userNetUSDT)
    {
        grossAllUSDT          = projectGrossUSDT();
        feeUncrystallizedUSDT = projectAccruedFeeUSDT();
        uint256 ts = totalSupply();
        netAllUSDT            = grossAllUSDT > feeUncrystallizedUSDT ? grossAllUSDT - feeUncrystallizedUSDT : 0;
        if (ts == 0) return (grossAllUSDT, feeUncrystallizedUSDT, netAllUSDT, 0);
        userNetUSDT           = (wlShares * netAllUSDT) / ts;
    }

    function lastRequestId() external view returns (uint64) {
        return _lastRequestId;
    }

    /// @dev Approximate DSF LP price in USDT (per 1 LP, 1e18 precision),
    ///      based on WL share in DSF pool (same logic as projectGrossUSDT).
    function _dsfLpPricePerLpUSDT1e18() internal view returns (uint256) {
        uint256 lpBalance = dsfLp.balanceOf(address(this));
        if (lpBalance == 0) return 0;

        // Use the same helper that we already have; grossUSDT is the value
        // of ALL lpBalance DSF LP in settleIndex token.
        (uint256 grossUSDT, ) = _previewGrossUSDTAndToken(settleIndex);
        if (grossUSDT == 0) return 0;

        // price per 1 LP in USDT (1e18 precision)
        return (grossUSDT * 1e18) / lpBalance;
    }
}