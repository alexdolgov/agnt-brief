// SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

/* ──────────────────────────────────────────────────────────────────────────────
 * Vault — on-chain share token over a core LP position with principal accounting in USDT
 *
 * Public methods:
 *   - deposit(uint256[POOL_ASSETS] memory amounts)
 *   - withdraw(uint256 shares, uint128 tokenIndex)         // OneCoin withdraw
 *
 * Core idea:
 *   This contract is an ERC20 “shares” wrapper around a core LP balance.
 *   It adds:
 *     - principal accounting (“deposit body”) tracked in USDT
 *     - high-water-mark (HWM) performance fee in bps
 *     - Smart requests (create/complete/cancel) for deposits & withdrawals
 *     - unified on-chain user operation history (UserTx)
 *
 * NAV & pricing model (USDT-settled):
 *   1) grossUSDT        = preview value of ALL core LP in settle token (usually USDT)
 *   2) accruedFeeUSDT   = uncrystallized HWM fee (in USDT)
 *   3) totalHoldings    = grossUSDT - accruedFeeUSDT          // NET NAV in USDT
 *   4) LPprice          = totalHoldings / totalSupply         // NET price per share (1e18)
 *   5) userNetUSDT      = userShares * LPprice
 *
 * Principal accounting (USDT):
 *   - Deposit:
 *       depositBody[user] += availableToWithdrawal(mintedShares)
 *   - Withdrawal:
 *       compute netUSDT for `shares`, split into principal/profit,
 *       and reduce depositBody[user] only by the principal portion.
 *   - Transfer:
 *       a proportional part of depositBody is moved from `from` → `to`.
 *
 * Unified operation history (event UserTx), amounts are NET in USDT:
 *
 *   opCode encoding: kind + mode + status
 *
 *     kind:   0=deposit, 1=withdraw, 2=transferOut, 3=transferIn
 *     mode:   0=Fast,    1=Smart
 *     status: 0=Pending, 1=Completed, 2=Cancelled, 3=Failed
 *
 *   Fast (always Completed):
 *     opCode = kind + 1                // 1..4
 *
 *   Smart:
 *     opCode = (kind + 1) * 10 + status
 *     // 10 = deposit  Smart Pending
 *     // 11 = deposit  Smart Completed
 *     // 12 = deposit  Smart Cancelled
 *     // 13 = deposit  Smart Failed
 *     // 20 = withdraw Smart Pending
 *     // 21 = withdraw Smart Completed
 *     // 22 = withdraw Smart Cancelled
 *     // 23 = withdraw Smart Failed
 *
 *   event UserTx(
 *       address indexed user,
 *       uint8   opCode,       // combined kind+mode+status
 *       uint8   tokenIndex,   // 0..2 (DAI/USDC/USDT), 255 = NONE/settle-only
 *       uint64  timestamp,
 *       uint64  requestId,    // 0 = no smart request
 *       uint256 amountUSDT,   // NET amount in USDT (or 0 if unknown at Pending stage)
 *       uint256 amountToken,  // raw token amount (if applicable)
 *       uint256 shares,       // shares involved in this operation
 *       address indexed otherParty // transfer counterparty
 *   );
 *
 * Future income (CRV/CVX/etc):
 *   - External source (dsfUserData) provides aggregated future income (GROSS) in USDT.
 *   - Users' NET future share (after fee):
 *         totalFutureIncomeUsersUSDT = futureGrossUSDT * (DENOM - partnerFeeBps) / DENOM
 *   - Per-user:
 *         userFutureUSDT = totalFutureIncomeUsersUSDT * userShares / totalSupply
 *
 * Smart requests:
 *   - createSmartDeposit(amounts)
 *       Tokens are pulled from the user immediately, request becomes Pending.
 *   - completeSmartDeposits(users[])
 *       Anyone can batch-complete deposits; shares are minted to users.
 *   - cancelSmartDeposit()
 *       Deletes request and returns tokens to the user.
 *
 *   - createSmartWithdraw(shares, tokenIndex)
 *       Creates a Pending withdrawal request. Shares stay with the user until completion.
 *   - completeSmartWithdraws(users[])
 *       Anyone can batch-complete withdrawals; shares are burned and tokens are sent to users.
 *   - cancelSmartWithdraw()
 *       Deletes request (shares remain with the user).
 *
 * Fee model (HWM performance fee):
 *   - HWM is tracked in terms of the GROSS share price in USDT (1e18).
 *   - When GROSS price rises above HWM, an uncrystallized fee accrues:
 *         profitTotalUSDT = (priceGross - HWM) * totalSupply
 *         feeUSDT         = profitTotalUSDT * partnerFeeBps / DENOM
 *   - Fee is crystallized by skimming core LP proportionally to feeUSDT.
 *   - Auto-skim is softly triggered before user actions if the gain exceeds minSkimGainBps.
 *
 * Token conversion for per-token availability:
 *   - The contract previews GROSS value in settle token + selected token via core strategy:
 *         calcWithdrawOneCoin(ratio1e18, tokenIndex)
 *   - NET/GROSS factor is computed in USDT and applied to token preview:
 *         netAllToken = grossToken * netUSDTAll / grossUSDT
 *     Assumption: strategy previews are in consistent “token units” scale for each token.
 *     If previews are raw token amounts, decimals must be consistent (which is true for
 *     per-token outputs returned by the strategy), otherwise the ratio loses meaning.
 *
 * Slippage:
 *   - Slippage protection is handled inside the core contracts.
 *   - This contract forwards parameters and maintains accounting + history.
 * ──────────────────────────────────────────────────────────────────────────── */

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

/* ── Mini-interfaces to the already deployed core ───────────────────────────── */

interface ICoreVault {
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

interface IDSFAggregated {
    function getWithdrawalAmounts(address user) external view returns (uint256[3] memory out);
    function getCVXCRVUserShareAggregated(address user) external view returns (
        uint256 amountIn_cvx,
        uint256 amountIn_crv,
        uint256 cvxEarningsUSDT,
        uint256 crvEarningsUSDT
    );
    function getRoundTripEfficiencyForDepositPoolByAmounts(uint256[3] calldata amountsTokenUnits)
        external view returns (uint256[3] memory roundTripEff1e18);
}

// core Strategy: one-coin preview by LP share (1e18)
interface IStrategyView {
    function calcWithdrawOneCoin(uint256 lpShareRatio1e18, uint128 tokenIndex)
        external
        view
        returns (uint256 tokenAmount);
}

interface IERC20Decimals {
    function decimals() external view returns (uint8);
}

contract coreVault_USDT is ERC20, Ownable, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // ════════════════════════════════════════════════════════════════════════
    //  STORAGE / CONSTANTS
    // ════════════════════════════════════════════════════════════════════════

    uint8   public constant POOL_ASSETS = 3;
    uint256 public constant DENOM       = 10_000;   // bps
    uint256 public constant USER_COOLDOWN_BLOCKS = 1;

    uint256 public FLOOR_TEST_AMOUNT = 50_000; // whole tokens
    uint256 public CAP_TEST_AMOUNT   = 500_000; // whole tokens

    /// @notice Special token index value for “not applicable”
    uint8 public constant TOKEN_INDEX_NONE = type(uint8).max; // 255

    /// @notice Threshold for HWM skim: minimal increase of GROSS share price (bps) required to skim
    uint256 public minSkimGainBps = 1; // 0.01%

    // External addresses
    ICoreVault   public immutable core;
    IERC20 public immutable coreLp;
    IERC20[POOL_ASSETS] public tokens; // [DAI, USDC, USDT]
    IDSFAggregated public dsfUserData; // DSFuserDataMk2_Aggregated

    /// @notice Settle token index (0..2) used for USDT-denominated principal and NAV (usually 2 = USDT)
    uint128 public settleIndex;

    /// @notice Treasury address that receives skimmed performance fee (in core LP)
    address public principalTreasury;

    /// @notice Performance fee in bps (e.g., 3000 = 30%) applied on gains above HWM
    uint16 public partnerFeeBps;

    // HWM and anti-MEV accounting
    /// @notice High-water mark tracked as GROSS price per share in settle token (USDT), 1e18 precision
    uint256 public HWM_grossPricePerShareUSDT;
    uint256 public lastNavTouchBlock;                       // NAV protection within a single unit
    mapping(address => uint256) public lastUserActionBlock; // per-user cooldown

    /// @notice Snapshot of the “collected” commission (fee) in USDT — for analytical purposes only
    uint256 public ownerFeeSnapshotUSDT;

    /// @notice User deposit amount in USDT (NET)
    mapping(address => uint256) private _userDepositBody;

    /// @notice Global smart-request counter
    uint64 private _lastRequestId;

    /// @notice Emergency recovery admin (e.g., a multisig)
    address public recoveryAdmin;

    // ── Smart applications ─────────────────────────────────────────────────────

    struct SmartDeposit {
        uint64        requestId;   // 0 = no active application
        uint256[3]    amounts;     // tokens are already
    }

    struct SmartWithdraw {
        uint64        requestId;   // 0 = no active application
        uint256       lpShares;
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

    event SkimFeeUSDT(uint256 feeUSDT, uint256 coreLpFeeToTreasury, uint256 newHwmGrossPricePerShareUSDT);

    event UpdatePartnerFeeBps(uint16 newBps);
    event UpdatePrincipalTreasury(address newTreasury);
    event UpdateMinSkimGainBps(uint256 newMinBps);
    event TestAmountBoundsUpdated(uint256 newFloorWhole, uint256 newCapWhole);
    event UpdateDsfUserData(address indexed oldAddr, address indexed newAddr);

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
        uint256 lpShares,   // shares involved
        address indexed otherParty // transfer counterparty
    );

    event UpdateRecoveryAdmin(address indexed oldAdmin, address indexed newAdmin);
    event RecoveryOwnershipTransfer(address indexed oldOwner, address indexed newOwner);

    // ════════════════════════════════════════════════════════════════════════
    //  CONSTRUCTOR
    // ════════════════════════════════════════════════════════════════════════

    constructor(
        address _core,
        address _coreLp,
        address[POOL_ASSETS] memory _tokens,
        address _principalTreasury,
        uint16  _partnerFeeBps,
        uint128 _settleIndex,
        address _recoveryAdmin,
        address _dsfUserData
    )
        Ownable(msg.sender)
        ERC20("Fin LP", "FinLP")
    {
        require(_core != address(0) && _coreLp != address(0), "Fin: bad core addrs");
        require(_principalTreasury != address(0), "Fin: bad treasury");
        require(_partnerFeeBps <= DENOM, "Fin: fee too high");
        require(_settleIndex < POOL_ASSETS, "Fin: bad settle index");
        require(_dsfUserData != address(0), "Fin: bad dsfUserData");

        dsfUserData = IDSFAggregated(_dsfUserData);
        core = ICoreVault(_core);
        coreLp = IERC20(_coreLp);
        principalTreasury = _principalTreasury;
        partnerFeeBps = _partnerFeeBps;
        settleIndex = _settleIndex;

        for (uint i = 0; i < POOL_ASSETS;) {
            require(_tokens[i] != address(0), "Fin: bad token");
            tokens[i] = IERC20(_tokens[i]);
            unchecked { ++i; }
        }

        HWM_grossPricePerShareUSDT = 0; // will be charged upon the first deposit

        require(_recoveryAdmin != address(0), "Fin: bad recovery admin");
        recoveryAdmin = _recoveryAdmin;
        emit UpdateRecoveryAdmin(address(0), _recoveryAdmin);
    }

    // ════════════════════════════════════════════════════════════════════════
    //  INTERNAL UTILS / MODIFIERS
    // ════════════════════════════════════════════════════════════════════════

    function _touchNav() internal {
        lastNavTouchBlock = block.number;
    }

    modifier userCooldown() {
        require(block.number >= lastUserActionBlock[msg.sender] + USER_COOLDOWN_BLOCKS, "Fin: cooldown");
        _;
        lastUserActionBlock[msg.sender] = block.number;
    }

    modifier onlyRecoveryAdmin() {
        require(msg.sender == recoveryAdmin, "Fin: not recovery admin");
        _;
    }

    function _nextRequestId() internal returns (uint64) {
        _lastRequestId += 1;
        return _lastRequestId;
    }

    /// @dev Encode (kind, mode, status) → opCode для события UserTx.
    /// kind:   0=deposit,1=withdraw,2=transferOut,3=transferIn
    /// mode:   0=Fast,1=Smart
    /// status: 0=Pending,1=Completed,2=Cancelled,3=Failed
    function _encodeOp(
        uint8 kind,
        uint8 mode,
        uint8 status
    ) internal pure returns (uint8) {
        require(kind <= 3, "Fin: bad kind");
        require(mode <= 1, "Fin: bad mode");

        if (mode == 0) {
            require(status == 1, "Fin: fast must be completed");
            // Fast operations (always Completed in the contract)
            // 1=deposit,2=withdraw,3=transferOut,4=transferIn
            return kind + 1;
        } else {
            // Smart
            require(status <= 3, "Fin: bad status");
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

    function _pow10(uint8 d) internal pure returns (uint256) {
        uint256 r = 1;
        for (uint256 i = 0; i < d; i++) r *= 10;
        return r;
    }

    // ════════════════════════════════════════════════════════════════════════
    //  PROJECT / GLOBAL READ-ONLY (NAV, FEES, FUTURE INCOME)
    // ════════════════════════════════════════════════════════════════════════

    /// @dev GROSS NAV of the entire Fin project in USDT (before Fin fees)
    function projectGrossUSDT() public view returns (uint256) {
        (uint256 grossUSDT, ) = _previewGrossUSDTAndToken(settleIndex);
        return grossUSDT;
    }

    /// @dev GROSS price of 1 FinLP share for the project in USDT, 1e18 precision
    function projectSharePriceGrossUSDT() public view returns (uint256) {
        uint256 ts = totalSupply();
        if (ts == 0) return 0;
        uint256 g = projectGrossUSDT();
        return (g * 1e18) / ts;
    }

    /// @dev Accumulated HWM-fee of the project in USDT (not yet collected in the treasury)
    function projectAccruedFeeUSDT() public view returns (uint256) {
        uint256 ts = totalSupply();
        if (ts == 0 || HWM_grossPricePerShareUSDT == 0) return 0;

        uint256 priceGross1e18 = projectSharePriceGrossUSDT();
        if (priceGross1e18 <= HWM_grossPricePerShareUSDT) return 0;

        // Profit per 1 FinLP share (GROSS), 1e18 precision
        uint256 profitPerShare1e18 = priceGross1e18 - HWM_grossPricePerShareUSDT;

        // Total Fin profit in USDT:
        uint256 profitTotalUSDT = (profitPerShare1e18 * ts) / 1e18;

        // Fin-fee share of this profit
        return (profitTotalUSDT * partnerFeeBps) / DENOM;
    }

    /// @notice NET total holdings of all Fin users in USDT
    function totalHoldings() public view returns (uint256) {
        uint256 g = projectGrossUSDT();
        uint256 f = projectAccruedFeeUSDT();
        return g > f ? g - f : 0;
    }

    /// @notice NET price of 1 Fin share (LPprice) in USDT, 1e18 precision
    function LPprice() public view returns (uint256) {
        uint256 ts = totalSupply();
        if (ts == 0) return 0;
        return (totalHoldings() * 1e18) / ts;
    }

    /// @dev Internal GROSS future income Fin (before Fin fees) in USDT
    function _totalFutureIncomeGrossUSDT() internal view returns (uint256) {
        (, , uint256 cvxUsd, uint256 crvUsd) = dsfUserData.getCVXCRVUserShareAggregated(address(this));
        return cvxUsd + crvUsd;
    }

    /// @notice NET future income of all Fin users (after Fin fee), in USDT
    function totalFutureIncomeUsersUSDT() public view returns (uint256) {
        uint256 gross = _totalFutureIncomeGrossUSDT();
        if (gross == 0) return 0;
        // User share: (DENOM - partnerFeeBps) / DENOM
        return (gross * (DENOM - partnerFeeBps)) / DENOM;
    }

    /// @notice Future revenue split: users / Fin owner (estimate), in USDT
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

    /// @notice NET value of `shares` in settle token (USDT) that can be withdrawn now
    function availableToWithdrawal(uint256 lpShares) public view returns (uint256) {
        return availableToWithdrawalPerToken(lpShares, settleIndex);
    }

    /// @notice NET value of `lpShares` in each of the three tokens (DAI/USDC/USDT)
    function availableToWithdrawalPerToken(uint256 lpShares)
        public
        view
        returns (uint256[POOL_ASSETS] memory out)
    {
        if (lpShares == 0) return out;
        for (uint256 i = 0; i < POOL_ASSETS;) {
            out[i] = availableToWithdrawalPerToken(lpShares, uint128(i));
            unchecked { ++i; }
        }
    }

    /// @notice NET value of `shares` expressed in a specific token (DAI/USDC/USDT),
    ///         using USDT-derived NET/GROSS factor and token preview from the strategy
    function availableToWithdrawalPerToken(uint256 lpShares, uint128 tokenIndex)
        public
        view
        returns (uint256 out)
    {
        if (lpShares == 0) return 0;
        require(tokenIndex < POOL_ASSETS, "Fin: bad token index");

        uint256 ts = totalSupply();
        if (ts == 0) return 0;

        (uint256 grossUSDT, uint256 grossToken) = _previewGrossUSDTAndToken(tokenIndex);
        if (grossUSDT == 0 || grossToken == 0) return 0;

        // If HWM has not yet been set or the price has not increased, there is no commission, net = gross
        if (HWM_grossPricePerShareUSDT == 0) {
            // There is no commission yet
            uint256 netAllTokenNoFee = grossToken;
            return (lpShares * netAllTokenNoFee) / ts;
        }

        uint256 priceGross1e18 = (grossUSDT * 1e18) / ts;
        if (priceGross1e18 <= HWM_grossPricePerShareUSDT) {
            // price increase does not exceed HWM → no uncrystallized commission
            uint256 netAllTokenNoFee2 = grossToken;
            return (lpShares * netAllTokenNoFee2) / ts;
        }

        // Profit per 1 FinLP share (GROSS), 1e18
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

        // now proportional to the share of lpShares from totalSupply
        out = (lpShares * netAllToken) / ts;
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

    /// @notice User principal (“deposit body”) in USDT (NET)
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

    /// @notice User future income estimate (NET after fee) in USDT, proportional to share balance
    function userFutureIncomeUSDT(address user) public view returns (uint256) {
        uint256 lp = balanceOf(user);
        if (lp == 0) return 0;

        uint256 ts = totalSupply();
        if (ts == 0) return 0;

        uint256 totalUsersFuture = totalFutureIncomeUsersUSDT();
        return (lp * totalUsersFuture) / ts;
    }

    /// @notice Current smart requests (deplposit + withdraw) for a user
    function userSmartRequests(address user)
        external
        view
        returns (SmartDeposit memory depositReq, SmartWithdraw memory withdrawReq)
    {
        depositReq  = _smartDeposits[user];
        withdrawReq = _smartWithdraws[user];
    }


    /// @notice Owner-level snapshot: NAV (gross/net), fees (realized/unrealized), future income split,
    ///         core LP balances (vault + treasury) valued in USDT, pending smart request lists,
    ///         and all-time earned (crystallized fee snapshot).
    function ownerData()
        external
        view
        returns (
            // Project-level NAV
            uint256 grossAllUSDT,              // GROSS NAV of FinLP in USDT
            uint256 netAllUSDT,                // NET NAV of FinLP in USDT (totalHoldings)
            uint256 lpSharePriceNet1e18,       // LPprice()  (NET FinLP share price)
            uint256 lpSharePriceGross1e18,     // projectSharePriceGrossUSDT()

            // HWM-fee (owner's income from Fin-fee)
            uint256 realizedFeeUSDT,           // already crystallized (ownerFeeSnapshotUSDT)
            uint256 uncrystallizedFeeUSDT,     // projectAccruedFeeUSDT() — not yet skimmed fee
            uint256 totalOwnerFeeUSDT,         // realized + unrealized

            // Future income (CRV/CVX/etc) share of owner
            uint256 futureOwnerIncomeUSDT,     // owner’s share of future income
            uint256 totalOwnerWithFutureUSDT,  // totalOwnerFeeUSDT + futureOwnerIncomeUSDT

            // Fin fee settings
            uint16  lpFeeBps,                  // partnerFeeBps (e.g. 3000 = 30%)

            // core LP balances and their USDT-equivalent
            uint256 coreLpAtLP,                // coreLp.balanceOf(address(this))
            uint256 coreLpAtTreasury,          // coreLp.balanceOf(principalTreasury)
            uint256 coreLpPricePerLpUSDT1e18,  // price of 1 core LP in USDT (1e18)
            uint256 coreLpValueLPUSDT,         // coreLpAtLP * price
            uint256 coreLpValueTreasuryUSDT,   // coreLpAtTreasury * price

            address[] memory depositUsers,
            address[] memory withdrawUsers,

            uint256 allTimeEarnedUSDT
        )
    {
        // NAV
        grossAllUSDT          = projectGrossUSDT();
        netAllUSDT            = totalHoldings();
        lpSharePriceNet1e18   = LPprice();
        lpSharePriceGross1e18 = projectSharePriceGrossUSDT();

        // HWM-fee
        realizedFeeUSDT       = ownerFeeSnapshotUSDT;
        uncrystallizedFeeUSDT = projectAccruedFeeUSDT();
        totalOwnerFeeUSDT     = realizedFeeUSDT + uncrystallizedFeeUSDT;

        // Future income (GROSS) for LP in USDT
        uint256 futureGrossLP = _totalFutureIncomeGrossUSDT();
        if (futureGrossLP == 0) {
            futureOwnerIncomeUSDT  = 0;
        } else {
            // owner share = futureGrossLP * partnerFeeBps / DENOM
            futureOwnerIncomeUSDT = (futureGrossLP * partnerFeeBps) / DENOM;
        }

        totalOwnerWithFutureUSDT = totalOwnerFeeUSDT + futureOwnerIncomeUSDT;

        // LP fee settings
        lpFeeBps = partnerFeeBps;

        // core LP balances
        coreLpAtLP       = coreLp.balanceOf(address(this));
        coreLpAtTreasury = coreLp.balanceOf(principalTreasury);

        coreLpPricePerLpUSDT1e18 = _coreLpPricePerLpUSDT1e18();

        if (coreLpPricePerLpUSDT1e18 > 0) {
            coreLpValueLPUSDT       = (coreLpAtLP * coreLpPricePerLpUSDT1e18) / 1e18;
            coreLpValueTreasuryUSDT = (coreLpAtTreasury * coreLpPricePerLpUSDT1e18) / 1e18;
        } else {
            coreLpValueLPUSDT       = 0;
            coreLpValueTreasuryUSDT = 0;
        }

        depositUsers  = getAllSmartDeposits();
        withdrawUsers = getAllSmartWithdraws();

        allTimeEarnedUSDT = ownerFeeSnapshotUSDT;
    }

    /// @notice Full per-user snapshot: shares, principal, current NAV, future income,
    ///         per-token NET availability, round-trip efficiency, wallet balances/allowances,
    ///         ETH balance, and current smart requests.
    function userData(address user)
        external
        view
        returns (
            uint256 lpBalance,
            uint256 depositBodyUSDT,
            uint256 netNowUSDT,
            uint256 futureIncomeUSDT,
            uint256 totalWithFutureUSDT,
            uint256[POOL_ASSETS] memory perTokenNet,
            uint256[POOL_ASSETS] memory roundTripEff1e18,
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

        uint256[POOL_ASSETS] memory effTestAmountsTokenUnitsLocal;

        for (uint256 i = 0; i < POOL_ASSETS; ) {
            // fetch decimals once (cheap in view)
            uint8 dec = IERC20Decimals(address(tokens[i])).decimals();
            uint256 oneToken = _pow10(dec);

            uint256 floorUnits = FLOOR_TEST_AMOUNT * oneToken;
            uint256 capUnits   = CAP_TEST_AMOUNT * oneToken;
            
            uint256 bal = walletTokenBalances[i];

            // If balance < 1 token → FLOOR, else min(balance, CAP)
            uint256 testAmt = (bal < oneToken) ? floorUnits : (bal < capUnits ? bal : capUnits);

            effTestAmountsTokenUnitsLocal[i] = testAmt;

            unchecked { ++i; }
        }

        // Now get efficiencies from DSFuserDataMk2 (external view)
        roundTripEff1e18 = dsfUserData.getRoundTripEfficiencyForDepositPoolByAmounts(effTestAmountsTokenUnitsLocal);

        lpBalance = balanceOf(user);
        if (lpBalance == 0) {
            // perTokenNet, netNowUSDT, futureIncomeUSDT, totalWithFutureUSDT remain zero
            return (
                lpBalance,
                depositBodyUSDT,
                0,
                0,
                0,
                perTokenNet,
                roundTripEff1e18,
                walletTokenBalances,
                walletTokenAllowances,
                ethBalance,
                depositReq,
                withdrawReq
            );
        }

        // Current NET in USDT
        netNowUSDT = availableToWithdrawal(lpBalance);

        // User's future income (NET) in USDT
        futureIncomeUSDT = userFutureIncomeUSDT(user);

        // Total current + future
        totalWithFutureUSDT = netNowUSDT + futureIncomeUSDT;

        // NET on three tokens
        perTokenNet = availableToWithdrawalPerToken(lpBalance);

        return (
            lpBalance,
            depositBodyUSDT,
            netNowUSDT,
            futureIncomeUSDT,
            totalWithFutureUSDT,
            perTokenNet,
            roundTripEff1e18,
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

    /// @notice Deposit into shares vault (signature compatible with core deposit)
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
        // 2) Approve core and call deposit
        for (uint i = 0; i < POOL_ASSETS;) {
            if (amounts[i] > 0) {
                tokens[i].forceApprove(address(core), 0);
                tokens[i].forceApprove(address(core), amounts[i]);
            }
            unchecked { ++i; }
        }

        uint256 lpBefore = coreLp.balanceOf(address(this));
        core.deposit(amounts); // all checks for slippage within core
        uint256 lpAfter  = coreLp.balanceOf(address(this));
        uint256 lpGained = lpAfter - lpBefore;
        require(lpGained > 0, "Fin: no core lp");

        // 3) Mint LP shares proportional to core LP
        uint256 tsBefore = totalSupply();
        uint256 lpMint;
        if (tsBefore == 0) {
            lpMint = lpGained; // start 1:1 LP↔LP
        } else {
            require(lpBefore > 0, "Fin: zero lpBefore");
            lpMint = (tsBefore * lpGained) / lpBefore;
        }
        _mint(msg.sender, lpMint);

        // 4) We fix the deposit amount in USDT at the current NET price.
        uint256 addedBodyUSDT = availableToWithdrawal(lpMint);
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
                lpMint,
                address(0)
            );
        }

        // 5) If this is the first deposit, we set the HWM at the GROSS price.
        if (tsBefore == 0) {
            HWM_grossPricePerShareUSDT = projectSharePriceGrossUSDT();
        }

        _touchNav();
    }

    /// @notice Withdraw by burning `shares` into a single token (OneCoin path)
    /// @param lpShares Number of shares to burn (name kept for compatibility)
    /// @param tokenIndex Token index for OneCoin (0..2)
    function withdraw(
        uint256 lpShares,
        uint128 tokenIndex
    )
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        require(tokenIndex < POOL_ASSETS, "Fin: bad token index");

        _trySkim();

        require(lpShares > 0 && balanceOf(msg.sender) >= lpShares, "Fin: bad shares");

        // NET view in USDT for these LP shares
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
        uint256 lpBalBefore = coreLp.balanceOf(address(this));
        require(tsBefore > 0 && lpBalBefore > 0, "Fin: empty");

        // Proportional translation LP → core LP
        uint256 coreLpRedeem = (lpBalBefore * lpShares) / tsBefore;
        require(coreLpRedeem > 0, "Fin: no redeem");

        _burn(msg.sender, lpShares);

        uint256[POOL_ASSETS] memory balBefore;
        for (uint i = 0; i < POOL_ASSETS;) {
            balBefore[i] = IERC20(tokens[i]).balanceOf(address(this));
            unchecked { ++i; }
        }

        coreLp.forceApprove(address(core), 0);
        coreLp.forceApprove(address(core), coreLpRedeem);

        uint256[POOL_ASSETS] memory minOut;

        // All slippage conditions and minOut inside core
        core.withdraw(
            coreLpRedeem,
            minOut,
            ICoreVault.WithdrawalType.OneCoin,
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

        // Self-transfer: do nothing special
        if (from == to) {
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

            // Log the transfer amount in USDT at the current LP NET price
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

    /// @notice Create a smart deposit request: tokens are pulled immediately, request becomes Pending
    function createSmartDeposit(uint256[POOL_ASSETS] memory amounts)
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        SmartDeposit storage req = _smartDeposits[msg.sender];
        require(req.requestId == 0, "Fin: deposit req exists");

        bool nonzero;
        for (uint i = 0; i < POOL_ASSETS;) {
            uint256 a = amounts[i];
            if (a > 0) {
                nonzero = true;
                tokens[i].safeTransferFrom(msg.sender, address(this), a);
            }
            unchecked { ++i; }
        }
        require(nonzero, "Fin: zero amounts");

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
            0,                    // lpShares unknown yet
            address(0)
        );
    }

    /// @notice Cancel a pending smart deposit request and return tokens to the user
    function cancelSmartDeposit()
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        SmartDeposit storage reqStorage = _smartDeposits[msg.sender];
        require(reqStorage.requestId != 0, "Fin: no pending deposit");

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

    /// @notice Batch-complete smart deposits for given users (anyone can call); mints shares and records principal
    function completeSmartDeposits(address[] calldata users)
        external
        nonReentrant
        whenNotPaused
    {
        uint256 len = users.length;
        require(len > 0, "Fin: empty batch");

        _trySkim();

        uint256[POOL_ASSETS] memory totalByToken;
        // userTokenAmounts[i][j] = how many tokens j user i contributed
        uint256[POOL_ASSETS][] memory userTokenAmounts = new uint256[POOL_ASSETS][](len);
        uint64[] memory reqIds = new uint64[](len);

        // For later principal & history: how much LP minted per user / per token
        uint256[] memory lpMintTotalPerUser = new uint256[](len);
        uint256[POOL_ASSETS][] memory lpMintPerUserPerToken = new uint256[POOL_ASSETS][](len);

        // Calculate for each user:
        //   - read SmartDeposit
        //   - collect amounts by tokens
        //   - clear application storage
        for (uint256 i = 0; i < len;) {
            address u = users[i];
            SmartDeposit storage reqStorage = _smartDeposits[u];
            uint64 requestId = reqStorage.requestId;
            require(requestId != 0, "Fin: no pending deposit");

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

            require(nonzero, "Fin: zero amounts");

            reqIds[i] = requestId;
            reqStorage.requestId = 0;

            unchecked { ++i; }
        }

        // If the vault was empty before the batch, remember this for HWM
        uint256 tsAtStart = totalSupply();

        // For each token, we create a separate core.deposit if the amount is > 0
        for (uint256 tokenIdx = 0; tokenIdx < POOL_ASSETS;) {
            uint256 tokenTotal = totalByToken[tokenIdx];
            if (tokenTotal > 0) {
                // 1) One common core.deposit for this token
                uint256[POOL_ASSETS] memory oneTokenAmounts;
                oneTokenAmounts[tokenIdx] = tokenTotal;

                tokens[tokenIdx].forceApprove(address(core), 0);
                tokens[tokenIdx].forceApprove(address(core), tokenTotal);

                uint256 lpBefore = coreLp.balanceOf(address(this));
                uint256 tsBefore = totalSupply();

                core.deposit(oneTokenAmounts);

                uint256 lpAfter  = coreLp.balanceOf(address(this));
                uint256 lpGained = lpAfter - lpBefore;
                require(lpGained > 0, "Fin: no core lp");

                uint256 lpTotalMint;
                if (tsBefore == 0) {
                    lpTotalMint = lpGained;
                } else {
                    require(lpBefore > 0, "Fin: zero lpBefore");
                    lpTotalMint = (tsBefore * lpGained) / lpBefore;
                }
                require(lpTotalMint > 0, "Fin: no LP mint");

                // 2) Find the last user with a non-zero balance for this token
                uint256 lastIdx;
                for (uint256 i = 0; i < len;) {
                    if (userTokenAmounts[i][tokenIdx] > 0) {
                        lastIdx = i;
                    }
                    unchecked { ++i; }
                }

                // 3) Distribute LPtoken by tokenTotal shares
                uint256 remainingWl = lpTotalMint;
                for (uint256 i = 0; i < len;) {
                    uint256 userAmt = userTokenAmounts[i][tokenIdx];
                    if (userAmt > 0) {
                        uint256 lpForUser;
                        if (i == lastIdx) {
                            lpForUser = remainingWl;
                        } else {
                            lpForUser = (lpTotalMint * userAmt) / tokenTotal;
                            remainingWl -= lpForUser;
                        }

                        if (lpForUser > 0) {
                            address user = users[i];
                            _mint(user, lpForUser);

                            lpMintTotalPerUser[i]                 += lpForUser;
                            lpMintPerUserPerToken[i][tokenIdx]    = lpForUser;
                        }
                    }
                    unchecked { ++i; }
                }
            }
            unchecked { ++tokenIdx; }
        }

        // If the LP batch was empty before — set the HWM at the current GROSS price
        if (tsAtStart == 0 && totalSupply() > 0) {
            HWM_grossPricePerShareUSDT = projectSharePriceGrossUSDT();
        }

        // Calculate NET NAV and LPprice once, distribute the deposit amount, and log events
        uint256 price1e18 = LPprice();
        if (price1e18 > 0) {
            for (uint256 i = 0; i < len;) {
                uint256 lpUserTotal = lpMintTotalPerUser[i];
                if (lpUserTotal == 0) {
                    unchecked { ++i; }
                    continue;
                }

                address user   = users[i];
                uint256 oldBody = _userDepositBody[user];
                uint256 addedBodyTotal;

                // for each token through which this user logged in
                for (uint256 tokenIdx = 0; tokenIdx < POOL_ASSETS;) {
                    uint256 lpForTokenUser = lpMintPerUserPerToken[i][tokenIdx];
                    if (lpForTokenUser > 0) {
                        uint256 addedBodyPart = (lpForTokenUser * price1e18) / 1e18;
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
                            lpForTokenUser,
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

    /// @notice Create a smart withdrawal request for `shares` into `tokenIndex` (shares are burned on completion)
    function createSmartWithdraw(uint256 lpShares, uint128 tokenIndex)
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        require(lpShares > 0, "Fin: zero shares");
        require(tokenIndex < POOL_ASSETS, "Fin: bad token index");
        require(balanceOf(msg.sender) >= lpShares, "Fin: not enough LP");

        SmartWithdraw storage req = _smartWithdraws[msg.sender];
        require(req.requestId == 0, "Fin: withdraw req exists");

        uint64 requestId = _nextRequestId();

        req.requestId = requestId;
        req.lpShares  = lpShares;
        req.tokenIndex = tokenIndex;

        if (!_seenSmartWithdrawUser[msg.sender]) {
            _seenSmartWithdrawUser[msg.sender] = true;
            _allSmartWithdrawUsers.push(msg.sender);
        }

        // Preview in USDT and in a specific token
        uint256 previewNowUSDT = availableToWithdrawal(lpShares);
        uint256 previewTokenAmount = (tokenIndex == settleIndex)
            ? previewNowUSDT
            : availableToWithdrawalPerToken(lpShares, tokenIndex);

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
            lpShares,
            address(0)
        );
    }

    /// @notice Cancel a pending smart withdrawal request (shares remain with the user)
    function cancelSmartWithdraw()
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        SmartWithdraw storage reqStorage = _smartWithdraws[msg.sender];
        require(reqStorage.requestId != 0, "Fin: no pending withdraw");

        uint64 requestId = reqStorage.requestId;
        uint256 lpShares = reqStorage.lpShares;

        reqStorage.requestId  = 0;
        reqStorage.lpShares   = 0;
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
            lpShares,
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
        uint256 lpBalance = coreLp.balanceOf(address(this));
        if (lpBalance == 0) return (0, 0);

        uint256 pid = core.defaultWithdrawPid();
        (address strat,, uint256 poolLpShares) = core.poolInfo(pid);
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

    /// @notice Batch-complete smart withdrawals for given users (anyone can call); burns shares and sends tokens
    function completeSmartWithdraws(address[] calldata users)
        external
        nonReentrant
        whenNotPaused
    {
        uint256 len = users.length;
        require(len > 0, "Fin: empty batch");

        _trySkim();

        uint256 tsCommon    = totalSupply();
        uint256 lpBalCommon = coreLp.balanceOf(address(this));
        require(tsCommon > 0 && lpBalCommon > 0, "Fin: empty");

        uint256 netAllUSDT = totalHoldings();

        uint128[] memory tokenIndexArr = new uint128[](len);
        uint256[] memory lpSharesArr   = new uint256[](len);
        uint64[]  memory reqIds        = new uint64[](len);
        uint256[] memory netUSDTArr    = new uint256[](len);

        uint256[POOL_ASSETS] memory sumWlByToken;
        uint256[POOL_ASSETS] memory lastIdxByToken;

        // 1) Read and clear requests, update principal (depositBody), group by tokenIndex
        for (uint256 i = 0; i < len;) {
            address user = users[i];
            SmartWithdraw storage reqStorage = _smartWithdraws[user];
            uint64 requestId = reqStorage.requestId;
            require(requestId != 0, "Fin: no pending withdraw");

            uint256 lpShares = reqStorage.lpShares;
            if (balanceOf(user) < lpShares) {
                // 1) clear the request (so that it disappears from getAllSmartWithdraws())
                reqStorage.requestId  = 0;
                reqStorage.lpShares   = 0;
                reqStorage.tokenIndex = 0;

                // 2) mark as “ignore” in local arrays
                tokenIndexArr[i] = TOKEN_INDEX_NONE;
                lpSharesArr[i]   = 0;
                reqIds[i]        = requestId;
                netUSDTArr[i]    = 0;

                // 3) event FAILED
                uint8 opFail = _encodeOp(1, 1, 3); // withdraw, Smart, Failed
                emit UserTx(
                    user,
                    opFail,
                    TOKEN_INDEX_NONE,
                    uint64(block.timestamp),
                    requestId,
                    0,
                    0,
                    lpShares,
                    address(0)
                );

                unchecked { ++i; }
                continue;
            }
            require(balanceOf(user) >= lpShares, "Fin: not enough LP");

            uint128 tIndex = reqStorage.tokenIndex;
            require(tIndex < POOL_ASSETS, "Fin: bad token index");

            // preview NET USDT for this application (based on the old NAV)
            uint256 previewOutNetUSDT = (lpShares * netAllUSDT) / tsCommon;

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
            reqStorage.lpShares   = 0;
            reqStorage.tokenIndex = 0;

            tokenIndexArr[i] = tIndex;
            lpSharesArr[i]   = lpShares;
            reqIds[i]        = requestId;
            netUSDTArr[i]    = previewOutNetUSDT;

            sumWlByToken[tIndex] += lpShares;
            lastIdxByToken[tIndex] = i; // last position with this tokenIndex

            unchecked { ++i; }
        }

        // 2) We calculate how many core LP tokens need to be redeemed for each token group
        uint256[POOL_ASSETS] memory coreLpRedeemByToken;
        for (uint256 t = 0; t < POOL_ASSETS;) {
            uint256 sumShares = sumWlByToken[t];
            if (sumShares > 0) {
                coreLpRedeemByToken[t] = (lpBalCommon * sumShares) / tsCommon;
            }
            unchecked { ++t; }
        }

        // 3) For each tokenIndex, we make one core.withdraw OneCoin and distribute the token
        for (uint256 t = 0; t < POOL_ASSETS;) {
            uint256 groupShares = sumWlByToken[t];
            uint256 coreLpRedeem = coreLpRedeemByToken[t];
            if (groupShares > 0 && coreLpRedeem > 0) {
                // Балансы до withdraw
                uint256[POOL_ASSETS] memory balBefore;
                for (uint256 k = 0; k < POOL_ASSETS;) {
                    balBefore[k] = tokens[k].balanceOf(address(this));
                    unchecked { ++k; }
                }

                coreLp.forceApprove(address(core), 0);
                coreLp.forceApprove(address(core), coreLpRedeem);

                uint256[POOL_ASSETS] memory minOut;
                core.withdraw(
                    coreLpRedeem,
                    minOut,
                    ICoreVault.WithdrawalType.OneCoin,
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

                // LP for the group and distribute the token proportionally to lpShares
                uint256 lastIdx = lastIdxByToken[t];

                for (uint256 i = 0; i < len;) {
                    if (tokenIndexArr[i] != t) {
                        unchecked { ++i; }
                        continue;
                    }

                    uint256 userShares = lpSharesArr[i];
                    if (userShares == 0) {
                        unchecked { ++i; }
                        continue;
                    }

                    address user = users[i];

                    // We take a share of the token at lpShares
                    uint256 userTokenAmount;
                    if (i == lastIdx) {
                        userTokenAmount = remainingOut;
                    } else {
                        userTokenAmount = (tokenTotalOut * userShares) / groupShares;
                        remainingOut -= userTokenAmount;
                    }

                    // Let's burn LP for this group (once)
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

    uint256 public constant MAX_SMART_LIST = 25;

    /// @notice Pending smart deposit users (addresses), capped by MAX_SMART_LIST
    function getAllSmartDeposits()
        public
        view
        returns (address[] memory users)
    {
        uint256 lenAll = _allSmartDepositUsers.length;
        uint256 count;

        // 1-й pass: we consider suitable
        for (uint256 i = 0; i < lenAll && count < MAX_SMART_LIST;) {
            if (_smartDeposits[_allSmartDepositUsers[i]].requestId != 0) count++;
            unchecked { ++i; }
        }

        users = new address[](count);

        // 2-й pass: fill in
        uint256 idx;
        for (uint256 i = 0; i < lenAll && idx < count;) {
            address u = _allSmartDepositUsers[i];

            if (_smartDeposits[u].requestId != 0) {
                users[idx] = u;
                idx++;
            }

            unchecked { ++i; }
        }
    }

    /// @notice Pending smart withdrawal users (addresses), capped by MAX_SMART_LIST
    function getAllSmartWithdraws()
        public
        view
        returns (address[] memory users)
    {
        uint256 lenAll = _allSmartWithdrawUsers.length;
        uint256 count;

        // 1st pass: we consider suitable
        for (uint256 i = 0; i < lenAll && count < MAX_SMART_LIST;) {
            if (_smartWithdraws[_allSmartWithdrawUsers[i]].requestId != 0) {
                count++;
            }
            unchecked { ++i; }
        }

        users = new address[](count);

        // 2nd pass: fill in
        uint256 idx;
        for (uint256 i = 0; i < lenAll && idx < count;) {
            address u = _allSmartWithdrawUsers[i];
            if (_smartWithdraws[u].requestId != 0) {
                users[idx] = u;
                idx++;
            }
            unchecked { ++i; }
        }
    }

    /// @notice Pending smart requests (deposit + withdraw) user lists (addresses), each capped
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
        require(bps <= DENOM, "Fin: fee too high");
        partnerFeeBps = bps;
        emit UpdatePartnerFeeBps(bps);
    }

    function setPrincipalTreasury(address t) external onlyOwner {
        require(t != address(0), "Fin: bad treasury");
        principalTreasury = t;
        emit UpdatePrincipalTreasury(t);
    }

    function setMinSkimGainBps(uint256 bps) external onlyOwner {
        minSkimGainBps = bps;
        emit UpdateMinSkimGainBps(bps);
    }

    function pause() external onlyOwner { _pause(); }
    function unpause() external onlyOwner { _unpause(); }

    // ── Actions of the owner: HWM-skim, emergency sweep ───────────────────────

    /// @notice Manual HWM fee crystallization: skim accumulated performance fee in core LP to treasury and update HWM
    function skimFeeIncoreLp() external onlyOwner nonReentrant whenNotPaused {
        require(block.number > lastNavTouchBlock, "Fin: nav touched");

        uint256 ts = totalSupply();
        if (ts == 0) { HWM_grossPricePerShareUSDT = 0; return; }

        uint256 priceGross = projectSharePriceGrossUSDT();
        if (HWM_grossPricePerShareUSDT == 0) { HWM_grossPricePerShareUSDT = priceGross; return; }

        if (priceGross * DENOM < HWM_grossPricePerShareUSDT * (DENOM + minSkimGainBps)) return;

        uint256 feeUSDT = projectAccruedFeeUSDT();
        if (feeUSDT == 0) { HWM_grossPricePerShareUSDT = priceGross; return; }

        uint256 lpBalance   = coreLp.balanceOf(address(this));
        uint256 grossUSDT   = projectGrossUSDT();
        if (grossUSDT == 0 || lpBalance == 0) { HWM_grossPricePerShareUSDT = priceGross; return; }

        uint256 feeLp = (feeUSDT * lpBalance) / grossUSDT;
        if (feeLp > lpBalance) feeLp = lpBalance;

        if (feeLp > 0) {
            coreLp.safeTransfer(principalTreasury, feeLp);
            ownerFeeSnapshotUSDT += feeUSDT;
            _touchNav();
        }

        HWM_grossPricePerShareUSDT = priceGross;
        emit SkimFeeUSDT(feeUSDT, feeLp, priceGross);
    }

    /// @notice Emergency sweep of arbitrary token (except pool tokens and core LP) to `to`
    function sweep(address token, address to, uint256 amount) external onlyOwner {
        require(to != address(0), "Fin: bad to");
        for (uint i = 0; i < POOL_ASSETS;) {
            require(token != address(tokens[i]), "Fin: pool token");
            unchecked { ++i; }
        }
        require(token != address(coreLp), "Fin: core lp");
        IERC20(token).safeTransfer(to, amount);
    }

    // ─═══════════════════════════════════════════════════════════════════════
    //  INTERNAL: AUTO-SKIM (HWM)
    // ─═══════════════════════════════════════════════════════════════════════

    /// @dev Soft auto-skim — if there is accumulated profit, part of the core LP goes
    /// to the treasury, and HWM is updated to the current GROSS price.
    function _trySkim() internal {
        if (block.number <= lastNavTouchBlock) return;

        uint256 ts = totalSupply();
        if (ts == 0) {
            HWM_grossPricePerShareUSDT = 0;
            return;
        }

        uint256 lpBalance = coreLp.balanceOf(address(this));
        if (lpBalance == 0) {
            // HWM_grossPricePerShareUSDT = 0;
            return;
        }

        uint256 pid = core.defaultWithdrawPid();
        (address strat,, uint256 poolLpShares) = core.poolInfo(pid);
        if (poolLpShares == 0) {
            // HWM_grossPricePerShareUSDT = 0;
            return;
        }

        uint256 ratio1e18 = (lpBalance * 1e18) / poolLpShares;
        if (ratio1e18 == 0) {
            // HWM_grossPricePerShareUSDT = 0;
            return;
        }

        uint256 grossUSDT = IStrategyView(strat).calcWithdrawOneCoin(ratio1e18, settleIndex);
        if (grossUSDT == 0) {
            // HWM_grossPricePerShareUSDT = 0;
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

        // Total LP profit in USDT:
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
            coreLp.safeTransfer(principalTreasury, feeLp);
            ownerFeeSnapshotUSDT += feeUSDT;
            _touchNav();
        }

        HWM_grossPricePerShareUSDT = priceGross;
        emit SkimFeeUSDT(feeUSDT, feeLp, priceGross);
    }

    // ════════════════════════════════════════════════════════════════════════
    //  DEBUG / BACKEND-ONLY VIEWS
    // ════════════════════════════════════════════════════════════════════════

    function debugPreviewAllAndUser(uint256 lpShares)
        external
        view
        returns (uint256 grossAllUSDT, uint256 feeUncrystallizedUSDT, uint256 netAllUSDT, uint256 userNetUSDT)
    {
        grossAllUSDT          = projectGrossUSDT();
        feeUncrystallizedUSDT = projectAccruedFeeUSDT();
        uint256 ts = totalSupply();
        netAllUSDT            = grossAllUSDT > feeUncrystallizedUSDT ? grossAllUSDT - feeUncrystallizedUSDT : 0;
        if (ts == 0) return (grossAllUSDT, feeUncrystallizedUSDT, netAllUSDT, 0);
        userNetUSDT           = (lpShares * netAllUSDT) / ts;
    }

    function lastRequestId() external view returns (uint64) {
        return _lastRequestId;
    }

    /// @dev Approximate core LP price in USDT (per 1 LP, 1e18 precision),
    ///      based on LP share in core pool (same logic as projectGrossUSDT).
    function _coreLpPricePerLpUSDT1e18() internal view returns (uint256) {
        uint256 lpBalance = coreLp.balanceOf(address(this));
        if (lpBalance == 0) return 0;

        // Use the same helper that we already have; grossUSDT is the value
        // of ALL lpBalance core LP in settleIndex token.
        (uint256 grossUSDT, ) = _previewGrossUSDTAndToken(settleIndex);
        if (grossUSDT == 0) return 0;

        // price per 1 LP in USDT (1e18 precision)
        return (grossUSDT * 1e18) / lpBalance;
    }

    // ════════════════════════════════════════════════════════════════════════
    //  RECOVERY
    // ════════════════════════════════════════════════════════════════════════

    /// @notice Emergency: recovery admin can transfer ownership (e.g., lost owner keys)
    function recoverySetOwner(address newOwner) external onlyRecoveryAdmin {
        require(newOwner != address(0), "Fin: bad new owner");

        address oldOwner = owner();
        _transferOwnership(newOwner);

        emit RecoveryOwnershipTransfer(oldOwner, newOwner);
    }

    /// @notice Emergency: rotate recovery admin (only current recovery admin)
    function recoverySetAdmin(address newAdmin) external onlyRecoveryAdmin {
        require(newAdmin != address(0), "Fin: bad new admin");

        address old = recoveryAdmin;
        recoveryAdmin = newAdmin;

        emit UpdateRecoveryAdmin(old, newAdmin);
    }

    /// @notice Update efficiency test amount bounds (whole tokens) used in userData() for round-trip simulation
    function setTestAmountBounds(uint256 newFloorWhole, uint256 newCapWhole) external onlyRecoveryAdmin {
        require(newFloorWhole > 0, "Fin: floor=0");
        require(newCapWhole >= newFloorWhole, "Fin: cap<floor");
        FLOOR_TEST_AMOUNT = newFloorWhole;
        CAP_TEST_AMOUNT = newCapWhole;
        emit TestAmountBoundsUpdated(newFloorWhole, newCapWhole);
    }

    /// @notice Update dsfUserData source contract address (only recovery admin)
    function setDsfUserData(address newAddr) external onlyRecoveryAdmin {
        require(newAddr != address(0), "Fin: bad dsfUserData");
        address old = address(dsfUserData);
        dsfUserData = IDSFAggregated(newAddr);
        emit UpdateDsfUserData(old, newAddr);
    }
}
