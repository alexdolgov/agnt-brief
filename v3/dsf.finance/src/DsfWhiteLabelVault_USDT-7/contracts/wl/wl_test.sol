// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/*──────────────────────────────────────────────────────────────────────────────
 * DSF White-Label Vault (WL) — accounting for the “body” of the deposit in USDT (settleIndex)
 *
 * Public methods are identical to DSF in terms of signatures:
 *   - deposit(uint256[POOL_ASSETS] memory amounts)
 *   - withdraw(uint256 lpShares, uint256[POOL_ASSETS] memory tokenAmounts,
 *              IStrategy.WithdrawalType withdrawalType, uint128 tokenIndex)
 *
 * Calculation order:
 *   1) grossSettleAll = calcWithdrawOneCoin( L_ratio, settleIndex ) for ALL WL
 *   2) feeUncrystallized = uncrystallized HWM commission
 *   3) netSettleAll = grossSettleAll - feeUncrystallized
 *   4) priceWLNet = netSettleAll / totalSupply
 *   5) userNet = wlShares * priceWLNet
 *
 * Accounting for the “body” (in USDT):
*   - Deposit: userPrincipalSettle += previewUserNetSettleForWL(wlMint)
 *   - Withdrawal:   we first calculate previewUserNetSettleForWL(wlShares),
 *              divide by body/profit, reduce userPrincipalSettle by “body”.
 *   - Transfer: we proportionally transfer part of userPrincipalSettle from from to to.
 *
 * Transaction history (in USDT, NET):
 *   kind:
 *     0 = deposit
 *     1 = withdrawal
 *     2 = OUT transfer (from → to)
 *     3 = IN transfer  (to ← from)
 *
 * IMPORTANT: Slippage protection is fully implemented in the main DSF.
 * WL only passes parameters to DSF.
 *──────────────────────────────────────────────────────────────────────────────*/

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/* ── Mini-interfaces to the already deployed DSF ─────────────────────────────── */

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

// Only for matching the enum type in the signature (as in DSF)
interface IStrategy {
    enum WithdrawalType { Base, OneCoin }
}

// DSF Strategy: One-coin preview by LP share (1e18)
interface IStrategyView {
    function calcWithdrawOneCoin(uint256 lpShareRatio1e18, uint128 tokenIndex)
        external
        view
        returns (uint256 tokenAmount);
}

contract DsfWhiteLabelVault_USDT is ERC20, Ownable, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // ───────── Константы / параметры
    uint8   public constant POOL_ASSETS = 3;
    uint256 public constant DENOM       = 10_000;   // bps
    uint256 public constant USER_COOLDOWN_BLOCKS = 1;

    /// @notice threshold for HWM skim, bps growth of gross WL price
    uint256 public minSkimGainBps = 1; // 0.01%

    // ───────── External addresses
    IDSF   public immutable dsf;
    IERC20 public immutable dsfLp;
    IERC20[POOL_ASSETS] public tokens;     // [DAI, USDC, USDT], например

    /// @notice settlement token index (0..2) — USDT by default
    uint128 public settleIndex = 2;

    /// @notice owner treasurer (receives WL commission in DSF LP)
    address public principalTreasury;

    /// @notice owner commission (HWM fee), bps (e.g., 3000 = 30%)
    uint16 public partnerFeeBps;

    // ───────── Учёт / анти-MEV
    uint256 public HWM_settlePerWL;          // high-water mark (settle per WL), GROSS
    uint256 public lastNavTouchBlock;        // touch protection in 1 block
    mapping(address => uint256) public lastUserActionBlock; // cooldown юзеров

    /// @notice Total crystallized commissions (in USDT equivalent) — analytics
    uint256 public ownerCrystallizedSettle;

    /// @notice user deposit amount (in USDT)
    mapping(address => uint256) public userPrincipalSettle;

    // ───────── User transaction history (in USDT)
    struct TxRecord {
        uint8   kind;         // 0=deposit, 1=withdraw, 2=transferOut, 3=transferIn
        uint64  timestamp;    // block.timestamp
        uint256 amountSettle; // сумма в USDT (NET)
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
        uint128 _settleIndex
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

        HWM_settlePerWL = 0; // will be set on the first deposit
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

    /// Recommendation: change settleIndex when WL is empty (you can fix require)
    function setSettleIndex(uint128 idx) external onlyOwner {
        require(idx < POOL_ASSETS, "WL: bad settle index");
        // require(totalSupply() == 0, "WL: change settleIndex only when empty");
        settleIndex = idx;
        emit UpdateSettleIndex(idx);
    }

    function pause() external onlyOwner { _pause(); }
    function unpause() external onlyOwner { _unpause(); }

    // ───────── Internal utilities
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
            // Allow minimum only for the selected one-coin index
            for (uint i = 0; i < POOL_ASSETS; i++) out[i] = 0;
            out[uint256(tokenIdx)] = amounts[uint256(tokenIdx)];
        } else {
            return amounts;
        }
    }

    // ───────── View helpers (GROSS calculation via pid strategy)
    /// @dev GROSS: how much settle we will get with a one-coin withdrawal of L LP via defaultWithdrawPid
    function grossSettleAll() public view returns (uint256) {
        uint256 L = dsfLp.balanceOf(address(this));
        if (L == 0) return 0;

        uint256 pid = dsf.defaultWithdrawPid();
        (address strat,, uint256 poolLpShares) = dsf.poolInfo(pid);
        if (poolLpShares == 0) return 0;

        // LP share in 1e18
        uint256 ratio = (L * 1e18) / poolLpShares;
        if (ratio == 0) return 0;
        if (ratio > 1e18) ratio = 1e18;

        return IStrategyView(strat).calcWithdrawOneCoin(ratio, settleIndex);
    }

    function priceWLGrossSettle() public view returns (uint256) {
        uint256 ts = totalSupply();
        if (ts == 0) return 0;
        uint256 g = grossSettleAll();
        return g / ts;
    }

    /// @dev Uncrystallized HWM commission (in USDT)
    function feeDueSettle() public view returns (uint256) {
        uint256 ts = totalSupply();
        if (ts == 0 || HWM_settlePerWL == 0) return 0;
        uint256 priceGross = priceWLGrossSettle();
        if (priceGross <= HWM_settlePerWL) return 0;
        uint256 profit = (priceGross - HWM_settlePerWL) * ts;
        return (profit * partnerFeeBps) / DENOM;
    }

    // ───────── NET NAV and WL price (GROSS → −fee → NET)
    function netSettleAll() public view returns (uint256) {
        uint256 g = grossSettleAll();
        uint256 f = feeDueSettle();
        return g > f ? g - f : 0;
    }

    function priceWLNetSettle1e18() public view returns (uint256) {
        uint256 ts = totalSupply();
        if (ts == 0) return 0;
        return (netSettleAll() * 1e18) / ts;
    }

    function previewUserNetSettleForWL(uint256 wlShares) public view returns (uint256) {
        uint256 px = priceWLNetSettle1e18();
        return (wlShares * px) / 1e18;
    }

    function userPrincipalSettleValue(address user) external view returns (uint256) {
        return userPrincipalSettle[user];
    }

    function userUnrealizedProfitSettle(address user) external view returns (uint256) {
        uint256 bal = balanceOf(user);
        if (bal == 0) return 0;
        uint256 totalSettle = previewUserNetSettleForWL(bal);
        uint256 principal   = userPrincipalSettle[user];
        return totalSettle > principal ? totalSettle - principal : 0;
    }

    // ───────── Transaction history (view)
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

    // ───────── soft auto-skim (crystallization of HWM commission in DSF LP)
    function _trySkim() internal {
        if (block.number <= lastNavTouchBlock) return;

        uint256 ts = totalSupply();
        if (ts == 0) { HWM_settlePerWL = 0; return; }

        uint256 priceGross = priceWLGrossSettle();
        if (HWM_settlePerWL == 0) { HWM_settlePerWL = priceGross; return; }

        if (priceGross * DENOM < HWM_settlePerWL * (DENOM + minSkimGainBps)) return;

        uint256 feeSettle = feeDueSettle();
        if (feeSettle == 0) { HWM_settlePerWL = priceGross; return; }

        uint256 L = dsfLp.balanceOf(address(this));
        uint256 grossSettle = grossSettleAll();
        if (grossSettle == 0 || L == 0) { HWM_settlePerWL = priceGross; return; }

        // feeLp = feeSettle * L / grossSettle
        uint256 feeLp = (feeSettle * L) / grossSettle;
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

        for (uint i = 0; i < POOL_ASSETS; i++) {
            if (amounts[i] > 0) {
                tokens[i].safeTransferFrom(msg.sender, address(this), amounts[i]);
            }
        }
        for (uint i = 0; i < POOL_ASSETS; i++) {
            if (amounts[i] > 0) {
                tokens[i].forceApprove(address(dsf), 0);
                tokens[i].forceApprove(address(dsf), amounts[i]);
            }
        }

        uint256 lpBefore = dsfLp.balanceOf(address(this));
        dsf.deposit(amounts); // slippage checks — in DSF
        uint256 lpAfter  = dsfLp.balanceOf(address(this));
        uint256 lpGained = lpAfter - lpBefore;
        require(lpGained > 0, "WL: no dsf lp");

        uint256 tsBefore = totalSupply();
        uint256 wlMint;
        if (tsBefore == 0) {
            wlMint = lpGained; // start 1:1 WL↔LP
        } else {
            wlMint = (tsBefore * lpGained) / lpBefore;
        }
        _mint(msg.sender, wlMint);

        // We fix the “body” of the deposit in USDT at the CURRENT NET price
        uint256 addedPrincipalSettle = previewUserNetSettleForWL(wlMint);
        if (addedPrincipalSettle > 0) {
            userPrincipalSettle[msg.sender] += addedPrincipalSettle;
            emit PrincipalSettleIncreased(msg.sender, addedPrincipalSettle, userPrincipalSettle[msg.sender]);

            // History: deposit (kind = 0)
            _userTxHistory[msg.sender].push(
                TxRecord({
                    kind: 0,
                    timestamp: uint64(block.timestamp),
                    amountSettle: addedPrincipalSettle
                })
            );
        }

        if (tsBefore == 0) {
            HWM_settlePerWL = priceWLGrossSettle(); // HWM by GROSS at the start
        }

        _touchNav();
        emit DepositWL(msg.sender, amounts, wlMint, lpGained);
    }

    // ───────── WITHDRAW (signature identical to DSF)
    /// @param lpShares Number of WL shares to burn (name retained for identity purposes)
    /// @param tokenAmounts In DSF, this is minOut for each token — pass as is
    /// @param withdrawalType DSF mode: Base/OneCoin — pass as is
    /// @param tokenIndex Index for OneCoin — pass as is
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
            withdrawalType == IStrategy.WithdrawalType.OneCoin && tokenIndex == settleIndex,
            "WL: only settle one-coin"
        );
        _trySkim();

        // Here, lpShares are WL shares for burning (name matches DSF for signature)
        require(lpShares > 0 && balanceOf(msg.sender) >= lpShares, "WL: bad shares");

        // NET preview in USDT for these WL shares
        uint256 previewSettleOutNet = previewUserNetSettleForWL(lpShares);

        // Breakdown into “body/profit” in user accounting
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

        // Proportionally translate WL→DSF LP to output
        uint256 dsfLpRedeem = (lpBalBefore * lpShares) / tsBefore;
        require(dsfLpRedeem > 0, "WL: zero redeem");

        _burn(msg.sender, lpShares);

        uint256[POOL_ASSETS] memory balBefore;
        for (uint i = 0; i < POOL_ASSETS; i++) {
            balBefore[i] = IERC20(tokens[i]).balanceOf(address(this));
        }

        dsfLp.forceApprove(address(dsf), 0);
        dsfLp.forceApprove(address(dsf), dsfLpRedeem);

        // All slip conditions and minOut checks are inside DSF
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

        // History: Withdraw (kind = 1)
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

    // ───────── Redefining transfer logic to account for “body” and history
    /// ERC20 v5: _update вызывается при mint/burn/transfer
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

        // Regular transfer: transfer proportionally to the principal + write down the history
        if (value > 0) {
            uint256 fromBalanceBefore = balanceOf(from);
            uint256 fromPrincipal     = userPrincipalSettle[from];

            // We transfer the proportional part of the “body” from to
            if (fromBalanceBefore > 0 && fromPrincipal > 0) {
                uint256 movedPrincipal = (fromPrincipal * value) / fromBalanceBefore;
                if (movedPrincipal > 0) {
                    userPrincipalSettle[from] = fromPrincipal - movedPrincipal;
                    userPrincipalSettle[to]   += movedPrincipal;
                }
            }

            // We log the transfer amount in USDT at the current WL NET price.
            uint256 transferNetSettle = previewUserNetSettleForWL(value);
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

    // ───────── manual HWM skim

    function skimPrincipalFeeInDsfLp() external onlyOwner nonReentrant whenNotPaused {
        require(block.number > lastNavTouchBlock, "WL: nav touched");

        uint256 ts = totalSupply();
        if (ts == 0) { HWM_settlePerWL = 0; return; }

        uint256 priceGross = priceWLGrossSettle();
        if (HWM_settlePerWL == 0) { HWM_settlePerWL = priceGross; return; }

        if (priceGross * DENOM < HWM_settlePerWL * (DENOM + minSkimGainBps)) return;

        uint256 feeSettle = feeDueSettle();
        if (feeSettle == 0) { HWM_settlePerWL = priceGross; return; }

        uint256 L = dsfLp.balanceOf(address(this));
        uint256 gross = grossSettleAll();
        if (gross == 0 || L == 0) { HWM_settlePerWL = priceGross; return; }

        uint256 feeLp = (feeSettle * L) / gross;
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

    // ───────── emergency sweep (not DSF LP and not pool tokens)
    function sweep(address token, address to, uint256 amount) external onlyOwner {
        require(to != address(0), "WL: bad to");
        for (uint i = 0; i < POOL_ASSETS; i++) {
            require(token != address(tokens[i]), "WL: pool token");
        }
        require(token != address(dsfLp), "WL: dsf lp");
        IERC20(token).safeTransfer(to, amount);
    }

    // ───────── (optional) view for debugging the calculation order
    function debugPreviewAllAndUser(uint256 wlShares)
        external
        view
        returns (uint256 grossAll, uint256 feeUncrystallized, uint256 netAll, uint256 userNet)
    {
        grossAll = grossSettleAll();
        feeUncrystallized = feeDueSettle();
        netAll = grossAll > feeUncrystallized ? grossAll - feeUncrystallized : 0;
        if (totalSupply() == 0) return (grossAll, feeUncrystallized, netAll, 0);
        userNet = (wlShares * netAll) / totalSupply();
    }
}
