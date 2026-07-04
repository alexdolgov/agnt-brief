// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {IERC20}          from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20}       from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessControl}   from "@openzeppelin/contracts/access/AccessControl.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Pausable}        from "@openzeppelin/contracts/utils/Pausable.sol";

interface IEpochStakingDistributor {
    function stake(uint256 amount) external;
    function unstake(uint256 amount) external;
    function claim(address token, uint256 epochId) external;
    function previewClaim(address user, address token, uint256 epoch) external view returns (uint256);
    function balanceOf(address user) external view returns (uint256);
    function currentEpoch() external view returns (uint256);
    function receiptToken() external view returns (address);
    function iAERO() external view returns (address);
}

interface IRewardSwapper {
    enum RouterKind { AERODROME, UNIV3, AGGREGATOR }

    struct PullStep {
        RouterKind kind;
        address    tokenIn;
        address    outToken;
        bool       useAll;
        uint256    amountIn;
        uint256    quotedIn;
        uint256    quotedOut;
        uint16     slippageBps;
        bytes      data;
        bool       viaPermit2;
        bytes      permitSig;
        uint256    permitAmount;
        uint256    permitDeadline;
        uint256    permitNonce;
    }

    struct ExecOpts {
        uint256 minTotalOut;
        bool    allowPartial;
    }

    function executePlanFromCallerAdvanced(
        PullStep[] calldata plan,
        address recipient,
        ExecOpts memory opts
    ) external returns (uint256 totalOut);
}

/// @title  iAEROAutoUSDCVault
/// @notice Wraps the protocol's iAERO staking with automatic claim + swap-to-USDC.
///         Users deposit iAERO, the vault stakes it into the EpochStakingDistributor,
///         a keeper harvests raw reward tokens each epoch and routes them through the
///         existing RewardSwapper to convert everything into USDC. USDC is bucketed
///         per epoch and split pro-rata using the same balance-at-epoch-start
///         snapshot semantics as the underlying distributor — so depositors only
///         earn from epochs they were in at the epoch boundary.
contract iAEROAutoUSDCVault is AccessControl, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;

    // ============================================================
    // Roles & constants
    // ============================================================

    bytes32 public constant KEEPER_ROLE = keccak256("KEEPER_ROLE");
    uint256 public constant WEEK        = 7 days;

    // ============================================================
    // Immutables
    // ============================================================

    IERC20  public immutable iAERO;
    IERC20  public immutable USDC;
    IEpochStakingDistributor public immutable epochDist;
    IRewardSwapper           public immutable swapper;

    // ============================================================
    // Shares (1:1 with staked iAERO — no NAV math, no oracle)
    // ============================================================

    uint256 public totalShares;
    mapping(address => uint256) public sharesOf;

    // ============================================================
    // Checkpoints (mirrors EpochStakingDistributor.Checkpoint exactly)
    // ============================================================

    struct Checkpoint { uint64 ts; uint192 value; }

    mapping(address => Checkpoint[]) private _userCkpts;
    Checkpoint[]                     private _supplyCkpts;

    // ============================================================
    // Per-epoch USDC accounting
    // ============================================================

    /// @notice USDC harvested and bucketed to a given completed epoch.
    mapping(uint256 => uint256) public usdcForEpoch;

    /// @notice Vault totalShares snapshot at epoch start (set on first harvest call).
    mapping(uint256 => uint256) public supplySnapAtEpoch;

    /// @notice Cumulative USDC claimed by `user` from `epoch`.
    mapping(address => mapping(uint256 => uint256)) public claimedByUser;

    /// @notice Sticky flag: once true, no more `harvest()` calls accepted for this epoch.
    mapping(uint256 => bool) public epochFinalized;

    /// @notice Tokens that the vault has already granted max approval to the swapper.
    mapping(address => bool) public approvedToSwapper;

    // ============================================================
    // Events
    // ============================================================

    event Deposited (address indexed user, uint256 amount);
    event Withdrawn (address indexed user, uint256 amount);
    event Harvested (uint256 indexed epoch, uint256 usdcGained, bool finalized);
    event Claimed   (address indexed user, uint256 indexed epoch, uint256 usdc);
    event ApprovedSwapper(address indexed token);
    event Rescued   (address indexed token, address indexed to, uint256 amount);
    event Unfinalized(uint256 indexed epoch);

    // ============================================================
    // Errors
    // ============================================================

    error ZeroAddress();
    error ZeroAmount();
    error InsufficientShares();
    error FutureEpoch();
    error AlreadyFinalized();
    error NotFinalized();
    error NoStakersAtEpoch();
    error OutputNotUSDC();
    error InputIsUSDC();
    error Permit2NotSupported();
    error TooManyItems();
    error Protected();
    error WrongIAERO();

    // ============================================================
    // Constructor
    // ============================================================

    constructor(
        address _iAERO,
        address _usdc,
        address _epochDist,
        address _swapper,
        address admin,
        address keeper
    ) {
        if (_iAERO == address(0) || _usdc == address(0) ||
            _epochDist == address(0) || _swapper == address(0) ||
            admin == address(0) || keeper == address(0)) revert ZeroAddress();

        // Deployment sanity: the distributor must be configured for the same
        // iAERO this vault stakes. Catches address typos at deploy time.
        if (IEpochStakingDistributor(_epochDist).iAERO() != _iAERO) revert WrongIAERO();

        iAERO     = IERC20(_iAERO);
        USDC      = IERC20(_usdc);
        epochDist = IEpochStakingDistributor(_epochDist);
        swapper   = IRewardSwapper(_swapper);

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(KEEPER_ROLE, keeper);

        // Pre-approve the distributor to pull iAERO on stake (max approval is safe —
        // the distributor is owned by the same multisig as this vault).
        IERC20(_iAERO).forceApprove(_epochDist, type(uint256).max);
    }

    // ============================================================
    // USER ACTIONS
    // ============================================================

    /// @notice Deposit iAERO and receive shares 1:1. Vault auto-stakes downstream.
    /// @dev    State writes precede external calls (CEI) so read-only reentrancy
    ///         from any future callback-enabled token can't observe stale shares.
    function deposit(uint256 amount) external nonReentrant whenNotPaused {
        if (amount == 0) revert ZeroAmount();

        sharesOf[msg.sender] += amount;
        totalShares          += amount;
        _pushUserCkpt(msg.sender, sharesOf[msg.sender]);
        _pushSupplyCkpt(totalShares);

        iAERO.safeTransferFrom(msg.sender, address(this), amount);
        epochDist.stake(amount);

        emit Deposited(msg.sender, amount);
    }

    /// @notice Withdraw iAERO 1:1 by burning shares. Always open, even when paused.
    function withdraw(uint256 amount) external nonReentrant {
        if (amount == 0) revert ZeroAmount();
        if (sharesOf[msg.sender] < amount) revert InsufficientShares();

        sharesOf[msg.sender] -= amount;
        totalShares          -= amount;
        _pushUserCkpt(msg.sender, sharesOf[msg.sender]);
        _pushSupplyCkpt(totalShares);

        epochDist.unstake(amount);
        iAERO.safeTransfer(msg.sender, amount);

        emit Withdrawn(msg.sender, amount);
    }

    /// @notice Claim accrued USDC across the supplied epochs. Idempotent per epoch.
    function claimUSDC(uint256[] calldata epochs) external nonReentrant {
        if (epochs.length > 50) revert TooManyItems();
        uint256 total;
        for (uint256 i = 0; i < epochs.length; ++i) {
            total += _settle(msg.sender, epochs[i]);
        }
        if (total > 0) USDC.safeTransfer(msg.sender, total);
    }

    // ============================================================
    // KEEPER ACTIONS
    // ============================================================

    /// @notice Called one or more times per completed epoch by the keeper.
    /// @dev    Idempotent across batches; set `finalize: true` on the last call.
    ///         The supply snapshot is captured on the first call for the epoch.
    /// @param  epoch          Target completed epoch (must be < currentEpoch()).
    /// @param  tokensToClaim  Reward tokens to pull from EpochStakingDistributor.
    /// @param  swapPlan       PullSteps for the RewardSwapper. Every step.outToken
    ///                        MUST be USDC. Built off-chain from 0x quotes.
    /// @param  minUSDC        Global minimum total USDC out from swap plan.
    /// @param  finalize       Marks the epoch fully harvested if true.
    function harvest(
        uint256 epoch,
        address[] calldata tokensToClaim,
        IRewardSwapper.PullStep[] calldata swapPlan,
        uint256 minUSDC,
        bool finalize
    ) external nonReentrant onlyRole(KEEPER_ROLE) whenNotPaused {
        if (epoch >= epochDist.currentEpoch())  revert FutureEpoch();
        if (epochFinalized[epoch])              revert AlreadyFinalized();
        if (tokensToClaim.length > 50)          revert TooManyItems();
        // swapPlan length is bounded by RewardSwapper.MAX_STEPS (32).

        // 1. Take supply snapshot on first call for this epoch.
        if (supplySnapAtEpoch[epoch] == 0) {
            uint256 snap = _valueAt(_supplyCkpts, epoch);
            if (snap == 0) revert NoStakersAtEpoch();
            supplySnapAtEpoch[epoch] = snap;
        }

        // 2. Snapshot the vault's USDC balance BEFORE any reward-claim or swap.
        //    The delta after both phases is what we credit to this epoch — this
        //    covers (a) USDC paid directly as a reward token and (b) swap proceeds.
        uint256 usdcBefore = USDC.balanceOf(address(this));

        // 3. Claim raw reward tokens for this epoch. Wrapped in try/catch so a
        //    single broken token can't poison the harvest.
        for (uint256 i = 0; i < tokensToClaim.length; ++i) {
            try epochDist.claim(tokensToClaim[i], epoch) {} catch {}
        }

        // 4. Validate plan + lazy max-approve each tokenIn to the swapper.
        //    USDC-in is rejected to prevent a compromised keeper from "swapping
        //    USDC for less USDC" via slippage.
        for (uint256 i = 0; i < swapPlan.length; ++i) {
            IRewardSwapper.PullStep calldata step = swapPlan[i];
            if (step.outToken != address(USDC))     revert OutputNotUSDC();
            if (step.tokenIn  == address(USDC))     revert InputIsUSDC();
            if (step.viaPermit2)                    revert Permit2NotSupported();

            if (!approvedToSwapper[step.tokenIn]) {
                IERC20(step.tokenIn).forceApprove(address(swapper), type(uint256).max);
                approvedToSwapper[step.tokenIn] = true;
                emit ApprovedSwapper(step.tokenIn);
            }
        }

        // 5. Execute the swap plan. `allowPartial: true` so one stuck token
        //    doesn't kill the batch. Slippage protection via minTotalOut.
        if (swapPlan.length > 0) {
            swapper.executePlanFromCallerAdvanced(
                swapPlan,
                address(this),
                IRewardSwapper.ExecOpts({ minTotalOut: minUSDC, allowPartial: true })
            );
        }

        // 6. Bucket the full USDC delta to this epoch.
        uint256 gained = USDC.balanceOf(address(this)) - usdcBefore;
        usdcForEpoch[epoch] += gained;

        if (finalize) epochFinalized[epoch] = true;
        emit Harvested(epoch, gained, finalize);
    }

    // ============================================================
    // ADMIN
    // ============================================================

    function pause()   external onlyRole(DEFAULT_ADMIN_ROLE) { _pause(); }
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) { _unpause(); }

    /// @notice Re-open a previously-finalized epoch so the keeper can harvest
    ///         remaining rewards. Safe: subsequent `harvest()` calls only ADD
    ///         to `usdcForEpoch[epoch]`, never reduce it. Users who already
    ///         claimed receive the delta on their next claim (the math handles
    ///         incremental top-ups).
    /// @dev    Intended for two cases:
    ///           1) A compromised/buggy keeper finalized early with empty bucket
    ///           2) Upstream funded additional rewards for an already-finalized
    ///              epoch (e.g., late notifyRewardForEpoch landed)
    function unfinalize(uint256 epoch) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (!epochFinalized[epoch]) revert NotFinalized();
        epochFinalized[epoch] = false;
        emit Unfinalized(epoch);
    }

    /// @notice Rescue accumulated unswappable reward tokens.
    /// @dev    The following are permanently protected:
    ///           - iAERO    (user principal — withdrawals depend on vault holding it)
    ///           - USDC     (claimable share-holder property)
    ///           - stiAERO  (upstream receipt token — withdrawals depend on the vault
    ///                       having a balance equal to its downstream stake; draining
    ///                       it would brick `withdraw()` permanently)
    function rescue(address token, address to, uint256 amount)
        external onlyRole(DEFAULT_ADMIN_ROLE)
    {
        if (to == address(0)) revert ZeroAddress();
        if (token == address(iAERO) || token == address(USDC)) revert Protected();
        // Query receipt token dynamically — upstream allows changing it until frozen,
        // so we look it up at rescue time rather than caching at construction.
        address receipt = epochDist.receiptToken();
        if (receipt != address(0) && token == receipt) revert Protected();
        IERC20(token).safeTransfer(to, amount);
        emit Rescued(token, to, amount);
    }

    // ============================================================
    // VIEWS
    // ============================================================

    function balanceAtEpochStart(address user, uint256 epoch) external view returns (uint256) {
        return _valueAt(_userCkpts[user], epoch);
    }

    function totalSupplyAtEpochStart(uint256 epoch) external view returns (uint256) {
        return _valueAt(_supplyCkpts, epoch);
    }

    function previewUSDC(address user, uint256 epoch) external view returns (uint256) {
        return _pending(user, epoch);
    }

    function previewUSDCMany(address user, uint256[] calldata epochs)
        external view returns (uint256[] memory amounts, uint256 total)
    {
        amounts = new uint256[](epochs.length);
        for (uint256 i = 0; i < epochs.length; ++i) {
            amounts[i] = _pending(user, epochs[i]);
            total += amounts[i];
        }
    }

    function userCheckpointsLength(address user)  external view returns (uint256) { return _userCkpts[user].length; }
    function supplyCheckpointsLength()             external view returns (uint256) { return _supplyCkpts.length; }

    // ============================================================
    // INTERNAL
    // ============================================================

    function _settle(address user, uint256 epoch) internal returns (uint256 amt) {
        amt = _pending(user, epoch);
        if (amt == 0) return 0;
        claimedByUser[user][epoch] += amt;
        emit Claimed(user, epoch, amt);
    }

    function _pending(address user, uint256 epoch) internal view returns (uint256) {
        uint256 total = usdcForEpoch[epoch];
        if (total == 0) return 0;
        uint256 supplySnap = supplySnapAtEpoch[epoch];
        if (supplySnap == 0) return 0;
        uint256 balSnap = _valueAt(_userCkpts[user], epoch);
        if (balSnap == 0) return 0;

        uint256 gross   = (total * balSnap) / supplySnap;
        uint256 already = claimedByUser[user][epoch];
        return gross > already ? gross - already : 0;
    }

    // ----- checkpoint helpers (identical pattern to EpochStakingDistributor) -----

    function _pushUserCkpt(address user, uint256 newBal) internal {
        Checkpoint[] storage ck = _userCkpts[user];
        uint64 nowTs = uint64(block.timestamp);
        if (ck.length != 0 && ck[ck.length - 1].ts == nowTs) {
            ck[ck.length - 1].value = uint192(newBal);
        } else {
            ck.push(Checkpoint({ ts: nowTs, value: uint192(newBal) }));
        }
    }

    function _pushSupplyCkpt(uint256 newSupply) internal {
        uint64 nowTs = uint64(block.timestamp);
        if (_supplyCkpts.length != 0 && _supplyCkpts[_supplyCkpts.length - 1].ts == nowTs) {
            _supplyCkpts[_supplyCkpts.length - 1].value = uint192(newSupply);
        } else {
            _supplyCkpts.push(Checkpoint({ ts: nowTs, value: uint192(newSupply) }));
        }
    }

    function _valueAt(Checkpoint[] storage ck, uint256 ts) internal view returns (uint256) {
        uint256 n = ck.length;
        if (n == 0) return 0;
        if (ts >= ck[n - 1].ts) return ck[n - 1].value;
        if (ts < ck[0].ts)      return 0;
        uint256 lo = 0; uint256 hi = n - 1;
        while (lo < hi) {
            uint256 mid = (lo + hi + 1) >> 1;
            if (ck[mid].ts <= ts) lo = mid; else hi = mid - 1;
        }
        return ck[lo].value;
    }
}
