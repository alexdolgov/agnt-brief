// SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

/* ──────────────────────────────────────────────────────────────────────────────
 * Fin Vault — ERC20 shares over an external core LP, with principal accounting in settle token (usually USDT)
 *
 * External dependencies:
 *   - core vault: handles real deposits/withdrawals into underlying strategies and slippage checks
 *   - strategy view: provides OneCoin previews (calcWithdrawOneCoin)
 *   - dsfUserData (aggregated): provides future income estimates (CRV/CVX) and round-trip efficiency
 *
 * Public methods:
 *   - deposit(uint256[POOL_ASSETS] calldata amounts)
 *   - withdraw(uint256 shares, uint128 tokenIndex)   // OneCoin withdraw via core
 *
 * Accounting model:
 *   - This contract mints/burns ERC20 “shares” (FinLP) representing a pro-rata claim on core LP held by this vault.
 *   - Principal (“deposit body”) is tracked per user in settle token units (settleIndex, usually USDT).
 *
 * NAV & pricing (settle token, usually USDT):
 *   1) grossAllSettle   = preview value of ALL core LP in settle token (before fee)
 *   2) accruedFeeSettle = uncrystallized HWM performance fee (in settle token)
 *   3) netAllSettle     = grossAllSettle - accruedFeeSettle
 *   4) priceNet1e18     = netAllSettle / totalSupply (1e18)
 *   5) userNetSettle    = userShares * priceNet1e18
 *
 * Principal tracking (NET, settle token units):
 *   - Deposit:
 *       depositBody[user] += availableToWithdrawal(mintedShares)
 *   - Withdrawal:
 *       netNow = availableToWithdrawal(shares)
 *       principalPortion = min(netNow, depositBody[user])
 *       depositBody[user] -= principalPortion
 *   - Transfer:
 *       movedBody = depositBody[from] * value / balanceOf(from)  (pre-transfer)
 *       depositBody[from] -= movedBody;  depositBody[to] += movedBody
 *
 * Unified operation history (Fast-only) via UserTx event:
 *   opCode:
 *     1 = deposit, 2 = withdraw, 3 = transferOut, 4 = transferIn
 *
 *   tokenIndex:
 *     - deposit:  single-token index (0..2) or 255 if multi-token
 *     - withdraw: one-coin tokenIndex (0..2)
 *     - transfer: settleIndex (reporting currency index)
 *
 * Performance fee (HWM, skimmed in core LP):
 *   - HWM is tracked as GROSS share price in settle token (1e18).
 *   - If gross price rises above HWM, uncrystallized fee accrues:
 *       profitTotal = (priceGross - HWM) * totalSupply
 *       feeSettle   = profitTotal * partnerFeeBps / DENOM
 *   - Fee is crystallized by transferring core LP to principalTreasury.
 *   - _trySkim() is called before user actions (deposit/withdraw) and skims at most once per block.
 *   - After skim, HWM is updated to the post-skim gross price for consistency.
 *
 * Per-token “availableToWithdrawal”:
 *   - Strategy provides GROSS previews for settle token and chosen tokenIndex:
 *       grossSettle, grossToken = calcWithdrawOneCoin(ratio1e18, settleIndex/tokenIndex)
 *   - NET/GROSS factor is derived in settle token and applied to token preview:
 *       netTokenAll = grossToken * netAllSettle / grossAllSettle
 *   - User amount is proportional to shares / totalSupply.
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

/// @title  Fin Vault (USDT-settled) — ERC20 shares over external core LP with HWM fee and principal tracking
/// @notice Wraps an external core LP position into ERC20 shares (FinLP) and tracks user principal in settle token.
/// @dev
///  - Shares represent a pro-rata claim on `coreLp` held by this vault.
///  - Principal (“deposit body”) is tracked per user in settle token units (settleIndex).
///  - Performance fee is HWM-based and is skimmed in `coreLp` to `principalTreasury`.
///  - This contract relies on external core/strategy previews for NAV and OneCoin amounts.
contract coreVault_USDT is ERC20, Ownable, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // ════════════════════════════════════════════════════════════════════════
    //  STORAGE / CONSTANTS
    // ════════════════════════════════════════════════════════════════════════

    uint8   public constant POOL_ASSETS = 3;
    uint256 public constant DENOM       = 10_000;   // bps
    uint256 public constant USER_COOLDOWN_BLOCKS = 1;

    uint256 public FLOOR_TEST_AMOUNT = 10_000; // whole tokens
    uint256 public CAP_TEST_AMOUNT   = 500_000; // whole tokens

    uint8 constant OP_DEPOSIT = 1;
    uint8 constant OP_WITHDRAW = 2;
    uint8 constant OP_TOUT = 3;
    uint8 constant OP_TIN = 4;

    /// @notice Special token index value for “not applicable”
    uint8 public constant TOKEN_INDEX_NONE = type(uint8).max; // 255

    /// @notice Minimum gross price gain above HWM (in bps) required to trigger auto-skim.
    uint256 public minSkimGainBps = 1; // 0.01%

    // External addresses
    ICoreVault   public immutable core;
    IERC20 public immutable coreLp;
    IERC20[POOL_ASSETS] public tokens; // [DAI, USDC, USDT]
    IDSFAggregated public dsfUserData; // DSFuserDataMk2_Aggregated

    /// @notice Index of settle token used for accounting and reporting (0=DAI,1=USDC,2=USDT).
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

    /// @notice Emergency recovery admin (e.g., a multisig)
    address public recoveryAdmin;

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
        uint8   tokenIndex, // deposit: 0..2 or 255 if multi; withdraw: 0..2; transfer: settleIndex (0..2)
        uint64  timestamp,
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

    /// @notice Returns GROSS NAV of the vault expressed in settle token units (usually USDT).
    /// @dev Uses strategy preview over the entire core LP balance held by this vault.
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

    /// @notice Returns uncrystallized performance fee (in settle token units) accrued above HWM.
    /// @dev
    ///  - Fee exists only when totalSupply>0 and HWM is initialized.
    ///  - Fee is not automatically transferred; it becomes real only after a skim.
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
    //  USER: READ-ONLY (NAV, BODY, PROFIT, HISTORY)
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
        if (grossUSDT == 0) return 0; 
        if (tokenIndex != settleIndex && grossToken == 0) return 0;

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
            // degrade: treat as no-fee (avoid returning 0 on weird previews)
            return (lpShares * grossToken) / ts;
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

    /// @notice Owner-level snapshot: NAV (gross/net), fees (realized/unrealized), future income split,
    ///         and core LP balances (vault + treasury) valued in settle token units.
    /// @dev Does NOT include any smart-request lists (this vault has direct deposit/withdraw only).
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

        allTimeEarnedUSDT = ownerFeeSnapshotUSDT;
    }

    /// @notice Full per-user snapshot: shares, principal, current NAV, future income,
    ///         per-token NET availability, round-trip efficiency, wallet balances/allowances,
    ///         ETH balance.
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
            uint256 ethBalance
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
                ethBalance
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
            ethBalance
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

        // History: deposit (kind = 0), Fast, Completed
        emit UserTx(
            msg.sender,
            OP_DEPOSIT,
            depTokenIndex,    // tokenIndex (single-token or NONE)
            uint64(block.timestamp),
            addedBodyUSDT,
            depAmountToken,
            lpMint,
            address(0)
        );

        if (addedBodyUSDT > 0) {
            uint256 oldBody = _userDepositBody[msg.sender];
            uint256 newBody = oldBody + addedBodyUSDT;
            _userDepositBody[msg.sender] = newBody;

            emit UserDepositBodyUpdate(msg.sender, oldBody, newBody);
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

        emit UserTx(
            msg.sender,
            OP_WITHDRAW,
            uint8(tokenIndex),
            uint64(block.timestamp),
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
                emit UserTx(
                    from,
                    OP_TOUT,
                    settleTokenIndex,         // settle token index
                    uint64(block.timestamp),
                    transferNetUSDT,
                    0,
                    value,
                    to
                );
                // IN - to
                emit UserTx(
                    to,
                    OP_TIN,
                    settleTokenIndex,
                    uint64(block.timestamp),
                    transferNetUSDT,
                    0,
                    value,
                    from
                );
            }
        }

        super._update(from, to, value);
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

        uint256 priceGrossBefore = projectSharePriceGrossUSDT();
        if (HWM_grossPricePerShareUSDT == 0) { HWM_grossPricePerShareUSDT = priceGrossBefore; return; }

        if (priceGrossBefore * DENOM < HWM_grossPricePerShareUSDT * (DENOM + minSkimGainBps)) return;

        uint256 feeUSDT_theoretical = projectAccruedFeeUSDT();
        if (feeUSDT_theoretical == 0) { HWM_grossPricePerShareUSDT = priceGrossBefore; return; }

        uint256 lpBalance = coreLp.balanceOf(address(this));
        uint256 grossUSDT = projectGrossUSDT();
        if (grossUSDT == 0 || lpBalance == 0) { HWM_grossPricePerShareUSDT = priceGrossBefore; return; }

        uint256 feeLp = (feeUSDT_theoretical * lpBalance) / grossUSDT;
        if (feeLp > lpBalance) feeLp = lpBalance;
        if (feeLp == 0) { 
            // I ate everything → let's just update HWM
            HWM_grossPricePerShareUSDT = priceGrossBefore; 
            return; 
        }

        // actual USDT equivalent (rounded down — fairer for snapshot)
        uint256 feeUSDT_real = (feeLp * grossUSDT) / lpBalance;

        coreLp.safeTransfer(principalTreasury, feeLp);
        ownerFeeSnapshotUSDT += feeUSDT_real;
        _touchNav();

        // set HWM to the state AFTER skim (so that HWM corresponds to the actual state)
        uint256 priceGrossAfter = projectSharePriceGrossUSDT();
        HWM_grossPricePerShareUSDT = priceGrossAfter;

        emit SkimFeeUSDT(feeUSDT_real, feeLp, priceGrossAfter);
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

    /// @dev Soft auto-skim — crystallize accumulated performance fee in core LP to treasury
    ///      and update HWM to the *post-skim* gross price (so analytics/HWM stay consistent).
    function _trySkim() internal {
        // one nav-touch per block
        if (block.number <= lastNavTouchBlock) return;

        uint256 ts = totalSupply();
        if (ts == 0) {
            HWM_grossPricePerShareUSDT = 0;
            return;
        }

        uint256 lpBalance = coreLp.balanceOf(address(this));
        if (lpBalance == 0) return;

        uint256 pid = core.defaultWithdrawPid();
        (address strat,, uint256 poolLpShares) = core.poolInfo(pid);
        if (poolLpShares == 0) return;

        uint256 ratio1e18 = (lpBalance * 1e18) / poolLpShares;
        if (ratio1e18 == 0) return;

        // GROSS NAV in settle token (USDT)
        uint256 grossUSDT = IStrategyView(strat).calcWithdrawOneCoin(ratio1e18, settleIndex);
        if (grossUSDT == 0) return;

        uint256 priceGrossBefore = (grossUSDT * 1e18) / ts;

        // init HWM on first meaningful touch
        if (HWM_grossPricePerShareUSDT == 0) {
            HWM_grossPricePerShareUSDT = priceGrossBefore;
            return;
        }

        // threshold: only skim if gain above HWM exceeds minSkimGainBps
        if (priceGrossBefore * DENOM < HWM_grossPricePerShareUSDT * (DENOM + minSkimGainBps)) {
            return;
        }

        // profit above HWM (GROSS)
        uint256 profitPerShare1e18 = priceGrossBefore - HWM_grossPricePerShareUSDT;
        uint256 profitTotalUSDT    = (profitPerShare1e18 * ts) / 1e18;

        uint256 feeUSDT_theoretical = (profitTotalUSDT * partnerFeeBps) / DENOM;

        // if fee is zero (or fee too small due to rounding) — just move HWM up
        if (feeUSDT_theoretical == 0) {
            HWM_grossPricePerShareUSDT = priceGrossBefore;
            return;
        }

        // Convert fee in USDT to core LP to skim
        // feeLp = feeUSDT * lpBalance / grossUSDT
        uint256 feeLp = (feeUSDT_theoretical * lpBalance) / grossUSDT;
        if (feeLp > lpBalance) feeLp = lpBalance;

        // If feeLp rounded to 0 — still update HWM, but no transfer/snapshot
        if (feeLp == 0) {
            HWM_grossPricePerShareUSDT = priceGrossBefore;
            return;
        }

        // Realized USDT-equivalent of what we actually skim (rounding-safe)
        uint256 feeUSDT_real = (feeLp * grossUSDT) / lpBalance;

        // Transfer fee LP to treasury
        coreLp.safeTransfer(principalTreasury, feeLp);

        // Analytics snapshot should track what was actually skimmed
        ownerFeeSnapshotUSDT += feeUSDT_real;

        // Touch NAV (blocks double-skim & locks manual skim in same block)
        _touchNav();

        // Update HWM to *post-skim* gross price (recompute after LP moved out)
        uint256 priceGrossAfter = projectSharePriceGrossUSDT();
        HWM_grossPricePerShareUSDT = priceGrossAfter;

        emit SkimFeeUSDT(feeUSDT_real, feeLp, priceGrossAfter);
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
