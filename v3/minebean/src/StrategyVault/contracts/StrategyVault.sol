// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

interface IGridMining {
    function deploy(uint8[] calldata blockIds) external payable;
    function claimETH() external;
    function claimBEAN() external;
    function getTotalPendingRewards(address user)
        external
        view
        returns (uint256 pendingETH, uint256 pendingUnroastedBEAN, uint256 pendingRoastedBEAN, uint64 uncheckpointedRound);
    function currentRoundId() external view returns (uint64);
    function ROASTING_FEE_BPS() external view returns (uint256);
    function userUnclaimedBEAN(address user) external view returns (uint256);
}

/**
 * @title StrategyVault
 */
contract StrategyVault is ReentrancyGuard {
    using SafeERC20 for IERC20;

    // ============ Constants ============

    uint256 public constant PRECISION = 1e18;
    uint256 private constant DEAD_SHARES = 1000;
    uint256 public constant MAX_PENDING_DEPOSITORS = 20;
    uint256 public constant MIN_DEPOSIT = 0.0000025 ether;

    // ============ State ============

    address public executor;
    address public gridMining;
    address public bean;

    uint256 public feeBps;        
    uint256 public maxDeployBps;  
    uint256 public roastingFeeBps; // Cached from GridMining.ROASTING_FEE_BPS()

    mapping(address => uint256) public shares;
    uint256 public totalShares;

    // BEAN accumulator for yield tracking via virtual sync
    uint256 public accBeanPerShare;                      // BEAN per share, scaled by PRECISION
    uint256 public lastSyncedPendingBEAN;                // last synced net BEAN from GridMining
    mapping(address => uint256) public userBeanDebt;     // debt tracking per user
    mapping(address => uint256) public userPendingBean;  // accumulated unclaimed BEAN

    // Round deployment tracking
    uint256 public deployedInFlight;                     // Total ETH deployed in active round
    uint64 public activeDeployRound;                    
    uint256 public deployTotalShares;                    // Total shares at time of deployment

    // Pending withdrawal system
    mapping(address => uint256) public pendingDeployedShare;  // User's share of deployedInFlight at exit
    mapping(address => uint64) public pendingRoundId;         // Which round the pending is for
    uint256 public totalPendingDeployedShare;                 // Sum of all pending shares

    // Resolution tracking
    mapping(uint64 => uint256) public roundReturnPerDeployed; // PRECISION-scaled: claimed / deployed
    mapping(uint64 => bool) public roundResolved;             // Whether a round has been resolved

    // ETH set aside for resolved pending claims
    uint256 public pendingWithdrawalPool;

    // Phantom shares for round BEAN allocation (users who fully exit mid-round)
    mapping(address => uint256) public phantomShares;
    uint256 public totalPhantomShares;
    mapping(uint64 => uint256) public roundBEANPerPhantomShare; // PRECISION-scaled
    uint256 public phantomBEANReserved;

    // Pending deposits queued during active round, processed on next executeDeploy
    mapping(address => uint256) public pendingDeposit;
    uint256 public totalPendingDeposits;
    address[] internal pendingDepositors;
    mapping(address => bool) internal isPendingDepositor;

    // BEAN locking requiremient
    uint256 public beanLockAmount;                    
    mapping(address => bool) public hasLockedBEAN;    
    uint256 public totalLockedBEAN;

    bool private initialized;

    // ============ Events ============

    event Deposited(address indexed user, uint256 amount, uint256 sharesMinted);
    event DepositQueued(address indexed user, uint256 amount);
    event DepositCancelled(address indexed user, uint256 amount);
    event WithdrawnETH(address indexed user, uint256 sharesBurned, uint256 ethAmount);
    event BEANClaimed(address indexed user, uint256 amount);
    event Deployed(uint8[] blocks, uint256 amount, uint256 fee);
    event ClaimedBEAN(uint256 amount);
    event ExecutorUpdated(address indexed oldExecutor, address indexed newExecutor);
    event PendingWithdrawalCreated(address indexed user, uint64 indexed roundId, uint256 deployedShare);
    event PendingWithdrawalClaimed(address indexed user, uint256 amount);
    event PendingWithdrawalCancelled(address indexed user, uint256 deployedShare);
    event RoundSettled(uint64 indexed roundId, uint256 ethClaimed, uint256 roundBEAN);
    event BEANLocked(address indexed user, uint256 amount);
    event BEANUnlocked(address indexed user, uint256 amount);

    // ============ Errors ============

    error AlreadyInitialized();
    error NotExecutor();
    error ZeroDeposit();
    error ZeroShares();
    error DeployExceedsMax(uint256 requested, uint256 max);
    error InsufficientBalance(uint256 requested, uint256 available);
    error ZeroAddress();
    error TransferFailed();
    error NothingToClaim();
    error RoundNotSettled();
    error FeeTooHigh();
    error MaxDeployTooHigh();
    error TooManyPendingDeposits();
    error DepositTooSmall();
    error NoLockRequired();
    error AlreadyLocked();
    error NotLocked();
    error BEANNotLocked();

    // ============ Modifiers ============

    modifier onlyExecutor() {
        if (msg.sender != executor) revert NotExecutor();
        _;
    }

    // ============ Constructor (implementation only) ============

    /// @dev Prevents the implementation contract from being initialized directly.
    ///      Clones have separate storage and are unaffected.
    constructor() {
        initialized = true;
    }

    // ============ Initialization ============

    function initialize(
        address _executor,
        address _gridMining,
        address _bean,
        uint256 _feeBps,
        uint256 _maxDeployBps,
        uint256 _beanLockAmount
    ) external {
        if (initialized) revert AlreadyInitialized();
        if (_executor == address(0)) revert ZeroAddress();
        if (_gridMining == address(0)) revert ZeroAddress();
        if (_bean == address(0)) revert ZeroAddress();
        if (_feeBps > 1000) revert FeeTooHigh();      
        if (_maxDeployBps > 5000) revert MaxDeployTooHigh();

        initialized = true;
        executor = _executor;
        gridMining = _gridMining;
        bean = _bean;
        feeBps = _feeBps;
        maxDeployBps = _maxDeployBps;
        beanLockAmount = _beanLockAmount;
        roastingFeeBps = IGridMining(_gridMining).ROASTING_FEE_BPS();
    }

    // ============ Internal Helpers ============

    /**
     * @dev Virtually sync the BEAN accumulator by reading pending rewards from GridMining.
     *      No actual BEAN claim. BEAN stays on GridMining earning roasting fees.
     *      Uses the same fee formula as GridMining.claimBEAN():
     *      net = unroasted - (unroasted * ROASTING_FEE_BPS / 10000) + roasted
     *      Excludes BEAN reserved for phantom claimants to prevent double counting.
     */
    function _syncBeanAccumulator() internal {
        if (totalShares == 0) return;

        (, uint256 unroasted, uint256 roasted, ) =
            IGridMining(gridMining).getTotalPendingRewards(address(this));

        uint256 fee = (unroasted * roastingFeeBps) / 10000;
        uint256 netBEAN = unroasted - fee + roasted;

        // Exclude BEAN reserved for phantom claims
        uint256 available = netBEAN > phantomBEANReserved
            ? netBEAN - phantomBEANReserved
            : 0;

        if (available > lastSyncedPendingBEAN) {
            uint256 delta = available - lastSyncedPendingBEAN;
            accBeanPerShare += (delta * PRECISION) / totalShares;
            lastSyncedPendingBEAN = available;
        }
    }

    /**
     * @dev Actually claim BEAN from GridMining into the vault.
     *      Reconciles any difference between synced amount and actual received.
     *      Accounts for phantomBEANReserved in surplus calculation.
     *      Burns surplus BEAN if no shareholders exist to distribute it to.
     */
    function _claimBEANFromGridMining() internal {
        uint256 balanceBefore = IERC20(bean).balanceOf(address(this));
        try IGridMining(gridMining).claimBEAN() {} catch {}
        uint256 received = IERC20(bean).balanceOf(address(this)) - balanceBefore;

        // Distribute any surplus beyond what was synced + phantom reserved.
        // totalShares >= DEAD_SHARES after first deposit (dead shares at address(1) are permanent),
        // so division is always safe.
        uint256 expected = lastSyncedPendingBEAN + phantomBEANReserved;
        if (received > expected && totalShares > 0) {
            uint256 surplus = received - expected;
            accBeanPerShare += (surplus * PRECISION) / totalShares;
        } else if (received < expected && totalShares > 0) {
            uint256 shortfall = expected - received;
            uint256 reduction = (shortfall * PRECISION) / totalShares;
            accBeanPerShare = accBeanPerShare > reduction ? accBeanPerShare - reduction : 0;
        }

        lastSyncedPendingBEAN = 0;
    }

    /**
     * @dev Snapshot user's pending BEAN before any share change.
     *      Must be called before modifying shares[user] or totalShares.
     */
    function _updateBeanRewards(address user) internal {
        uint256 userShares = shares[user];
        if (userShares > 0) {
            uint256 owed = (userShares * accBeanPerShare) / PRECISION;
            uint256 debt = userBeanDebt[user];
            if (owed > debt) {
                userPendingBean[user] += owed - debt;
            }
        }
        userBeanDebt[user] = (shares[user] * accBeanPerShare) / PRECISION;
    }

    /**
     * @dev Resolve any existing phantom BEAN for a user into userPendingBean.
     *      Called before creating new phantom shares (withdrawETH) or resolving pending (deposit).
     */
    function _resolvePhantomBEAN(address user) internal {
        uint256 pShares = phantomShares[user];
        if (pShares == 0) return;

        uint64 roundId = pendingRoundId[user];
        if (roundResolved[roundId]) {
            uint256 phantomBEAN = (pShares * roundBEANPerPhantomShare[roundId]) / PRECISION;
            if (phantomBEAN > 0) {
                if (phantomBEAN > phantomBEANReserved) phantomBEAN = phantomBEANReserved;
                userPendingBean[user] += phantomBEAN;
                phantomBEANReserved -= phantomBEAN;
                // Bump lastSyncedPendingBEAN so the accumulator doesn't re-distribute
                // this BEAN as a 'ghost delta' when phantomBEANReserved decreases.
                lastSyncedPendingBEAN += phantomBEAN;
            }
            phantomShares[user] = 0;
            // Clear pendingRoundId if ETH was already claimed
            if (pendingDeployedShare[user] == 0) {
                pendingRoundId[user] = 0;
            }
        }
    }

    /**
     * @dev Settle the previous round if it has completed. Claims ETH from GridMining
     *      and resolves pending withdrawals using per-round return ratios.
     *      Measures exact round BEAN via userUnclaimedBEAN delta and allocates
     *      phantom portion to exited users. Active shareholder portion flows
     *      through the accumulator naturally on next _syncBeanAccumulator call.
     */
    function _settleRound() internal {
        if (deployedInFlight == 0) return;

        uint64 currentRound = IGridMining(gridMining).currentRoundId();
        if (currentRound <= activeDeployRound) return; // round not settled yet

        // Snapshot BEAN before checkpoint
        uint256 beanBefore = IGridMining(gridMining).userUnclaimedBEAN(address(this));

        // Claim ETH 
        uint256 ethBalBefore = address(this).balance;
        try IGridMining(gridMining).claimETH() {} catch {}
        uint256 ethClaimed = address(this).balance - ethBalBefore;

        // Exact round BEAN delta
        uint256 beanAfter = IGridMining(gridMining).userUnclaimedBEAN(address(this));
        uint256 roundBEAN = beanAfter > beanBefore ? beanAfter - beanBefore : 0;

        // --- ETH allocation ---
        uint256 pendingETHAllocated;
        if (totalPendingDeployedShare > 0 && deployedInFlight > 0) {
            pendingETHAllocated = (totalPendingDeployedShare * ethClaimed) / deployedInFlight;
            pendingWithdrawalPool += pendingETHAllocated;
        }
        roundReturnPerDeployed[activeDeployRound] = deployedInFlight > 0
            ? (ethClaimed * PRECISION) / deployedInFlight
            : 0;

        // --- BEAN allocation ---
        // Active shareholder portion flows through accumulator on next sync.
        if (totalPhantomShares > 0 && roundBEAN > 0) {
            uint256 phantomGross = (totalPhantomShares * roundBEAN) / deployTotalShares;
            uint256 phantomFee = (phantomGross * roastingFeeBps) / 10000;
            uint256 phantomNet = phantomGross - phantomFee;

            roundBEANPerPhantomShare[activeDeployRound] = (phantomNet * PRECISION) / totalPhantomShares;
            phantomBEANReserved += phantomNet;
        }

        roundResolved[activeDeployRound] = true;
        emit RoundSettled(activeDeployRound, ethClaimed, roundBEAN);

        totalPendingDeployedShare = 0;
        totalPhantomShares = 0;
        deployedInFlight = 0;
    }

    /**
     * @dev Resolve a user's pending withdrawal into claimable ETH or roll into a deposit.
     *      Also resolves phantom BEAN. Returns resolved ETH amount.
     */
    function _resolvePendingForUser(address user) internal returns (uint256 resolvedETH) {
        uint256 share = pendingDeployedShare[user];
        if (share == 0) return 0;

        uint64 roundId = pendingRoundId[user];

        if (roundResolved[roundId]) {
            resolvedETH = (share * roundReturnPerDeployed[roundId]) / PRECISION;
            if (resolvedETH > pendingWithdrawalPool) resolvedETH = pendingWithdrawalPool;
            if (resolvedETH > 0) {
                pendingWithdrawalPool -= resolvedETH;
            }
            // Resolve phantom BEAN into userPendingBean
            _resolvePhantomBEAN(user);
        } else {
            // Round still active so cancel pending as user is back in the pool
            totalPendingDeployedShare -= share;
            if (phantomShares[user] > 0) {
                totalPhantomShares -= phantomShares[user];
                phantomShares[user] = 0;
            }
            emit PendingWithdrawalCancelled(user, share);
        }

        pendingDeployedShare[user] = 0;
        pendingRoundId[user] = 0;
    }

    /**
     * @dev Process a single user's pending deposit into shares.
     *      Only runs if no active unresolved round.
     */
    function _processPendingDeposit(address user) internal {
        uint256 pending = pendingDeposit[user];
        if (pending == 0) return;
        if (deployedInFlight > 0 && !roundResolved[activeDeployRound]) return;

        // Validate before clearing: if vault has 0 assets but shares exist,
        // pricePerShare is undefined. Leave deposit intact. User can cancel
        // or wait for assets to recover.
        uint256 assetsBefore = totalETHAssets();
        if (totalShares > 0 && assetsBefore == 0) return;

        pendingDeposit[user] = 0;
        totalPendingDeposits -= pending;
        isPendingDepositor[user] = false;

        _updateBeanRewards(user);

        uint256 effectiveDeposit = pending;
        uint256 resolvedETH = _resolvePendingForUser(user);
        effectiveDeposit += resolvedETH;

        uint256 sharesToMint;
        if (totalShares == 0) {
            if (effectiveDeposit <= DEAD_SHARES) {
                // Too small for dead shares. Refund by restoring pending
                pendingDeposit[user] = pending;
                totalPendingDeposits += pending;
                isPendingDepositor[user] = true;
                return;
            }
            sharesToMint = effectiveDeposit - DEAD_SHARES;
            shares[address(1)] += DEAD_SHARES;
            totalShares += DEAD_SHARES;
        } else {
            sharesToMint = (effectiveDeposit * totalShares) / assetsBefore;
        }

        if (sharesToMint > 0) {
            shares[user] += sharesToMint;
            totalShares += sharesToMint;
            userBeanDebt[user] = (shares[user] * accBeanPerShare) / PRECISION;
            emit Deposited(user, effectiveDeposit, sharesToMint);
        }
    }

    /**
     * @dev Process all pending deposits. Called inside executeDeploy before deploying.
     */
    function _processAllPendingDeposits() internal {
        uint256 len = pendingDepositors.length;
        if (len == 0) return;

        _syncBeanAccumulator();

        for (uint256 i = 0; i < len; i++) {
            _processPendingDeposit(pendingDepositors[i]);
        }

        delete pendingDepositors;
    }

    // ============ User Functions ============

    /**
     * @notice Deposit ETH into the vault.
     *         If a round is active (ETH deployed), the deposit is queued and
     *         processed on the next executeDeploy.
     *         If no round is active, shares are minted immediately.
     */
    function deposit() external payable nonReentrant {
        if (msg.value < MIN_DEPOSIT) revert DepositTooSmall();
        if (beanLockAmount > 0 && !hasLockedBEAN[msg.sender]) revert BEANNotLocked();

        _settleRound();

        // If there's an active unresolved round, queue the deposit
        if (deployedInFlight > 0 && !roundResolved[activeDeployRound]) {
            if (!isPendingDepositor[msg.sender] && pendingDepositors.length >= MAX_PENDING_DEPOSITORS) {
                revert TooManyPendingDeposits();
            }
            pendingDeposit[msg.sender] += msg.value;
            totalPendingDeposits += msg.value;
            if (!isPendingDepositor[msg.sender]) {
                pendingDepositors.push(msg.sender);
                isPendingDepositor[msg.sender] = true;
            }
            emit DepositQueued(msg.sender, msg.value);
            return;
        }

        // No active round: mint shares immediately
        _syncBeanAccumulator();
        _updateBeanRewards(msg.sender);

        // Process any previously queued deposit for this user
        uint256 effectiveDeposit = msg.value;
        uint256 queuedAmount = pendingDeposit[msg.sender];
        if (queuedAmount > 0) {
            pendingDeposit[msg.sender] = 0;
            totalPendingDeposits -= queuedAmount;
            isPendingDepositor[msg.sender] = false;
            effectiveDeposit += queuedAmount;
        }

        // Resolve pending withdrawal if any
        uint256 resolvedETH = _resolvePendingForUser(msg.sender);
        effectiveDeposit += resolvedETH;

        uint256 sharesToMint;
        if (totalShares == 0) {
            if (effectiveDeposit <= DEAD_SHARES) revert ZeroDeposit();
            sharesToMint = effectiveDeposit - DEAD_SHARES;
            shares[address(1)] += DEAD_SHARES;
            totalShares += DEAD_SHARES;
        } else {
            // totalETHAssets() excludes pendingWithdrawalPool and totalPendingDeposits.
            // Subtract msg.value and resolvedETH
            // and queuedAmount to get pre-deposit base.
            uint256 assetsBefore = totalETHAssets() - msg.value - resolvedETH - queuedAmount;
            sharesToMint = (effectiveDeposit * totalShares) / assetsBefore;
        }

        if (sharesToMint == 0) revert ZeroShares();

        shares[msg.sender] += sharesToMint;
        totalShares += sharesToMint;

        userBeanDebt[msg.sender] = (shares[msg.sender] * accBeanPerShare) / PRECISION;

        emit Deposited(msg.sender, effectiveDeposit, sharesToMint);
    }

    /**
     * @notice Withdraw all ETH from the vault (full exit only).
     *         Cancels any pending deposit, burns all shares, and sends ETH.
     *         If mid-round, creates pending withdrawal for deployed portion.
     *         BEAN is unaffected — accumulated BEAN stays claimable via claimBEAN().
     */
    function withdrawETH() external nonReentrant {
        _settleRound();
        _withdrawAll(msg.sender);
    }

    /**
     * @notice Claim resolved ETH from a pending withdrawal.
     */
    function claimPendingWithdrawal() external nonReentrant {
        uint256 share = pendingDeployedShare[msg.sender];
        if (share == 0) revert NothingToClaim();

        uint64 roundId = pendingRoundId[msg.sender];

        _settleRound();

        if (!roundResolved[roundId]) revert RoundNotSettled();

        uint256 owed = (share * roundReturnPerDeployed[roundId]) / PRECISION;
        if (owed > pendingWithdrawalPool) owed = pendingWithdrawalPool;

        // Only zero pendingDeployedShare. Leave pendingRoundId and phantomShares intact.
        pendingDeployedShare[msg.sender] = 0;

        if (owed > 0) {
            pendingWithdrawalPool -= owed;
            (bool sent, ) = payable(msg.sender).call{value: owed}("");
            if (!sent) revert TransferFailed();
        }

        emit PendingWithdrawalClaimed(msg.sender, owed);
    }

    /**
     * @notice Claim all accumulated BEAN rewards.
     *         Resolves phantom BEAN from rounds the user exited during.
     *         Triggers external BEAN claim from GridMining.
     */
    function claimBEAN() external nonReentrant {
        _settleRound();
        _syncBeanAccumulator();

        // Resolve phantom BEAN if user exited during an active round that has since settled
        _resolvePhantomBEAN(msg.sender);

        // Claim + reconcile BEFORE snapshotting user rewards,
        // so any shortfall correction applies equally to all users.
        _claimBEANFromGridMining();

        _updateBeanRewards(msg.sender);

        uint256 pending = userPendingBean[msg.sender];
        if (pending == 0) revert NothingToClaim();

        // Exclude locked BEAN from distributable balance
        uint256 beanBalance = IERC20(bean).balanceOf(address(this)) - totalLockedBEAN;
        if (pending > beanBalance) {
            userPendingBean[msg.sender] = pending - beanBalance;
            pending = beanBalance;
        } else {
            userPendingBean[msg.sender] = 0;
        }

        IERC20(bean).safeTransfer(msg.sender, pending);

        emit BEANClaimed(msg.sender, pending);
    }

    /**
     * @notice Lock BEAN to gain access to the vault. Required before depositing ETH.
     */
    function lockBEAN() external nonReentrant {
        if (beanLockAmount == 0) revert NoLockRequired();
        if (hasLockedBEAN[msg.sender]) revert AlreadyLocked();

        IERC20(bean).safeTransferFrom(msg.sender, address(this), beanLockAmount);
        hasLockedBEAN[msg.sender] = true;
        totalLockedBEAN += beanLockAmount;

        emit BEANLocked(msg.sender, beanLockAmount);
    }

    /**
     * @notice Unlock BEAN and fully exit the vault. Shares and/or pending deposits
     *         are liquidated and ETH returned. If mid-round, pending withdrawal created.
     */
    function unlockBEAN() external nonReentrant {
        if (!hasLockedBEAN[msg.sender]) revert NotLocked();

        _settleRound();
        _withdrawAll(msg.sender);

        hasLockedBEAN[msg.sender] = false;
        totalLockedBEAN -= beanLockAmount;
        IERC20(bean).safeTransfer(msg.sender, beanLockAmount);

        emit BEANUnlocked(msg.sender, beanLockAmount);
    }

    /**
     * @dev Internal full exit — cancels pending deposit, burns all shares, transfers ETH.
     */
    function _withdrawAll(address user) internal {
        uint256 ethToReturn;

        uint256 pd = pendingDeposit[user];
        if (pd > 0) {
            pendingDeposit[user] = 0;
            totalPendingDeposits -= pd;
            isPendingDepositor[user] = false;
            ethToReturn += pd;
            emit DepositCancelled(user, pd);
        }

        uint256 userShareCount = shares[user];
        if (userShareCount > 0) {
            _syncBeanAccumulator();
            _updateBeanRewards(user);

            uint256 totalETH = totalETHAssets() - pd;
            uint256 ethFromShares = (userShareCount * totalETH) / totalShares;

            shares[user] = 0;
            totalShares -= userShareCount;
            userBeanDebt[user] = 0;

            // If active round, create pending withdrawal for deployed portion
            if (deployedInFlight > 0 && !roundResolved[activeDeployRound]) {
                _resolvePhantomBEAN(user);

                uint256 userDeployed = (userShareCount * deployedInFlight) / deployTotalShares;
                if (userDeployed > 0) {
                    pendingDeployedShare[user] += userDeployed;
                    pendingRoundId[user] = activeDeployRound;
                    totalPendingDeployedShare += userDeployed;

                    phantomShares[user] = userShareCount;
                    totalPhantomShares += userShareCount;

                    emit PendingWithdrawalCreated(user, activeDeployRound, userDeployed);
                }
            }

            ethToReturn += ethFromShares;
            emit WithdrawnETH(user, userShareCount, ethFromShares);
        }

        if (ethToReturn > 0) {
            (bool sent, ) = payable(user).call{value: ethToReturn}("");
            if (!sent) revert TransferFailed();
        }
    }

    // ============ Executor Functions ============

    /**
     * @notice Deploy ETH to GridMining blocks. Fee deducted and sent to executor.
     *         Auto-settles previous round, then processes all pending deposits,
     *         then deploys to the new round.
     * @param blockIds Array of block IDs (0-24) to deploy to.
     * @param amount Total ETH to deploy before fee deduction.
     */
    function executeDeploy(uint8[] calldata blockIds, uint256 amount) external onlyExecutor nonReentrant {
        _settleRound();
        _processAllPendingDeposits();

        uint256 available = totalETHAssets();
        uint256 maxDeploy = (available * maxDeployBps) / 10000;
        if (amount > maxDeploy) revert DeployExceedsMax(amount, maxDeploy);
        if (amount > available) revert InsufficientBalance(amount, available);

        uint256 fee = (amount * feeBps) / 10000;
        uint256 deployAmount = amount - fee;

        if (fee > 0) {
            (bool sent, ) = payable(executor).call{value: fee}("");
            if (!sent) revert TransferFailed();
        }

        IGridMining(gridMining).deploy{value: deployAmount}(blockIds);

        deployedInFlight = deployAmount;
        activeDeployRound = IGridMining(gridMining).currentRoundId();
        deployTotalShares = totalShares;

        emit Deployed(blockIds, deployAmount, fee);
    }

    /**
     * @notice Settle the current round. Claims ETH from GridMining internally
     *         via _settleRound() and resolves any pending withdrawals.
     */
    function executeClaimETH() external onlyExecutor nonReentrant {
        _settleRound();
    }

    /**
     * @notice Claim pending BEAN rewards from GridMining into the vault.
     */
    function executeClaimBEAN() external onlyExecutor nonReentrant {
        _settleRound();
        _syncBeanAccumulator();

        uint256 balanceBefore = IERC20(bean).balanceOf(address(this));
        _claimBEANFromGridMining();
        uint256 claimed = IERC20(bean).balanceOf(address(this)) - balanceBefore;

        emit ClaimedBEAN(claimed);
    }

    function setExecutor(address newExecutor) external onlyExecutor {
        if (newExecutor == address(0)) revert ZeroAddress();
        emit ExecutorUpdated(executor, newExecutor);
        executor = newExecutor;
    }

    // ============ View Functions ============

    /**
     * @notice Total ETH assets available to active shareholders.
     *         Excludes pending withdrawal pool and pending deposits.
     */
    function totalETHAssets() public view returns (uint256) {
        return address(this).balance - pendingWithdrawalPool - totalPendingDeposits;
    }

    function pricePerShare() external view returns (uint256) {
        if (totalShares == 0) return 1 ether;
        return (totalETHAssets() * 1 ether) / totalShares;
    }

    function userETHBalance(address user) external view returns (uint256) {
        if (totalShares == 0) return 0;
        return (shares[user] * totalETHAssets()) / totalShares;
    }

    /**
     * @notice User's pending withdrawal status including both ETH + BEAN.
     */
    function userPendingWithdrawal(address user) external view returns (uint256 ethAmount, uint256 beanAmount, bool resolved) {
        uint256 share = pendingDeployedShare[user];
        uint64 roundId = pendingRoundId[user];

        if (share == 0) {
            // Check if user only has phantom BEAN left
            uint256 pShares = phantomShares[user];
            if (pShares > 0 && roundResolved[roundId]) {
                beanAmount = (pShares * roundBEANPerPhantomShare[roundId]) / PRECISION;
                resolved = true;
            }
            return (0, beanAmount, resolved);
        }
        if (roundResolved[roundId]) {
            ethAmount = (share * roundReturnPerDeployed[roundId]) / PRECISION;
            uint256 pShares = phantomShares[user];
            if (pShares > 0) {
                beanAmount = (pShares * roundBEANPerPhantomShare[roundId]) / PRECISION;
            }
            resolved = true;
        } else {
            ethAmount = share;
            resolved = false;
        }
    }

    function userBEANBalance(address user) external view returns (uint256) {
        uint256 pending = userPendingBean[user];

        uint256 userShares = shares[user];
        if (userShares > 0) {
            uint256 owed = (userShares * accBeanPerShare) / PRECISION;
            uint256 debt = userBeanDebt[user];
            if (owed > debt) {
                pending += owed - debt;
            }
        }

        if (totalShares > 0 && userShares > 0) {
            (, uint256 unroasted, uint256 roasted, ) =
                IGridMining(gridMining).getTotalPendingRewards(address(this));
            uint256 fee = (unroasted * roastingFeeBps) / 10000;
            uint256 netBEAN = unroasted - fee + roasted;

            uint256 available = netBEAN > phantomBEANReserved ? netBEAN - phantomBEANReserved : 0;
            if (available > lastSyncedPendingBEAN) {
                uint256 unsyncedDelta = available - lastSyncedPendingBEAN;
                pending += (userShares * unsyncedDelta) / totalShares;
            }
        }

        // Phantom BEAN from resolved round
        uint256 pShares = phantomShares[user];
        if (pShares > 0) {
            uint64 roundId = pendingRoundId[user];
            if (roundResolved[roundId]) {
                pending += (pShares * roundBEANPerPhantomShare[roundId]) / PRECISION;
            }
        }

        return pending;
    }

    function pendingRewards() external view returns (uint256 pendingETH, uint256 pendingBEAN) {
        (uint256 eth, uint256 unroasted, uint256 roasted, ) =
            IGridMining(gridMining).getTotalPendingRewards(address(this));
        pendingETH = eth;
        pendingBEAN = unroasted + roasted;
    }

    // ============ Receive ============

    receive() external payable {}
}
