// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/* ──────────────────────────────────────────────────────────────────────────────
 * DSF White-Label Vault (WL) — accounting of deposit *principal* in USDT (settleIndex)
 *
 * @author Andrei Averin — CTO dsf.finance
 *
 * Public methods are identical to DSF by signature:
 *   - deposit(uint256[POOL_ASSETS] memory amounts)
 *   - withdraw(uint256 lpShares, uint256[POOL_ASSETS] memory tokenAmounts,
 *              IStrategy.WithdrawalType withdrawalType, uint128 tokenIndex)
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
 * User operation history (always in USDT) — ТЕПЕРЬ ТОЛЬКО В СОБЫТИЯХ:
 *   event UserTx(
 *       address indexed user,
 *       uint8   kind,       // 0=deposit,1=withdraw,2=transferOut,3=transferIn
 *       uint8   mode,       // 0=Fast,1=Smart
 *       uint8   status,     // 0=Pending,1=Completed,2=Cancelled
 *       uint8   tokenIndex, // 0..2 = DAI/USDC/USDT, 255 = NONE/USDT-only
 *       uint64  timestamp,
 *       uint64  requestId,  // 0 = no smart request
 *       uint256 amountUSDT, // NET in USDT
 *       uint256 amountToken,// raw token amount (if applicable)
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
 *                                         recorded as Pending.
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
        uint256[3] calldata minOut,
        WithdrawalType wType,
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
    uint128 public settleIndex = 2;

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

    /// @notice User deposit amount in USDT (NET)
    uint64 private _lastRequestId;

    // ── Smart applications ─────────────────────────────────────────────────────

    enum RequestStatus { None, Pending, Completed, Cancelled }

    struct SmartDeposit {
        RequestStatus status;
        uint64        createdAt;
        uint64        requestId;
        uint256[POOL_ASSETS] amounts; // tokens are already on WL
    }

    struct SmartWithdraw {
        RequestStatus status;
        uint64        createdAt;
        uint64        requestId;
        uint256       wlShares;
        uint128       tokenIndex; // 0..2
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

    event DepositWL(address indexed user, uint256[3] amounts, uint256 wlMinted, uint256 dsfLpGained);
    event WithdrawWL(address indexed user, uint256 wlBurned, uint256 dsfLpSpent, uint256[3] paidToUser);

    event SkimFeeUSDT(uint256 feeUSDT, uint256 dsfLpFeeToTreasury, uint256 newHwmGrossPricePerShareUSDT);

    event UpdatePartnerFeeBps(uint16 newBps);
    event UpdatePrincipalTreasury(address newTreasury);
    event UpdateMinSkimGainBps(uint256 newMinBps);
    event UpdateSettleIndex(uint128 newIndex);
    event UpdateFutureIncomeSource(address newSource);

    /// @notice Deposit body update: old → new (in USDT)
    event UserDepositBodyUpdate(address indexed user, uint256 oldDepositBodyUSDT, uint256 newDepositBodyUSDT);

    event WithdrawBreakdownUSDT(
        address indexed user,
        uint256 wlBurned,
        uint256 previewOutNetUSDT,
        uint256 depositBodyPortionUSDT,
        uint256 profitPortionUSDT
    );

    // Smart-deposit / withdraw events
    event SmartDepositCreated(address indexed user, uint64 requestId, uint256[POOL_ASSETS] amounts);
    event SmartDepositCancelled(address indexed user, uint64 requestId);
    event SmartDepositCompleted(address indexed user, uint64 requestId, uint256 wlMinted, uint256 dsfLpGained);

    event SmartWithdrawCreated(address indexed user, uint64 requestId, uint256 wlShares, uint128 tokenIndex);
    event SmartWithdrawCancelled(address indexed user, uint64 requestId);
    event SmartWithdrawCompleted(
        address indexed user,
        uint64 requestId,
        uint256 wlBurned,
        uint256 dsfLpSpent,
        uint256[POOL_ASSETS] paidToUser
    );

    /// @notice Universal user operations history event
    event UserTx(
        address indexed user,
        uint8   kind,       // 0=deposit,1=withdraw,2=transferOut,3=transferIn
        uint8   mode,       // 0=Fast,1=Smart
        uint8   status,     // 0=Pending,1=Completed,2=Cancelled
        uint8   tokenIndex, // 0..2 = DAI/USDC/USDT, 255 = NONE/settle-only
        uint64  timestamp,
        uint64  requestId,  // 0 = no smart request
        uint256 amountUSDT, // NET in USDT
        uint256 amountToken,// raw token amount
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

        for (uint i = 0; i < POOL_ASSETS; i++) {
            require(_tokens[i] != address(0), "WL: bad token");
            tokens[i] = IERC20(_tokens[i]);
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

    function _amountsMask(
        uint256[POOL_ASSETS] memory amounts,
        IStrategy.WithdrawalType wType,
        uint128 tokenIdx
    ) internal pure returns (uint256[POOL_ASSETS] memory out) {
        if (wType == IStrategy.WithdrawalType.OneCoin) {
            for (uint i = 0; i < POOL_ASSETS; i++) out[i] = 0;
            out[uint256(tokenIdx)] = amounts[uint256(tokenIdx)];
        } else {
            return amounts;
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

        for (uint256 i = 0; i < POOL_ASSETS; i++) {
            if (amounts[i] > 0) {
                nonzeroCount++;
                lastIndex = i;
                amountToken = amounts[i];
            }
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

        for (uint i = 0; i < POOL_ASSETS; i++) {
            grossAll[i] = IStrategyView(strat).calcWithdrawOneCoin(ratio1e18, uint128(i));
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
        uint256 px = LPprice();
        return (wlShares * px) / 1e18;
    }

    /// @notice NET value of `wlShares` in each of the three tokens (DAI/USDC/USDT)
    function availableToWithdrawalPerToken(uint256 wlShares)
        public
        view
        returns (uint256[POOL_ASSETS] memory out)
    {
        if (wlShares == 0) return out;

        uint256[POOL_ASSETS] memory grossAll = _previewTotalGrossPerToken();
        uint256 ts = totalSupply();
        if (ts == 0) return out;

        uint256 grossUSDT = grossAll[settleIndex];
        uint256 feeUSDT   = projectAccruedFeeUSDT();

        if (grossUSDT == 0) return out;

        uint256 netUSDTAll = grossUSDT > feeUSDT ? grossUSDT - feeUSDT : 0;
        if (netUSDTAll == 0) return out;

        // netFactor ≈ NET/GROSS in USDT; applies to all tokens
        for (uint i = 0; i < POOL_ASSETS; i++) {
            uint256 netAllToken = (grossAll[i] * netUSDTAll) / grossUSDT;
            out[i] = (wlShares * netAllToken) / ts;
        }
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

    /// @notice Full snapshot per user: WL balance, deposit body, NAV, future income,
    /// tokens, approvals, ETH balance, entire history, and smart requests.
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
        for (uint256 i = 0; i < POOL_ASSETS; i++) {
            IERC20 t = tokens[i];
            walletTokenBalances[i]   = t.balanceOf(user);
            walletTokenAllowances[i] = t.allowance(user, address(this));
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
    function deposit(uint256[POOL_ASSETS] memory amounts)
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        _trySkim();

        // helper for history: determine whether the user entered through a single token
        (uint8 depTokenIndex, uint256 depAmountToken) = _detectSingleToken(amounts);

        // 1) Collect tokens from the user
        for (uint i = 0; i < POOL_ASSETS; i++) {
            if (amounts[i] > 0) {
                tokens[i].safeTransferFrom(msg.sender, address(this), amounts[i]);
            }
        }
        // 2) Approve DSF and call deposit
        for (uint i = 0; i < POOL_ASSETS; i++) {
            if (amounts[i] > 0) {
                tokens[i].forceApprove(address(dsf), 0);
                tokens[i].forceApprove(address(dsf), amounts[i]);
            }
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
            emit UserTx(
                msg.sender,
                0,                // kind = deposit
                0,                // mode = Fast
                1,                // status = Completed
                depTokenIndex,    // tokenIndex (single-token or NONE)
                uint64(block.timestamp),
                0,                // requestId = 0
                addedBodyUSDT,
                depAmountToken,
                address(0)
            );
        }

        // 5) If this is the first deposit, we set the HWM at the GROSS price.
        if (tsBefore == 0) {
            HWM_grossPricePerShareUSDT = projectSharePriceGrossUSDT();
        }

        _touchNav();
        emit DepositWL(msg.sender, amounts, wlMint, lpGained);
    }

    /// @notice Withdrawal from WL (signature identical to DSF, but only OneCoin)
    /// @param lpShares Number of WL shares to burn (name left for compatibility with DSF)
    /// @param tokenAmounts In DSF, this is minOut for tokens — just pass it through
    /// @param withdrawalType DSF mode: Base/OneCoin — pass it through
    /// @param tokenIndex Index for OneCoin (0..2)
    function withdraw(
        uint256 lpShares,
        uint256[POOL_ASSETS] memory tokenAmounts,
        IStrategy.WithdrawalType withdrawalType,
        uint128 tokenIndex
    )
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        require(
            withdrawalType == IStrategy.WithdrawalType.OneCoin,
            "WL: only one-coin"
        );
        require(tokenIndex < POOL_ASSETS, "WL: bad token index");

        _trySkim();

        require(lpShares > 0 && balanceOf(msg.sender) >= lpShares, "WL: bad shares");

        // NET view in USDT for these WL shares
        uint256 previewOutNetUSDT = availableToWithdrawal(lpShares);

        // Divide by the deposit amount / profit
        uint256 depositBodyPortionUSDT =
            previewOutNetUSDT <= _userDepositBody[msg.sender]
                ? previewOutNetUSDT
                : _userDepositBody[msg.sender];
        uint256 profitPortionUSDT = previewOutNetUSDT - depositBodyPortionUSDT;

        if (depositBodyPortionUSDT > 0) {
            uint256 oldBody = _userDepositBody[msg.sender];
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
        for (uint i = 0; i < POOL_ASSETS; i++) {
            balBefore[i] = IERC20(tokens[i]).balanceOf(address(this));
        }

        dsfLp.forceApprove(address(dsf), 0);
        dsfLp.forceApprove(address(dsf), dsfLpRedeem);

        // All slippage conditions and minOut inside DSF
        dsf.withdraw(
            dsfLpRedeem,
            _amountsMask(tokenAmounts, withdrawalType, tokenIndex),
            withdrawalType == IStrategy.WithdrawalType.Base ? IDSF.WithdrawalType.Base : IDSF.WithdrawalType.OneCoin,
            tokenIndex
        );

        uint256[POOL_ASSETS] memory got;
        for (uint i = 0; i < POOL_ASSETS; i++) {
            uint256 balAfter = IERC20(tokens[i]).balanceOf(address(this));
            uint256 delta = balAfter - balBefore[i];
            got[i] = delta;
            if (delta > 0) tokens[i].safeTransfer(msg.sender, delta);
        }

        _touchNav();

        uint256 amountToken = got[uint256(tokenIndex)];

        // History: output (kind = 1), Fast, Completed
        emit UserTx(
            msg.sender,
            1,                    // kind = withdrawal
            0,                    // mode = Fast
            1,                    // status = Completed
            uint8(tokenIndex),
            uint64(block.timestamp),
            0,                    // requestId
            previewOutNetUSDT,
            amountToken,
            address(0)
        );

        emit WithdrawWL(msg.sender, lpShares, dsfLpRedeem, got);
        emit WithdrawBreakdownUSDT(
            msg.sender,
            lpShares,
            previewOutNetUSDT,
            depositBodyPortionUSDT,
            profitPortionUSDT
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
                emit UserTx(
                    from,
                    2,                        // kind = transferOut
                    0,                        // mode = Fast
                    1,                        // status = Completed
                    settleTokenIndex,         // settle token index
                    uint64(block.timestamp),
                    0,                        // requestId
                    transferNetUSDT,
                    0,
                    to
                );
                // IN - to
                emit UserTx(
                    to,
                    3,                        // kind = transferIn
                    0,
                    1,
                    settleTokenIndex,
                    uint64(block.timestamp),
                    0,
                    transferNetUSDT,
                    0,
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
        require(req.status == RequestStatus.None, "WL: deposit req exists");

        bool nonzero;
        for (uint i = 0; i < POOL_ASSETS; i++) {
            uint256 a = amounts[i];
            if (a > 0) {
                nonzero = true;
                tokens[i].safeTransferFrom(msg.sender, address(this), a);
            }
        }
        require(nonzero, "WL: zero amounts");

        uint64 requestId = _nextRequestId();

        req.status    = RequestStatus.Pending;
        req.createdAt = uint64(block.timestamp);
        req.requestId = requestId;
        req.amounts   = amounts;

        if (!_seenSmartDepositUser[msg.sender]) {
            _seenSmartDepositUser[msg.sender] = true;
            _allSmartDepositUsers.push(msg.sender);
        }

        // For Pending history: if the deposit is in one token, we remember this token and the amount.
        (uint8 depTokenIndex, uint256 depAmountToken) = _detectSingleToken(amounts);

        // History: Smart deposit, Pending (we will find out the amount in USDT later)
        emit UserTx(
            msg.sender,
            0,                    // kind = deposit
            1,                    // mode = Smart
            0,                    // status = Pending
            depTokenIndex,
            uint64(block.timestamp),
            requestId,
            0,                    // amountUSDT unknown yet
            depAmountToken,
            address(0)
        );

        emit SmartDepositCreated(msg.sender, requestId, amounts);
    }

    /// @notice Smart deposit cancellation: the application is deleted, tokens are returned to the user.
    function cancelSmartDeposit()
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        SmartDeposit storage reqStorage = _smartDeposits[msg.sender];
        require(reqStorage.status == RequestStatus.Pending, "WL: no pending deposit");

        uint64 requestId = reqStorage.requestId;

        // 1) read amounts into memory
        uint256[POOL_ASSETS] memory amounts = reqStorage.amounts;

        // 2) clear
        reqStorage.status    = RequestStatus.None;
        reqStorage.createdAt = 0;
        reqStorage.requestId = 0;
        for (uint i = 0; i < POOL_ASSETS; i++) {
            reqStorage.amounts[i] = 0;
        }

        // 3) return tokens to the user
        for (uint i = 0; i < POOL_ASSETS; i++) {
            if (amounts[i] > 0) {
                tokens[i].safeTransfer(msg.sender, amounts[i]);
            }
        }

        // History: Smart deposit, Cancelled
        emit UserTx(
            msg.sender,
            0,                    // kind = deposit
            1,                    // mode = Smart
            2,                    // status = Cancelled
            TOKEN_INDEX_NONE,
            uint64(block.timestamp),
            requestId,
            0,
            0,
            address(0)
        );

        emit SmartDepositCancelled(msg.sender, requestId);
    }

    /// @dev Internal execution of a single smart deposit (CEI: first clear storage).
    /// @dev Internal execution of a single smart deposit (CEI: first clear storage).
    function _completeSmartDepositSingle(address user) internal {
        SmartDeposit storage reqStorage = _smartDeposits[user];
        require(reqStorage.status == RequestStatus.Pending, "WL: no pending deposit");

        uint64 requestId = reqStorage.requestId;

        // --- read in memory ---
        uint256[POOL_ASSETS] memory amounts = reqStorage.amounts;

        // --- clear storage (request disappears) ---
        reqStorage.status    = RequestStatus.None;
        reqStorage.createdAt = 0;
        reqStorage.requestId = 0;
        for (uint i = 0; i < POOL_ASSETS; i++) {
            reqStorage.amounts[i] = 0;
        }

        _trySkim();

        // 1) We approve DSF and call dsf.deposit
        for (uint i = 0; i < POOL_ASSETS; i++) {
            if (amounts[i] > 0) {
                tokens[i].forceApprove(address(dsf), 0);
                tokens[i].forceApprove(address(dsf), amounts[i]);
            }
        }

        uint256 lpBefore = dsfLp.balanceOf(address(this));
        dsf.deposit(amounts);
        uint256 lpAfter  = dsfLp.balanceOf(address(this));
        uint256 lpGained = lpAfter - lpBefore;
        require(lpGained > 0, "WL: no dsf lp");

        // 2) Mint WL shares to the user
        uint256 tsBefore = totalSupply();
        uint256 wlMint;
        if (tsBefore == 0) {
            wlMint = lpGained;
        } else {
            wlMint = (tsBefore * lpGained) / lpBefore;
        }
        _mint(user, wlMint);

        // 3) Updating the deposit body + history
        uint256 addedBodyUSDT = availableToWithdrawal(wlMint);
        if (addedBodyUSDT > 0) {
            uint256 oldBody = _userDepositBody[user];
            uint256 newBody = oldBody + addedBodyUSDT;
            _userDepositBody[user] = newBody;

            emit UserDepositBodyUpdate(user, oldBody, newBody);

            // We determine whether the deposit was in one token, for analytics purposes.
            (uint8 depTokenIndex, uint256 depAmountToken) = _detectSingleToken(amounts);

            // History: Smart deposit, Completed
            emit UserTx(
                user,
                0,                    // kind = deposit
                1,                    // mode = Smart
                1,                    // status = Completed
                depTokenIndex,
                uint64(block.timestamp),
                requestId,
                addedBodyUSDT,
                depAmountToken,
                address(0)
            );
        }

        if (tsBefore == 0) {
            HWM_grossPricePerShareUSDT = projectSharePriceGrossUSDT();
        }

        _touchNav();

        emit SmartDepositCompleted(user, requestId, wlMint, lpGained);
        emit DepositWL(user, amounts, wlMint, lpGained);
    }
    
    /// @notice Batch execution of smart deposits for a list of users.
    function completeSmartDeposits(address[] calldata users)
        external
        nonReentrant
        whenNotPaused
    {
        uint256 len = users.length;
        require(len > 0, "WL: empty batch");
        for (uint256 i = 0; i < len; i++) {
            _completeSmartDepositSingle(users[i]);
        }
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
        require(req.status == RequestStatus.None, "WL: withdraw req exists");

        uint64 requestId = _nextRequestId();

        req.status     = RequestStatus.Pending;
        req.createdAt  = uint64(block.timestamp);
        req.requestId  = requestId;
        req.wlShares   = wlShares;
        req.tokenIndex = tokenIndex;

        if (!_seenSmartWithdrawUser[msg.sender]) {
            _seenSmartWithdrawUser[msg.sender] = true;
            _allSmartWithdrawUsers.push(msg.sender);
        }

        // Preview in USDT and in a specific token
        uint256 previewNowUSDT = availableToWithdrawal(wlShares);
        uint256[POOL_ASSETS] memory perToken = availableToWithdrawalPerToken(wlShares);
        uint256 previewTokenAmount = perToken[uint256(tokenIndex)];

        // History: Smart withdraw, Pending
        emit UserTx(
            msg.sender,
            1,                    // kind = withdraw
            1,                    // mode = Smart
            0,                    // status = Pending
            uint8(tokenIndex),
            uint64(block.timestamp),
            requestId,
            previewNowUSDT,
            previewTokenAmount,
            address(0)
        );

        emit SmartWithdrawCreated(msg.sender, requestId, wlShares, tokenIndex);
    }

    /// @notice Smart withdrawal cancellation: the request is deleted, WL shares remain with the user.
    function cancelSmartWithdraw()
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        SmartWithdraw storage reqStorage = _smartWithdraws[msg.sender];
        require(reqStorage.status == RequestStatus.Pending, "WL: no pending withdraw");

        uint64 requestId = reqStorage.requestId;

        reqStorage.status     = RequestStatus.None;
        reqStorage.createdAt  = 0;
        reqStorage.requestId  = 0;
        reqStorage.wlShares   = 0;
        reqStorage.tokenIndex = 0;

        // History: Smart withdraw, Cancelled
        emit UserTx(
            msg.sender,
            1,                    // kind = withdraw
            1,                    // mode = Smart
            2,                    // status = Cancelled
            TOKEN_INDEX_NONE,
            uint64(block.timestamp),
            requestId,
            0,
            0,
            address(0)
        );

        emit SmartWithdrawCancelled(msg.sender, requestId);
    }

    /// @dev Internal execution of one smart output (CEI: first clear storage).
    function _completeSmartWithdrawSingle(address user) internal {
        SmartWithdraw storage reqStorage = _smartWithdraws[user];
        require(reqStorage.status == RequestStatus.Pending, "WL: no pending withdraw");
        require(reqStorage.wlShares > 0, "WL: zero shares");
        require(balanceOf(user) >= reqStorage.wlShares, "WL: not enough WL");

        uint64 requestId = reqStorage.requestId;

        // --- read in memory ---
        uint256 wlShares   = reqStorage.wlShares;
        uint128 tokenIndex = reqStorage.tokenIndex;
        uint256[POOL_ASSETS] memory minOut;

        // --- clearing storage ---
        reqStorage.status     = RequestStatus.None;
        reqStorage.createdAt  = 0;
        reqStorage.requestId  = 0;
        reqStorage.wlShares   = 0;
        reqStorage.tokenIndex = 0;

        _trySkim();

        // NET viewing in USDT
        uint256 previewOutNetUSDT = availableToWithdrawal(wlShares);

        uint256 depositBodyPortionUSDT =
            previewOutNetUSDT <= _userDepositBody[user]
                ? previewOutNetUSDT
                : _userDepositBody[user];
        uint256 profitPortionUSDT = previewOutNetUSDT - depositBodyPortionUSDT;

        if (depositBodyPortionUSDT > 0) {
            uint256 oldBody = _userDepositBody[user];
            uint256 newBody = oldBody - depositBodyPortionUSDT;
            _userDepositBody[user] = newBody;
            emit UserDepositBodyUpdate(user, oldBody, newBody);
        }

        uint256 tsBefore    = totalSupply();
        uint256 lpBalBefore = dsfLp.balanceOf(address(this));
        require(tsBefore > 0 && lpBalBefore > 0, "WL: empty");

        uint256 dsfLpRedeem = (lpBalBefore * wlShares) / tsBefore;
        require(dsfLpRedeem > 0, "WL: no redeem");

        _burn(user, wlShares);

        uint256[POOL_ASSETS] memory balBefore;
        for (uint i = 0; i < POOL_ASSETS; i++) {
            balBefore[i] = IERC20(tokens[i]).balanceOf(address(this));
        }

        dsfLp.forceApprove(address(dsf), 0);
        dsfLp.forceApprove(address(dsf), dsfLpRedeem);

        dsf.withdraw(
            dsfLpRedeem,
            _amountsMask(minOut, IStrategy.WithdrawalType.OneCoin, tokenIndex),
            IDSF.WithdrawalType.OneCoin,
            tokenIndex
        );

        uint256[POOL_ASSETS] memory got;
        for (uint i = 0; i < POOL_ASSETS; i++) {
            uint256 balAfter = IERC20(tokens[i]).balanceOf(address(this));
            uint256 delta = balAfter - balBefore[i];
            got[i] = delta;
            if (delta > 0) tokens[i].safeTransfer(user, delta);
        }

        _touchNav();

        uint256 amountToken = got[uint256(tokenIndex)];

        // History: Smart withdraw, Completed
        emit UserTx(
            user,
            1,                    // kind = withdraw
            1,                    // mode = Smart
            1,                    // status = Completed
            uint8(tokenIndex),
            uint64(block.timestamp),
            requestId,
            previewOutNetUSDT,
            amountToken,
            address(0)
        );

        emit SmartWithdrawCompleted(user, requestId, wlShares, dsfLpRedeem, got);
        emit WithdrawBreakdownUSDT(
            user,
            wlShares,
            previewOutNetUSDT,
            depositBodyPortionUSDT,
            profitPortionUSDT
        );
    }

    /// @notice Batch execution of smart conclusions for the user list.
    function completeSmartWithdraws(address[] calldata users)
        external
        nonReentrant
        whenNotPaused
    {
        uint256 len = users.length;
        require(len > 0, "WL: empty batch");
        for (uint256 i = 0; i < len; i++) {
            _completeSmartWithdrawSingle(users[i]);
        }
    }

    // ════════════════════════════════════════════════════════════════════════
    //  SMART REQUESTS VIEW: LISTS OF ALL REQUESTS
    // ════════════════════════════════════════════════════════════════════════

    /// @notice List of all smart deposits (user + struct), only Pending or all.
    function getAllSmartDeposits(bool onlyPending)
        public
        view
        returns (address[] memory users, SmartDeposit[] memory requests)
    {
        uint256 lenAll = _allSmartDepositUsers.length;
        uint256 count;

        // 1-й pass: we consider suitable
        for (uint256 i = 0; i < lenAll; i++) {
            SmartDeposit storage r = _smartDeposits[_allSmartDepositUsers[i]];
            if (r.status == RequestStatus.None) continue;
            if (onlyPending && r.status != RequestStatus.Pending) continue;
            count++;
        }

        users    = new address[](count);
        requests = new SmartDeposit[](count);

        // 2-й pass: fill in
        uint256 idx;
        for (uint256 i = 0; i < lenAll; i++) {
            address u = _allSmartDepositUsers[i];
            SmartDeposit storage r = _smartDeposits[u];
            if (r.status == RequestStatus.None) continue;
            if (onlyPending && r.status != RequestStatus.Pending) continue;

            users[idx]    = u;
            requests[idx] = r;
            idx++;
        }
    }

    /// @notice List of all smart conclusions (user + struct), only Pending or all.
    function getAllSmartWithdraws(bool onlyPending)
        public
        view
        returns (address[] memory users, SmartWithdraw[] memory requests)
    {
        uint256 lenAll = _allSmartWithdrawUsers.length;
        uint256 count;

        // 1st pass: we consider suitable
        for (uint256 i = 0; i < lenAll; i++) {
            SmartWithdraw storage r = _smartWithdraws[_allSmartWithdrawUsers[i]];
            if (r.status == RequestStatus.None) continue;
            if (onlyPending && r.status != RequestStatus.Pending) continue;
            count++;
        }

        users    = new address[](count);
        requests = new SmartWithdraw[](count);

        // 2nd pass: fill in
        uint256 idx;
        for (uint256 i = 0; i < lenAll; i++) {
            address u = _allSmartWithdrawUsers[i];
            SmartWithdraw storage r = _smartWithdraws[u];
            if (r.status == RequestStatus.None) continue;
            if (onlyPending && r.status != RequestStatus.Pending) continue;

            users[idx]    = u;
            requests[idx] = r;
            idx++;
        }
    }

    /// @notice Receive all smart requests at once: both deposits and withdrawals.
    function getAllSmartRequests(bool onlyPending)
        external
        view
        returns (
            address[] memory depositUsers,
            SmartDeposit[] memory depositRequests,
            address[] memory withdrawUsers,
            SmartWithdraw[] memory withdrawRequests
        )
    {
        (depositUsers, depositRequests)   = getAllSmartDeposits(onlyPending);
        (withdrawUsers, withdrawRequests) = getAllSmartWithdraws(onlyPending);
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

    /// It is recommended to change settleIndex only when WL is empty (see commented require).
    function setSettleIndex(uint128 idx) external onlyOwner {
        require(idx < POOL_ASSETS, "WL: bad settle index");
        // require(totalSupply() == 0, "WL: change settleIndex only when empty");
        settleIndex = idx;
        emit UpdateSettleIndex(idx);
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
        uint256 balLp = dsfLp.balanceOf(address(this));
        if (feeLp > balLp) feeLp = balLp;

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
        for (uint i = 0; i < POOL_ASSETS; i++) {
            require(token != address(tokens[i]), "WL: pool token");
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
        if (ts == 0) { HWM_grossPricePerShareUSDT = 0; return; }

        uint256 priceGross = projectSharePriceGrossUSDT();
        if (HWM_grossPricePerShareUSDT == 0) { HWM_grossPricePerShareUSDT = priceGross; return; }

        if (priceGross * DENOM < HWM_grossPricePerShareUSDT * (DENOM + minSkimGainBps)) return;

        uint256 feeUSDT = projectAccruedFeeUSDT();
        if (feeUSDT == 0) { HWM_grossPricePerShareUSDT = priceGross; return; }

        uint256 lpBalance   = dsfLp.balanceOf(address(this));
        uint256 grossUSDT   = projectGrossUSDT();
        if (grossUSDT == 0 || lpBalance == 0) { HWM_grossPricePerShareUSDT = priceGross; return; }

        // feeLp = feeUSDT * lpBalance / grossUSDT
        uint256 feeLp = (feeUSDT * lpBalance) / grossUSDT;
        uint256 balLp = dsfLp.balanceOf(address(this));
        if (feeLp > balLp) feeLp = balLp;

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
        netAllUSDT            = grossAllUSDT > feeUncrystallizedUSDT ? grossAllUSDT - feeUncrystallizedUSDT : 0;
        if (totalSupply() == 0) return (grossAllUSDT, feeUncrystallizedUSDT, netAllUSDT, 0);
        userNetUSDT           = (wlShares * netAllUSDT) / totalSupply();
    }
}