// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/*──────────────────────────────────────────────────────────────────────────────
 * DSF White-Label Vault (WL) — accounting of the deposit principal in USDT (settleIndex)
 *
 * Public methods are identical to DSF by signatures:
 *   - deposit(uint256[POOL_ASSETS] memory amounts)
 *   - withdraw(uint256 lpShares, uint256[POOL_ASSETS] memory tokenAmounts,
 *              IStrategy.WithdrawalType withdrawalType, uint128 tokenIndex)
 *
 * Calculation order:
 *   1) totalGrossSettle       = previewTotalGrossPerToken()[settleIndex] for the entire WL
 *   2) pendingVaultFeeSettle  = uncrystallized HWM fee of the WL
 *   3) totalHoldingsSettle    = totalGrossSettle - pendingVaultFeeSettle
 *   4) LPprice                = totalHoldingsSettle / totalSupply
 *   5) userNet                = wlShares * LPprice
 *
 * Principal accounting (in USDT):
 *   - Deposit:    userPrincipalSettle += availableToWithdrawal(wlMint)
 *   - Withdrawal: we compute availableToWithdrawal(wlShares),
 *                 split it into principal / profit, decrease userPrincipalSettle
 *                 only by the “principal” part.
 *   - Transfer:   proportionally move part of userPrincipalSettle from → to.
 *
 * User transaction history (always in the settle token, e.g. USDT):
 *   kind:
 *     0 = deposit      (amountSettle = NET deposit in settle)
 *     1 = withdrawal   (amountSettle = NET withdrawal in settle)
 *     2 = OUT transfer (from → to, amountSettle = NET settle-value of WL shares sent from `from`)
 *     3 = IN transfer  (to ← from, amountSettle = NET settle-value of WL shares received by `to`)
 *
 * Future income (CRV + CVX and others):
 *   - External contract futureIncomeSource provides futureIncome() — GROSS income
 *     for ALL DSF LP (for dsfLp.totalSupply()), in the settle token.
 *   - WL share (GROSS): futureGrossWL = futureTotal * dsfLpBalance(WL) / dsfLpTotalSupply
 *   - WL users’ share (NET of WL fee):
 *         totalFutureIncomeUsers = futureGrossWL * (DENOM - partnerFeeBps) / DENOM
 *   - User share:
 *         userFuture = totalFutureIncomeUsers * wlUser / totalSupply
 *
 * IMPORTANT: Slippage protection is fully implemented in the main DSF contracts.
 * WL only forwards parameters.
 *──────────────────────────────────────────────────────────────────────────────*/

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
 *      in the settle token (USDT).
 *
 * Semantics:
 *  - futureIncome() = future income for the entire dsfLp.totalSupply() (GROSS).
 */
interface IFutureIncome {
    function futureIncome() external view returns (uint256);
}

contract DsfWhiteLabelVault_USDT is ERC20, Ownable, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // ───────── Constants / parameters
    uint8   public constant POOL_ASSETS = 3;
    uint256 public constant DENOM       = 10_000;   // bps
    uint256 public constant USER_COOLDOWN_BLOCKS = 1;

    /// @notice Threshold for HWM-skim, GROSS WL price growth in bps
    uint256 public minSkimGainBps = 1; // 0.01%

    // ───────── External addresses
    IDSF   public immutable dsf;
    IERC20 public immutable dsfLp;
    IERC20[POOL_ASSETS] public tokens;     // [DAI, USDC, USDT]

    /// @notice Index of the settle token (0..2) — by default USDT
    uint128 public settleIndex = 2;

    /// @notice Treasury of the WL owner (receives fee in DSF LP)
    address public principalTreasury;

    /// @notice WL owner fee (HWM fee), in bps (e.g., 3000 = 30%)
    uint16 public partnerFeeBps;

    /// @notice External source of future income (in the settle token)
    IFutureIncome public futureIncomeSource;

    // ───────── Accounting / anti-MEV
    uint256 public HWM_settlePerWL;          // high-water mark (GROSS settle per WL)
    uint256 public lastNavTouchBlock;        // NAV protection within a single block
    mapping(address => uint256) public lastUserActionBlock; // per-user cooldown

    /// @notice Total crystallized fee (in settle token equivalent) — analytics only
    uint256 public ownerCrystallizedSettle;

    /// @notice User deposit principal (“body”) in the settle token (NET)
    mapping(address => uint256) public userPrincipalSettle;

    // ───────── User operation history (always in the settle token)
    struct TxRecord {
        uint8   kind;         // 0=deposit, 1=withdraw, 2=transferOut, 3=transferIn
        uint64  timestamp;    // block.timestamp
        uint256 amountSettle; // amount in settle token (USDT equivalent), NET at operation time
    }

    mapping(address => TxRecord[]) private _userTxHistory;

    // ───────── Events
    event DepositWL(address indexed user, uint256[3] amounts, uint256 wlMinted, uint256 dsfLpGained);
    event WithdrawWL(address indexed user, uint256 wlBurned, uint256 dsfLpSpent, uint256[3] paidToUser);

    event SkimPrincipal(uint256 feeSettle, uint256 dsfLpFeeToPrincipal, uint256 newHwmPriceSettlePerWL);

    event UpdatePartnerFeeBps(uint16 newBps);
    event UpdatePrincipalTreasury(address newTreasury);
    event UpdateMinSkimGainBps(uint256 newMinBps);
    event UpdateSettleIndex(uint128 newIndex);
    event UpdateFutureIncomeSource(address newSource);

    event PrincipalSettleIncreased(address indexed user, uint256 addedSettle, uint256 newPrincipalSettle);
    event WithdrawBreakdownSettle(
        address indexed user,
        uint256 wlBurned,
        uint256 previewSettleOutNet,
        uint256 principalSettlePortion,
        uint256 profitSettlePortion
    );

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

        HWM_settlePerWL = 0; // will be set on first deposit
    }

    // ───────── Admin settings

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

    /// Recommendation: change settleIndex only when WL is empty (require can be uncommented)
    function setSettleIndex(uint128 idx) external onlyOwner {
        require(idx < POOL_ASSETS, "WL: bad settle index");
        // require(totalSupply() == 0, "WL: change settleIndex only when empty");
        settleIndex = idx;
        emit UpdateSettleIndex(idx);
    }

    /// @notice Set external source of future income (DSF / strategy / analytics)
    function setFutureIncomeSource(address src) external onlyOwner {
        // address(0) — disable future income accounting
        futureIncomeSource = IFutureIncome(src);
        emit UpdateFutureIncomeSource(src);
    }

    function pause() external onlyOwner { _pause(); }
    function unpause() external onlyOwner { _unpause(); }

    // ───────── Internal utilities / cooldown

    function _touchNav() internal {
        lastNavTouchBlock = block.number;
    }

    modifier userCooldown() {
        require(block.number > lastUserActionBlock[msg.sender] + USER_COOLDOWN_BLOCKS, "WL: cooldown");
        _;
        lastUserActionBlock[msg.sender] = block.number;
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

    // ───────── NAV / GROSS / NET (preview through DSF strategy)

    /// @dev GROSS preview: how much of each token [0..2] WL would receive
    ///      if it withdrew ALL dsfLp as one-coin via defaultWithdrawPid.
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
        if (ratio1e18 > 1e18) ratio1e18 = 1e18;

        for (uint i = 0; i < POOL_ASSETS; i++) {
            grossAll[i] = IStrategyView(strat).calcWithdrawOneCoin(ratio1e18, uint128(i));
        }
    }

    /// @dev GROSS NAV of WL in the settle token (before WL fee)
    function totalGrossSettle() public view returns (uint256) {
        uint256[POOL_ASSETS] memory grossAll = _previewTotalGrossPerToken();
        return grossAll[settleIndex];
    }

    /// @dev GROSS price of 1 WL share in the settle token, 1e18 precision
    function wlPriceGrossSettle() public view returns (uint256) {
        uint256 ts = totalSupply();
        if (ts == 0) return 0;
        uint256 g = totalGrossSettle();
        return (g * 1e18) / ts;
    }

    /// @dev Uncrystallized WL HWM fee (in the settle token)
    function pendingVaultFeeSettle() public view returns (uint256) {
        uint256 ts = totalSupply();
        if (ts == 0 || HWM_settlePerWL == 0) return 0;

        uint256 priceGross1e18 = wlPriceGrossSettle();
        if (priceGross1e18 <= HWM_settlePerWL) return 0;

        // Profit per WL share (GROSS), 1e18 precision
        uint256 profitPerShare1e18 = priceGross1e18 - HWM_settlePerWL;

        // Total profit of WL in the settle token:
        // profitTotalSettle = profitPerShare1e18 * ts / 1e18
        uint256 profitTotalSettle = (profitPerShare1e18 * ts) / 1e18;

        // WL fee as a share of this profit
        return (profitTotalSettle * partnerFeeBps) / DENOM;
    }

    /// @notice NET total holdings of all WL users in the settle token
    function totalHoldingsSettle() public view returns (uint256) {
        uint256 g = totalGrossSettle();
        uint256 f = pendingVaultFeeSettle();
        return g > f ? g - f : 0;
    }

    /// @notice NET price of 1 WL share (LPprice) in the settle token, 1e18 precision
    function LPprice() public view returns (uint256) {
        uint256 ts = totalSupply();
        if (ts == 0) return 0;
        return (totalHoldingsSettle() * 1e18) / ts;
    }

    /// @notice NET value of `wlShares` in the settle token (what can be withdrawn now)
    function availableToWithdrawal(uint256 wlShares) public view returns (uint256) {
        uint256 px = LPprice();
        return (wlShares * px) / 1e18;
    }

    /// @notice NET value of `wlShares` expressed in each of the three tokens (DAI/USDC/USDT)
    function availableToWithdrawalPerToken(uint256 wlShares)
        public
        view
        returns (uint256[POOL_ASSETS] memory out)
    {
        if (wlShares == 0) return out;

        uint256[POOL_ASSETS] memory grossAll = _previewTotalGrossPerToken();
        uint256 ts = totalSupply();
        if (ts == 0) return out;

        uint256 grossSettle = grossAll[settleIndex];
        uint256 feeSettle   = pendingVaultFeeSettle();

        if (grossSettle == 0) return out;

        uint256 netSettleAll_ = grossSettle > feeSettle ? grossSettle - feeSettle : 0;
        if (netSettleAll_ == 0) return out;

        // netFactor ~= NET/GROSS in settle; apply it as a factor to all tokens
        for (uint i = 0; i < POOL_ASSETS; i++) {
            uint256 netAllToken = (grossAll[i] * netSettleAll_) / grossSettle;
            out[i] = (wlShares * netAllToken) / ts;
        }
    }

    // ───────── User views (current NAV / PnL)

     function userAvailableNow(address user) external view returns (uint256) {
        return availableToWithdrawal(balanceOf(user));
    }

    /// @notice Current NET user value per three tokens (DAI/USDC/USDT)
    function userAvailableNowPerToken(address user)
        external
        view
        returns (uint256[POOL_ASSETS] memory)
    {
        return availableToWithdrawalPerToken(balanceOf(user));
    }

    /// @notice Current user deposit principal in the settle token
    function userDepositeNow(address user) external view returns (uint256) {
        return userPrincipalSettle[user];
    }

    /// @notice Current NET profit of the user in the settle token (NAV - principal)
    function userNetProfit(address user) external view returns (uint256) {
        uint256 bal = balanceOf(user);
        if (bal == 0) return 0;
        uint256 totalSettle = availableToWithdrawal(bal);
        uint256 principal   = userPrincipalSettle[user];
        return totalSettle > principal ? totalSettle - principal : 0;
    }

    // ───────── Future income (CRV+CVX+...), NET user income only

    /// @dev Internal GROSS future income of WL (before WL fee), in the settle token
    function _totalFutureIncomeGross() internal view returns (uint256) {
        IFutureIncome src = futureIncomeSource;
        if (address(src) == address(0)) return 0;

        uint256 futureTotal = src.futureIncome(); // income for the entire dsfLp.totalSupply()
        if (futureTotal == 0) return 0;

        uint256 lpBalance     = dsfLp.balanceOf(address(this));
        uint256 lpTotalSupply = dsfLp.totalSupply();
        if (lpBalance == 0 || lpTotalSupply == 0) return 0;

        // GROSS WL share in the total future DSF LP income
        return (futureTotal * lpBalance) / lpTotalSupply;
    }

    /// @notice NET future income of WL users (after WL fee), in the settle token
    function totalFutureIncomeUsers() public view returns (uint256) {
        uint256 gross = _totalFutureIncomeGross();
        if (gross == 0) return 0;
        // Users’ net share: (DENOM - partnerFeeBps) / DENOM
        return (gross * (DENOM - partnerFeeBps)) / DENOM;
    }

    /// @notice Split of future income: users’ share and WL owner’s share (estimated)
    function futureIncomeSplit()
        external
        view
        returns (uint256 usersFutureSettle, uint256 ownerFutureSettle)
    {
        uint256 gross = _totalFutureIncomeGross();
        if (gross == 0) return (0, 0);

        ownerFutureSettle = (gross * partnerFeeBps) / DENOM;
        usersFutureSettle = gross - ownerFutureSettle;
    }

    /// @notice NET future income per 1 WL share, 1e18 precision
    function futureIncomePerShare1e18() public view returns (uint256) {
        uint256 ts = totalSupply();
        if (ts == 0) return 0;
        return (totalFutureIncomeUsers() * 1e18) / ts;
    }

    /// @notice Future income of a specific user (NET, after WL fee), in the settle token
    function userFutureIncome(address user) public view returns (uint256) {
        uint256 wl = balanceOf(user);
        if (wl == 0) return 0;
        uint256 px = futureIncomePerShare1e18();
        return (wl * px) / 1e18;
    }

    /// @notice totalWithFuture: current NET + future income for the user (all in settle token)
    function userTotalWithFuture(address user)
        external
        view
        returns (uint256 currentNet, uint256 futureNet, uint256 total)
    {
        uint256 wl = balanceOf(user);
        if (wl == 0) return (0, 0, 0);

        currentNet = availableToWithdrawal(wl);
        futureNet  = userFutureIncome(user);
        total      = currentNet + futureNet;
    }

    // ───────── User history

    function getUserTxCount(address user) external view returns (uint256) {
        return _userTxHistory[user].length;
    }

    function getUserTx(address user, uint256 index)
        external
        view
        returns (uint8 kind, uint64 timestamp, uint256 amountSettle)
    {
        TxRecord storage r = _userTxHistory[user][index];
        return (r.kind, r.timestamp, r.amountSettle);
    }

    /// Return the entire history (for off-chain reading)
    function getUserTxHistory(address user) external view returns (TxRecord[] memory history) {
        uint256 len = _userTxHistory[user].length;
        history = new TxRecord[](len);
        for (uint256 i = 0; i < len; i++) {
            history[i] = _userTxHistory[user][i];
        }
    }

    // ───────── soft auto-skim (crystallization of HWM fee in DSF LP)

    function _trySkim() internal {
        if (block.number <= lastNavTouchBlock) return;

        uint256 ts = totalSupply();
        if (ts == 0) { HWM_settlePerWL = 0; return; }

        uint256 priceGross = wlPriceGrossSettle();
        if (HWM_settlePerWL == 0) { HWM_settlePerWL = priceGross; return; }

        if (priceGross * DENOM < HWM_settlePerWL * (DENOM + minSkimGainBps)) return;

        uint256 feeSettle = pendingVaultFeeSettle();
        if (feeSettle == 0) { HWM_settlePerWL = priceGross; return; }

        uint256 lpBalance   = dsfLp.balanceOf(address(this));
        uint256 grossSettle = totalGrossSettle();
        if (grossSettle == 0 || lpBalance == 0) { HWM_settlePerWL = priceGross; return; }

        // feeLp = feeSettle * lpBalance / grossSettle
        uint256 feeLp = (feeSettle * lpBalance) / grossSettle;
        uint256 balLp = dsfLp.balanceOf(address(this));
        if (feeLp > balLp) feeLp = balLp;

        if (feeLp > 0) {
            dsfLp.safeTransfer(principalTreasury, feeLp);
            ownerCrystallizedSettle += feeSettle;
            _touchNav();
        }

        HWM_settlePerWL = priceGross;
        emit SkimPrincipal(feeSettle, feeLp, priceGross);
    }

    // ───────── DEPOSIT (signature identical to DSF)

    function deposit(uint256[POOL_ASSETS] memory amounts)
        external
        nonReentrant
        whenNotPaused
        userCooldown
    {
        _trySkim(); 

        // 1) Pull tokens from the user
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
        dsf.deposit(amounts); // slippage checks are inside DSF
        uint256 lpAfter  = dsfLp.balanceOf(address(this));
        uint256 lpGained = lpAfter - lpBefore;
        require(lpGained > 0, "WL: no dsf lp");

        // 3) Mint WL shares proportionally to DSF LP
        uint256 tsBefore = totalSupply();
        uint256 wlMint;
        if (tsBefore == 0) {
            wlMint = lpGained; // start 1:1 WL↔LP
        } else {
            wlMint = (tsBefore * lpGained) / lpBefore;
        }
        _mint(msg.sender, wlMint);

        // 4) Fix deposit principal in the settle token at CURRENT NET price
        uint256 addedPrincipalSettle = availableToWithdrawal(wlMint);
        if (addedPrincipalSettle > 0) {
            userPrincipalSettle[msg.sender] += addedPrincipalSettle;
            emit PrincipalSettleIncreased(msg.sender, addedPrincipalSettle, userPrincipalSettle[msg.sender]);

            // History: deposit (kind = 0), amountSettle = NET deposit in settle
            _userTxHistory[msg.sender].push(
                TxRecord({
                    kind: 0,
                    timestamp: uint64(block.timestamp),
                    amountSettle: addedPrincipalSettle
                })
            );
        }

        // 5) If this is the first deposit — set HWM by GROSS price
        if (tsBefore == 0) {
            HWM_settlePerWL = wlPriceGrossSettle();
        }

        _touchNav();
        emit DepositWL(msg.sender, amounts, wlMint, lpGained);
    }

    // ───────── WITHDRAW (signature identical to DSF)

    /// @param lpShares Amount of WL shares to burn (name kept for DSF compatibility)
    /// @param tokenAmounts In DSF this is minOut per token — forwarded as is
    /// @param withdrawalType DSF mode: Base/OneCoin — forwarded as is
    /// @param tokenIndex Index for OneCoin — forwarded as is (0..2)
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
        _trySkim();

        require(lpShares > 0 && balanceOf(msg.sender) >= lpShares, "WL: bad shares");

        // NET preview in the settle token for these WL shares
        uint256 previewSettleOutNet = availableToWithdrawal(lpShares);

        // Split into principal/profit in the user’s accounting
        uint256 principalSettlePortion =
            previewSettleOutNet <= userPrincipalSettle[msg.sender]
                ? previewSettleOutNet
                : userPrincipalSettle[msg.sender];
        uint256 profitSettlePortion = previewSettleOutNet - principalSettlePortion;

        if (principalSettlePortion > 0) {
            userPrincipalSettle[msg.sender] -= principalSettlePortion;
        }

        uint256 tsBefore    = totalSupply();
        uint256 lpBalBefore = dsfLp.balanceOf(address(this));
        require(tsBefore > 0 && lpBalBefore > 0, "WL: empty");

        // Proportional WL → DSF LP conversion
        uint256 dsfLpRedeem = (lpBalBefore * lpShares) / tsBefore;
        require(dsfLpRedeem > 0, "WL: zero redeem");

        _burn(msg.sender, lpShares);

        uint256[POOL_ASSETS] memory balBefore;
        for (uint i = 0; i < POOL_ASSETS; i++) {
            balBefore[i] = IERC20(tokens[i]).balanceOf(address(this));
        }

        dsfLp.forceApprove(address(dsf), 0);
        dsfLp.forceApprove(address(dsf), dsfLpRedeem);

        // All slippage and minOut conditions are inside DSF
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

        // History: withdraw (kind = 1), log NET in settle token
        _userTxHistory[msg.sender].push(
            TxRecord({
                kind: 1,
                timestamp: uint64(block.timestamp),
                amountSettle: previewSettleOutNet
            })
        );

        emit WithdrawWL(msg.sender, lpShares, dsfLpRedeem, got);
        emit WithdrawBreakdownSettle(
            msg.sender,
            lpShares,
            previewSettleOutNet,
            principalSettlePortion,
            profitSettlePortion
        );
    }

    // ───────── Override transfer logic to account principal and history
    /// ERC20 v5: _update is called on mint/burn/transfer
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

        // Regular transfer: move proportional principal + log history in settle token
        if (value > 0) {
            uint256 fromBalanceBefore = balanceOf(from);
            uint256 fromPrincipal     = userPrincipalSettle[from];

            // Proportional principal transfer from `from` → `to`
            if (fromBalanceBefore > 0 && fromPrincipal > 0) {
                uint256 movedPrincipal = (fromPrincipal * value) / fromBalanceBefore;
                if (movedPrincipal > 0) {
                    userPrincipalSettle[from] = fromPrincipal - movedPrincipal;
                    userPrincipalSettle[to]   += movedPrincipal;
                }
            }

            // Log transfer volume in the settle token at current NET WL price
            uint256 transferNetSettle = availableToWithdrawal(value);
            if (transferNetSettle > 0) {
                // OUT - from
                _userTxHistory[from].push(
                    TxRecord({
                        kind: 2,
                        timestamp: uint64(block.timestamp),
                        amountSettle: transferNetSettle
                    })
                );
                // IN - to
                _userTxHistory[to].push(
                    TxRecord({
                        kind: 3,
                        timestamp: uint64(block.timestamp),
                        amountSettle: transferNetSettle
                    })
                );
            }
        }

        super._update(from, to, value);
    }

    // ───────── Manual HWM-skim

    function skimPrincipalFeeInDsfLp() external onlyOwner nonReentrant whenNotPaused {
        require(block.number > lastNavTouchBlock, "WL: nav touched");

        uint256 ts = totalSupply();
        if (ts == 0) { HWM_settlePerWL = 0; return; }

        uint256 priceGross = wlPriceGrossSettle();
        if (HWM_settlePerWL == 0) { HWM_settlePerWL = priceGross; return; }

        if (priceGross * DENOM < HWM_settlePerWL * (DENOM + minSkimGainBps)) return;

        uint256 feeSettle = pendingVaultFeeSettle();
        if (feeSettle == 0) { HWM_settlePerWL = priceGross; return; }

        uint256 lpBalance   = dsfLp.balanceOf(address(this));
        uint256 grossSettle = totalGrossSettle();
        if (grossSettle == 0 || lpBalance == 0) { HWM_settlePerWL = priceGross; return; }

        uint256 feeLp = (feeSettle * lpBalance) / grossSettle;
        uint256 balLp = dsfLp.balanceOf(address(this));
        if (feeLp > balLp) feeLp = balLp;

        if (feeLp > 0) {
            dsfLp.safeTransfer(principalTreasury, feeLp);
            ownerCrystallizedSettle += feeSettle;
            _touchNav();
        }

        HWM_settlePerWL = priceGross;
        emit SkimPrincipal(feeSettle, feeLp, priceGross);
    }

    // ───────── emergency sweep (tokens other than DSF LP and pool tokens)

    function sweep(address token, address to, uint256 amount) external onlyOwner {
        require(to != address(0), "WL: bad to");
        for (uint i = 0; i < POOL_ASSETS; i++) {
            require(token != address(tokens[i]), "WL: pool token");
        }
        require(token != address(dsfLp), "WL: dsf lp");
        IERC20(token).safeTransfer(to, amount);
    }

    // ───────── Debug view for calculations

    function debugPreviewAllAndUser(uint256 wlShares)
        external
        view
        returns (uint256 grossAll, uint256 feeUncrystallized, uint256 netAll, uint256 userNet)
    {
        grossAll = totalGrossSettle();
        feeUncrystallized = pendingVaultFeeSettle();
        netAll = grossAll > feeUncrystallized ? grossAll - feeUncrystallized : 0;
        if (totalSupply() == 0) return (grossAll, feeUncrystallized, netAll, 0);
        userNet = (wlShares * netAll) / totalSupply();
    }

    /// @notice Full snapshot for a user:
    /// - principalSettle: deposit principal (“body”) in the settle token
    /// - netNowSettle: current NET (NAV) in the settle token, if fully withdrawn now
    /// - futureIncomeSettle: user’s future income (CRV+CVX+...) in the settle token, already NET
    /// - totalWithFutureSettle: netNow + futureIncome
    /// - perTokenNet: current NET per each of the three tokens [DAI, USDC, USDT]
    /// - walletTokenBalances: user wallet balances in [DAI, USDC, USDT]
    /// - walletTokenAllowances: user allowances for this contract in [DAI, USDC, USDT]
    /// - ethBalance: user’s ETH balance
    function userFullView(address user)
        external
        view
        returns (
            uint256 principalSettle,
            uint256 netNowSettle,
            uint256 futureIncomeSettle,
            uint256 totalWithFutureSettle,
            uint256[POOL_ASSETS] memory perTokenNet,
            uint256[POOL_ASSETS] memory walletTokenBalances,
            uint256[POOL_ASSETS] memory walletTokenAllowances,
            uint256 ethBalance
        )
    {
        principalSettle = userPrincipalSettle[user];

        // Wallet balances and allowances per the three tokens
        for (uint256 i = 0; i < POOL_ASSETS; i++) {
            IERC20 t = tokens[i];
            walletTokenBalances[i]   = t.balanceOf(user);
            walletTokenAllowances[i] = t.allowance(user, address(this));
        }

        // ETH balance
        ethBalance = user.balance;

        uint256 wl = balanceOf(user);
        if (wl == 0) {
            // perTokenNet is zero-initialized by default
            return (
                principalSettle,
                0,
                0,
                0,
                perTokenNet,
                walletTokenBalances,
                walletTokenAllowances,
                ethBalance
            );
        }

        // Current NET in the settle token
        netNowSettle = availableToWithdrawal(wl);

        // Future user yield (NET, after WL fee) in the settle token
        futureIncomeSettle = userFutureIncome(user);

        // Total potential (current + future)
        totalWithFutureSettle = netNowSettle + futureIncomeSettle;

        // NET per each of the three tokens
        perTokenNet = availableToWithdrawalPerToken(wl);
    }
}