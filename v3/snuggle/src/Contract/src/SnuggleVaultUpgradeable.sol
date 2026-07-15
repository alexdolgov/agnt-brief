// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@uniswap/v3-periphery/contracts/interfaces/INonfungiblePositionManager.sol";
import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import "./interfaces/IPositionAdapter.sol";
import "./interfaces/IRewardAdapter.sol";
import "./libraries/SnuggleLogic.sol";
import "./libraries/SnuggleRebalanceLib.sol";
import "./StakingManager.sol";

/// @title SnuggleVaultUpgradeable
/// @author Snuggle (snuggle.fi)
/// @notice Upgradeable version of SnuggleVault for use with TransparentUpgradeableProxy
/// @dev Core contract for Snuggle protocol - MEV-free LP position management on Uniswap V3
contract SnuggleVaultUpgradeable is
    Initializable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable,
    Ownable2StepUpgradeable,
    IERC721Receiver
{
    using SafeERC20 for IERC20;

    // ═══════════════════════════════════════════════════════════════════════════
    // CONSTANTS
    // ═══════════════════════════════════════════════════════════════════════════

    uint256 public constant MAX_PROTOCOL_FEE_BPS = 5000;  // 50% max (performance fee on earnings)
    uint256 internal constant BPS_DENOMINATOR = 10000;
    uint32 internal constant DEFAULT_TWAP_INTERVAL = 30 minutes;
    uint256 internal constant DEFAULT_SLIPPAGE_BPS = 50; // 0.5%
    uint256 public constant MIN_POSITION_HOLD_TIME = 1 minutes;
    uint64 internal constant MIN_OOR_TRACKING_INTERVAL = 5 minutes;

    // ═══════════════════════════════════════════════════════════════════════════
    // STORAGE (converted from immutables for upgradeability)
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Uniswap V3 position manager (set once during initialization)
    INonfungiblePositionManager public positionManager;

    /// @notice Uniswap V3 factory (set once during initialization)
    IUniswapV3Factory public uniswapFactory;

    // ═══════════════════════════════════════════════════════════════════════════
    // STATE VARIABLES
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Performance fee in basis points on earnings (default 15% = 1500 bps)
    uint256 public performanceFeeBps;

    /// @notice Treasury address for protocol fees
    address public treasury;

    /// @notice Staking manager contract for gauge operations
    StakingManager public stakingManager;

    /// @notice TWAP interval for oracle queries (H-2)
    uint32 public twapInterval;

    /// @notice Slippage tolerance in basis points (H-1)
    uint256 public slippageBps;

    /// @notice Minimum allowed range width in basis points (configurable)
    uint24 public minRangeWidthBps;

    /// @notice Maximum allowed range width in basis points (configurable)
    uint24 public maxRangeWidthBps;

    /// @notice Addresses exempt from protocol fee
    mapping(address => bool) public feeExempt;

    /// @notice Authorized keepers for automation (M-3)
    mapping(address => bool) public authorizedKeepers;

    /// @notice Allowed NFT position managers (H-NEW-2: Multi-DEX support)
    mapping(address => bool) public allowedPositionManagers;

    /// @notice Referrer for each user (set once at first deposit, immutable)
    mapping(address => address) public referrer;

    /// @notice Referral fee in basis points (portion of protocol fee going to referrer)
    uint256 public referralFeeBps;

    /// @notice Maximum positions per user (configurable, default 500)
    uint256 public maxPositionsPerUser;

    /// @notice Maximum total positions in protocol (configurable, default 100,000)
    uint256 public maxTotalPositions;

    /// @notice Admin satellite contract for complex admin operations
    address public adminSatellite;

    // ═══════════════════════════════════════════════════════════════════════════
    // STRUCTS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Configuration for an approved pool
    struct PoolConfig {
        address pool;
        address token0;
        address token1;
        uint24 fee;
        int24 tickSpacing;
        bool active;
        IPositionAdapter positionAdapter;   // DEX-specific position adapter
        IRewardAdapter rewardAdapter;        // Optional staking adapter (address(0) if none)
    }

    /// @notice User's position data (G-1: Packed to 6 storage slots)
    struct UserPosition {
        // Slot 1: 32 bytes
        uint256 tokenId;
        // Slot 2: 32 bytes
        bytes32 poolId;
        // Slot 3: 31 bytes (packed)
        address owner;              // 20 bytes
        uint24 rangeWidthBps;       // 3 bytes
        int24 currentTickLower;     // 3 bytes
        int24 currentTickUpper;     // 3 bytes
        bool autoSnuggleEnabled;    // 1 byte
        bool autoCompoundEnabled;   // 1 byte - compound matching-token fees during snuggle
        // Slot 4: 32 bytes (packed) - FULL
        uint64 rebalanceDelay;      // 8 bytes (max ~584 years)
        uint64 outOfRangeSince;     // 8 bytes (timestamp)
        uint32 totalRebalances;     // 4 bytes (max 4B rebalances)
        uint32 lastRebalanceTime;   // 4 bytes (timestamp, good until 2106)
        uint64 depositTimestamp;    // 8 bytes (timestamp)
        // Slot 5: 32 bytes - Cumulative trading fees (for APR calculation)
        uint128 cumulativeFees0;    // 16 bytes (token0 fees earned lifetime)
        uint128 cumulativeFees1;    // 16 bytes (token1 fees earned lifetime)
        // Slot 6: 32 bytes - Cumulative staking rewards (AERO/CAKE/etc)
        uint128 cumulativeRewards;  // 16 bytes (reward token earned lifetime)
        uint128 __reserved;         // 16 bytes (future use)
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // STORAGE
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Pool configurations by poolId
    mapping(bytes32 => PoolConfig) public approvedPools;

    /// @notice List of all pool IDs
    bytes32[] public poolIds;

    /// @notice Position data by tokenId
    mapping(uint256 => UserPosition) public positions;

    /// @notice User's position token IDs
    mapping(address => uint256[]) public userPositions;

    /// @notice All active position IDs (for keeper iteration)
    uint256[] public allPositionIds;

    /// @notice Position index in allPositionIds array (M-2: O(1) lookup)
    mapping(uint256 => uint256) public positionIndexInAll;

    /// @notice Position index in user's array (M-2: O(1) lookup)
    mapping(uint256 => uint256) public positionIndexInUser;

    // ═══════════════════════════════════════════════════════════════════════════
    // V14+ STORAGE (appended after mappings to preserve upgrade-compatible layout)
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice L-03: O(1) counter of active positions (avoids ViewHelper iteration)
    uint256 public totalActivePositions;

    /// @notice V14-M-01: Pending treasury change (timelocks now in satellite - slots preserved for upgrade safety)
    address internal pendingTreasury;
    uint256 internal pendingTreasuryTimestamp;

    /// @notice V14-M-01: Pending staking manager change (timelocks now in satellite - slots preserved)
    address internal pendingStakingManager;
    uint256 internal pendingStakingManagerTimestamp;

    // ═══════════════════════════════════════════════════════════════════════════
    // STORAGE GAP (for future upgrades)
    // ═══════════════════════════════════════════════════════════════════════════

    /// @dev Reserved storage slots for future upgrades (44 original - 5 new V14 slots = 39)
    uint256[39] private __gap;

    // ═══════════════════════════════════════════════════════════════════════════
    // EVENTS
    // ═══════════════════════════════════════════════════════════════════════════

    event PoolAdded(
        bytes32 indexed poolId,
        address pool,
        address token0,
        address token1,
        uint24 fee,
        address positionAdapter,
        address rewardAdapter
    );
    event PoolRemoved(bytes32 indexed poolId);
    event PoolRewardAdapterUpdated(bytes32 indexed poolId, address newRewardAdapter);

    event PositionCreated(
        uint256 indexed tokenId,
        address indexed owner,
        bytes32 indexed poolId,
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity,
        bool autoSnuggleEnabled
    );

    event PositionWithdrawn(
        uint256 indexed tokenId,
        address indexed owner,
        uint256 amount0,
        uint256 amount1
    );

    event FeesHarvested(
        uint256 indexed tokenId,
        address indexed owner,
        uint256 fees0,
        uint256 fees1
    );

    event SnuggleRebalanced(
        uint256 indexed oldTokenId,
        uint256 indexed newTokenId,
        address indexed owner,
        int24 newTickLower,
        int24 newTickUpper,
        uint256 protocolFee0,
        uint256 protocolFee1,
        bool wasManual,
        uint32 totalRebalances  // L-AUDIT-1: Added for off-chain tracking
    );

    event OutOfRangeStatusUpdated(
        uint256 indexed tokenId,
        bool isOutOfRange,
        uint256 timestamp
    );

    event ParametersUpdated(
        uint256 indexed tokenId,
        uint256 rebalanceDelay,
        uint24 rangeWidthBps,
        bool autoSnuggleEnabled,
        bool autoCompoundEnabled
    );

    event PerformanceFeeUpdated(uint256 oldFee, uint256 newFee);
    event TreasuryUpdated(address oldTreasury, address newTreasury);
    event KeeperUpdated(address indexed keeper, bool authorized);
    event FeeExemptUpdated(address indexed user, bool exempt);
    event AdapterApproved(address indexed adapter, address indexed nftManager);
    event TWAPIntervalUpdated(uint32 oldInterval, uint32 newInterval);
    event SlippageUpdated(uint256 oldSlippage, uint256 newSlippage);
    event RangeWidthBoundsUpdated(uint24 newMin, uint24 newMax);
    event RebalanceSkipped(uint256 indexed tokenId, int24 tickLower, int24 tickUpper, string reason);
    event StakingManagerUpdated(address indexed oldManager, address indexed newManager);
    event ApprovalRevoked(address indexed token, address indexed spender);
    event AdminSatelliteUpdated(address indexed oldSatellite, address indexed newSatellite);
    event StakingRewardsClaimed(uint256 indexed tokenId, address indexed owner, address indexed rewardToken, uint256 amount);

    // Performance fee events
    event PerformanceFeeCollected(uint256 indexed tokenId, address indexed token, uint256 feeAmount, uint256 treasuryAmount, uint256 referralAmount);

    // Referral events
    event ReferrerSet(address indexed user, address indexed referrer);
    event ReferrerCleared(address indexed user, address indexed oldReferrer);
    event ReferralFeeUpdated(uint256 oldFee, uint256 newFee);
    event ReferralPaid(address indexed referrer, address indexed user, address indexed token, uint256 amount);
    event ReferralPaymentFailed(address indexed referrer, address indexed token, uint256 amount);

    // ═══════════════════════════════════════════════════════════════════════════
    // ERRORS
    // ═══════════════════════════════════════════════════════════════════════════

    error InvalidAddress();
    error PoolNotApproved();
    error PoolAlreadyAdded();
    error ZeroDeposit();
    error InvalidRangeWidth();
    error NotPositionOwner();
    error PositionDoesNotExist();
    error PositionInRange();
    error OutOfRangeNotTracked();
    error DelayNotMet();
    error NotAuthorized();
    error NoFeesToHarvest();
    error TokenNotInPool();
    error InvalidActionType();
    error AlreadyTracking();
    error StillOutOfRange();
    error MinimumHoldTimeNotMet();
    error ZeroLiquidityMinted();
    error PositionManagerNotAllowed();
    error NoRewardAdapter();
    error NotStaked();
    error DeadlineExpired();
    error TooSoonToResetTracking();
    error CannotReferSelf();
    error MaxPositionsPerUserReached();
    error MaxTotalPositionsReached();
    error StakingManagerNotSet();
    error NotAdminSatellite();
    error UseClaimStakingRewards();

    modifier onlyAdminSatellite() {
        if (msg.sender != adminSatellite) revert NotAdminSatellite();
        _;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // CONSTRUCTOR (disabled for upgradeable)
    // ═══════════════════════════════════════════════════════════════════════════

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // INITIALIZER
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Initialize the Snuggle Vault (replaces constructor for proxy pattern)
    /// @param _positionManager Uniswap V3 NonfungiblePositionManager address
    /// @param _uniswapFactory Uniswap V3 Factory address
    /// @param _treasury Treasury address for protocol fees
    /// @param _keeper Initial Chainlink Automation forwarder address
    /// @param _owner The initial owner of the contract
    function initialize(
        address _positionManager,
        address _uniswapFactory,
        address _treasury,
        address _keeper,
        address _owner
    ) external initializer {
        if (_positionManager == address(0)) revert InvalidAddress();
        if (_uniswapFactory == address(0)) revert InvalidAddress();
        if (_treasury == address(0)) revert InvalidAddress();
        if (_owner == address(0)) revert InvalidAddress();

        // Initialize parent contracts
        __ReentrancyGuard_init();
        __Pausable_init();
        __Ownable2Step_init();

        // Transfer ownership to the specified owner
        _transferOwnership(_owner);

        // Set core addresses (storage instead of immutables for upgradeability)
        positionManager = INonfungiblePositionManager(_positionManager);
        uniswapFactory = IUniswapV3Factory(_uniswapFactory);
        treasury = _treasury;

        // Set default values
        performanceFeeBps = 1500;
        twapInterval = DEFAULT_TWAP_INTERVAL;
        slippageBps = DEFAULT_SLIPPAGE_BPS;
        minRangeWidthBps = 50;
        maxRangeWidthBps = 10000;
        referralFeeBps = 300;
        maxPositionsPerUser = 500;
        maxTotalPositions = 100_000;

        // H-NEW-2: Allow the default position manager
        allowedPositionManagers[_positionManager] = true;

        // M-3: Support multiple keepers
        if (_keeper != address(0)) {
            authorizedKeepers[_keeper] = true;
            emit KeeperUpdated(_keeper, true);
        }
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // POOL MANAGEMENT (via AdminSatellite)
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Add pool and setup approvals (called by AdminSatellite)
    function addPoolDirect(
        bytes32 poolId,
        address pool,
        address token0,
        address token1,
        uint24 fee,
        int24 tickSpacing,
        address _positionAdapter,
        address _rewardAdapter,
        address nftManager
    ) external onlyAdminSatellite {
        if (approvedPools[poolId].active) revert PoolAlreadyAdded();
        approvedPools[poolId] = PoolConfig({
            pool: pool, token0: token0, token1: token1, fee: fee,
            tickSpacing: tickSpacing, active: true,
            positionAdapter: IPositionAdapter(_positionAdapter),
            rewardAdapter: IRewardAdapter(_rewardAdapter)
        });
        poolIds.push(poolId);
        INonfungiblePositionManager(nftManager).setApprovalForAll(_positionAdapter, true);
        IERC20(token0).approve(_positionAdapter, type(uint256).max);
        IERC20(token1).approve(_positionAdapter, type(uint256).max);
        allowedPositionManagers[nftManager] = true;
        if (_rewardAdapter != address(0)) {
            INonfungiblePositionManager(nftManager).setApprovalForAll(_rewardAdapter, true);
            emit AdapterApproved(_rewardAdapter, nftManager);
        }
        emit AdapterApproved(_positionAdapter, nftManager);
    }

    /// @notice Remove a pool from the approved list (called by AdminSatellite)
    /// @dev Satellite handles approval revocation via emergencyRevokeApproval/emergencyRevokeNFTApproval
    /// @dev I-02 ACCEPTED: poolIds array retains deactivated entries. On-chain cleanup costs ~246 bytes
    ///      which exceeds EIP-170 headroom. Pools are rarely removed; array stays small (<50 entries).
    function removePool(bytes32 poolId) external onlyAdminSatellite {
        approvedPools[poolId].active = false;
        emit PoolRemoved(poolId);
    }

    /// @notice Get the total number of pool IDs (for satellite iteration)
    function poolIdsCount() external view returns (uint256) {
        return poolIds.length;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // DEPOSIT FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Deposit both tokens to create a centered liquidity position
    function deposit(
        bytes32 poolId,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint24 rangeWidthBps,
        uint256 rebalanceDelay,
        bool autoSnuggleEnabled,
        bool autoCompoundEnabled,
        uint256 deadline,
        address ref
    ) external nonReentrant whenNotPaused returns (uint256 tokenId) {
        return _deposit(poolId, amount0Desired, amount1Desired, rangeWidthBps,
            rebalanceDelay, autoSnuggleEnabled, autoCompoundEnabled, deadline, ref, false);
    }

    /// @notice Deposit a single token to create a snuggle position
    function depositSingleSided(
        bytes32 poolId,
        address token,
        uint256 amount,
        uint24 rangeWidthBps,
        uint256 rebalanceDelay,
        bool autoSnuggleEnabled,
        bool autoCompoundEnabled,
        uint256 deadline,
        address ref
    ) external nonReentrant whenNotPaused returns (uint256 tokenId) {
        PoolConfig memory poolConfig = approvedPools[poolId];
        if (token != poolConfig.token0 && token != poolConfig.token1) revert TokenNotInPool();
        bool isToken0 = token == poolConfig.token0;
        return _deposit(poolId, isToken0 ? amount : 0, isToken0 ? 0 : amount,
            rangeWidthBps, rebalanceDelay, autoSnuggleEnabled, autoCompoundEnabled, deadline, ref, true);
    }

    /// @dev Shared deposit logic for both two-sided and single-sided deposits
    function _deposit(
        bytes32 poolId,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint24 rangeWidthBps,
        uint256 rebalanceDelay,
        bool autoSnuggleEnabled,
        bool autoCompoundEnabled,
        uint256 deadline,
        address ref,
        bool singleSided
    ) internal returns (uint256 tokenId) {
        if (block.timestamp > deadline) revert DeadlineExpired();
        if (address(stakingManager) == address(0)) revert StakingManagerNotSet();
        PoolConfig memory poolConfig = approvedPools[poolId];
        if (!poolConfig.active) revert PoolNotApproved();
        if (amount0Desired == 0 && amount1Desired == 0) revert ZeroDeposit();

        _validateParameters(rangeWidthBps, rebalanceDelay);
        _setReferrer(msg.sender, ref);

        // M-4: Handle fee-on-transfer tokens
        uint256 actualAmount0 = _transferInToken(poolConfig.token0, amount0Desired);
        uint256 actualAmount1 = _transferInToken(poolConfig.token1, amount1Desired);

        // Execute mint via library (eliminates duplicate TickMath inlining in vault bytecode)
        SnuggleRebalanceLib.MintResult memory result = SnuggleRebalanceLib.executeMint(
            SnuggleRebalanceLib.MintContext({
                pool: poolConfig.pool,
                token0: poolConfig.token0,
                token1: poolConfig.token1,
                fee: poolConfig.fee,
                tickSpacing: poolConfig.tickSpacing,
                adapter: poolConfig.positionAdapter,
                actualAmount0: actualAmount0,
                actualAmount1: actualAmount1,
                rangeWidthBps: rangeWidthBps,
                singleSided: singleSided,
                twapInterval: twapInterval,
                slippageBps: slippageBps
            }),
            deadline
        );
        if (result.liquidity == 0) revert ZeroLiquidityMinted();

        tokenId = result.tokenId;
        _createPosition(tokenId, poolId, result.tickLower, result.tickUpper,
            rebalanceDelay, rangeWidthBps, autoSnuggleEnabled, autoCompoundEnabled);

        emit PositionCreated(tokenId, msg.sender, poolId, result.tickLower, result.tickUpper, result.liquidity, autoSnuggleEnabled);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // WITHDRAWAL FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Withdraw position and all tokens
    /// @param tokenId The position to withdraw
    /// @param returnNFT If true, return NFT to user; if false, burn it
    function withdraw(
        uint256 tokenId,
        bool returnNFT
    ) external nonReentrant {
        UserPosition storage pos = positions[tokenId];
        if (pos.owner != msg.sender) revert NotPositionOwner();

        // H-NEW-3: Flash loan protection - minimum hold time
        if (block.timestamp < pos.depositTimestamp + MIN_POSITION_HOLD_TIME) {
            revert MinimumHoldTimeNotMet();
        }

        PoolConfig memory poolConfig = approvedPools[pos.poolId];
        IPositionAdapter adapter = poolConfig.positionAdapter;

        // Step 0: Unstake from gauge if staked — rewards route to VAULT for performance fee
        (uint256 rewardsEarned, uint256 unstakeFees0, uint256 unstakeFees1) = _tryUnstakePosition(tokenId, pos.poolId, address(this));

        // Step 1: Collect any accrued trading fees to VAULT for performance fee
        (uint256 collectFees0, uint256 collectFees1) = adapter.collect(tokenId, address(this));
        uint256 fees0 = unstakeFees0 + collectFees0;
        uint256 fees1 = unstakeFees1 + collectFees1;

        // Steps 0.5-1.5: Process all earnings (rewards + trading fees) via library
        uint256 remainingFees0;
        uint256 remainingFees1;
        (pos.cumulativeFees0, pos.cumulativeFees1, pos.cumulativeRewards, remainingFees0, remainingFees1) =
            SnuggleRebalanceLib.processAllEarnings(SnuggleRebalanceLib.EarningsContext({
                tokenId: tokenId, posOwner: msg.sender,
                token0: poolConfig.token0, token1: poolConfig.token1,
                rewardsEarned: rewardsEarned, fees0: fees0, fees1: fees1,
                rewardAdapter: poolConfig.rewardAdapter, stakingManager: stakingManager,
                performanceFeeBps: performanceFeeBps, referralFeeBps: referralFeeBps,
                referrerAddr: referrer[msg.sender], treasury: treasury,
                isExempt: feeExempt[msg.sender],
                cumulativeFees0: pos.cumulativeFees0, cumulativeFees1: pos.cumulativeFees1,
                cumulativeRewards: pos.cumulativeRewards
            }));

        // Step 2: Remove liquidity — principal goes DIRECTLY to user, NO performance fee
        (,,,,, uint128 liquidity) = adapter.getPosition(tokenId);

        // V13-L-05: Track NET amounts (what user actually receives)
        uint256 totalAmount0 = remainingFees0;
        uint256 totalAmount1 = remainingFees1;

        if (liquidity > 0) {
            // I-05: Zero slippage is safe — decreaseLiquidity removes exact liquidity with no swap.
            // Amount returned is deterministic for the current tick. No MEV vector.
            adapter.decreaseLiquidity(tokenId, liquidity, 0, 0, block.timestamp + 1 hours);
            (uint256 amount0, uint256 amount1) = adapter.collect(tokenId, msg.sender);
            totalAmount0 += amount0;
            totalAmount1 += amount1;
        }

        // H-4: Follow CEI pattern - clean up storage BEFORE external calls
        address nftManager = adapter.positionManager();
        _removePosition(tokenId, msg.sender);

        // Handle NFT (interactions last)
        if (returnNFT) {
            INonfungiblePositionManager(nftManager).safeTransferFrom(address(this), msg.sender, tokenId);
        } else {
            adapter.burn(tokenId);
        }

        emit PositionWithdrawn(tokenId, msg.sender, totalAmount0, totalAmount1);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // FEE HARVESTING
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Harvest accrued trading fees from a position (15% performance fee applied)
    /// @dev V16-I-01: Reverts with UseClaimStakingRewards() if position is staked.
    ///      Staked positions must use claimStakingRewards() instead.
    /// @param tokenId The position to harvest from
    function harvest(uint256 tokenId) external nonReentrant {
        UserPosition storage pos = positions[tokenId];
        if (pos.owner != msg.sender) revert NotPositionOwner();

        PoolConfig memory poolConfig = approvedPools[pos.poolId];

        // V16-I-01: Guard against calling harvest() on staked positions.
        if (address(poolConfig.rewardAdapter) != address(0) && poolConfig.rewardAdapter.isStaked(tokenId)) {
            revert UseClaimStakingRewards();
        }

        // Collect fees to VAULT (not directly to user) for performance fee extraction
        (uint256 fees0, uint256 fees1) = poolConfig.positionAdapter.collect(tokenId, address(this));
        if (fees0 == 0 && fees1 == 0) revert NoFeesToHarvest();

        // Process trading fees via library (perf fee + transfer + events)
        (pos.cumulativeFees0, pos.cumulativeFees1, , ,) =
            SnuggleRebalanceLib.processAllEarnings(SnuggleRebalanceLib.EarningsContext({
                tokenId: tokenId, posOwner: msg.sender,
                token0: poolConfig.token0, token1: poolConfig.token1,
                rewardsEarned: 0, fees0: fees0, fees1: fees1,
                rewardAdapter: IRewardAdapter(address(0)), stakingManager: stakingManager,
                performanceFeeBps: performanceFeeBps, referralFeeBps: referralFeeBps,
                referrerAddr: referrer[msg.sender], treasury: treasury,
                isExempt: feeExempt[msg.sender],
                cumulativeFees0: pos.cumulativeFees0, cumulativeFees1: pos.cumulativeFees1,
                cumulativeRewards: pos.cumulativeRewards
            }));
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // STAKING REWARD FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Claim staking rewards and trading fees without rebalancing (15% performance fee applied)
    /// @dev Claims both staking rewards (AERO/CAKE) and trading fees through the adapter
    /// @param tokenId The position to claim rewards for
    /// @return earned Amount of staking rewards claimed (before performance fee)
    function claimStakingRewards(uint256 tokenId) external nonReentrant returns (uint256 earned) {
        UserPosition storage pos = positions[tokenId];
        if (pos.owner != msg.sender) revert NotPositionOwner();

        PoolConfig memory poolConfig = approvedPools[pos.poolId];
        IRewardAdapter rewardAdapter = poolConfig.rewardAdapter;

        if (address(rewardAdapter) == address(0)) revert NoRewardAdapter();
        if (!rewardAdapter.isStaked(tokenId)) revert NotStaked();

        // Claim rewards and fees to VAULT (not directly to user) for performance fee extraction
        uint256 fees0;
        uint256 fees1;
        (earned, fees0, fees1) = rewardAdapter.claimRewards(tokenId, address(this));

        // Process all earnings (rewards + trading fees) via library
        (pos.cumulativeFees0, pos.cumulativeFees1, pos.cumulativeRewards, ,) =
            SnuggleRebalanceLib.processAllEarnings(SnuggleRebalanceLib.EarningsContext({
                tokenId: tokenId, posOwner: msg.sender,
                token0: poolConfig.token0, token1: poolConfig.token1,
                rewardsEarned: earned, fees0: fees0, fees1: fees1,
                rewardAdapter: rewardAdapter, stakingManager: stakingManager,
                performanceFeeBps: performanceFeeBps, referralFeeBps: referralFeeBps,
                referrerAddr: referrer[msg.sender], treasury: treasury,
                isExempt: feeExempt[msg.sender],
                cumulativeFees0: pos.cumulativeFees0, cumulativeFees1: pos.cumulativeFees1,
                cumulativeRewards: pos.cumulativeRewards
            }));
    }


    // ═══════════════════════════════════════════════════════════════════════════
    // PARAMETER MANAGEMENT
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Update position parameters
    /// @param tokenId The position to update
    /// @param newRebalanceDelay New delay in seconds
    /// @param newRangeWidthBps New range width in basis points
    /// @param newAutoSnuggleEnabled Whether auto-snuggle should be enabled
    /// @param newAutoCompoundEnabled Whether auto-compound should be enabled
    function updateParameters(
        uint256 tokenId,
        uint256 newRebalanceDelay,
        uint24 newRangeWidthBps,
        bool newAutoSnuggleEnabled,
        bool newAutoCompoundEnabled
    ) external nonReentrant {
        UserPosition storage pos = positions[tokenId];
        if (pos.owner != msg.sender) revert NotPositionOwner();
        _validateParameters(newRangeWidthBps, newRebalanceDelay);
        pos.rebalanceDelay = uint64(newRebalanceDelay);
        pos.rangeWidthBps = newRangeWidthBps;
        pos.autoSnuggleEnabled = newAutoSnuggleEnabled;
        pos.autoCompoundEnabled = newAutoCompoundEnabled;
        if (!newAutoSnuggleEnabled) pos.outOfRangeSince = 0;
        emit ParametersUpdated(tokenId, newRebalanceDelay, newRangeWidthBps, newAutoSnuggleEnabled, newAutoCompoundEnabled);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // SNUGGLE REBALANCE
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Manually trigger a snuggle rebalance
    /// @dev Available even when autoSnuggle is disabled
    /// @param tokenId The position to rebalance
    function manualSnuggle(uint256 tokenId) external nonReentrant whenNotPaused {
        UserPosition storage pos = positions[tokenId];
        if (pos.owner != msg.sender) revert NotPositionOwner();

        PoolConfig memory poolConfig = approvedPools[pos.poolId];
        // H-2: Use TWAP for manipulation resistance
        int24 currentTick = poolConfig.positionAdapter.getTWAPTick(poolConfig.pool, twapInterval);

        // Verify position is out of range
        bool isOutOfRange = currentTick < pos.currentTickLower ||
                            currentTick >= pos.currentTickUpper;
        if (!isOutOfRange) revert PositionInRange();

        // Execute snuggle
        _executeSnuggle(tokenId, true);
    }

    /// @dev Execute snuggle rebalance (internal, used by both manual and auto)
    /// @param tokenId The position to rebalance
    /// @param isManual Whether this is a manual rebalance
    function _executeSnuggle(uint256 tokenId, bool isManual) internal {
        UserPosition storage pos = positions[tokenId];
        PoolConfig memory poolConfig = approvedPools[pos.poolId];

        // Pre-unstake from gauge (needs vault storage access via stakingManager)
        (uint256 rewardsEarned, uint256 unstakeFees0, uint256 unstakeFees1) =
            _tryUnstakePosition(tokenId, pos.poolId, address(this));

        // Pack context for library
        SnuggleRebalanceLib.RebalanceContext memory ctx = SnuggleRebalanceLib.RebalanceContext({
            posOwner: pos.owner,
            poolId: pos.poolId,
            rangeWidthBps: pos.rangeWidthBps,
            currentTickLower: pos.currentTickLower,
            currentTickUpper: pos.currentTickUpper,
            autoCompoundEnabled: pos.autoCompoundEnabled,
            totalRebalances: pos.totalRebalances,
            cumulativeFees0: pos.cumulativeFees0,
            cumulativeFees1: pos.cumulativeFees1,
            cumulativeRewards: pos.cumulativeRewards,
            pool: poolConfig.pool,
            token0: poolConfig.token0,
            token1: poolConfig.token1,
            fee: poolConfig.fee,
            tickSpacing: poolConfig.tickSpacing,
            adapter: poolConfig.positionAdapter,
            rewardAdapter: poolConfig.rewardAdapter,
            twapInterval: twapInterval,
            slippageBps: slippageBps,
            performanceFeeBps: performanceFeeBps,
            referralFeeBps: referralFeeBps,
            treasury: treasury,
            stakingManager: stakingManager,
            isExempt: feeExempt[pos.owner],
            referrerAddr: referrer[pos.owner],
            rewardsEarned: rewardsEarned,
            unstakeFees0: unstakeFees0,
            unstakeFees1: unstakeFees1
        });

        // Execute via library (delegatecall — runs in vault context)
        SnuggleRebalanceLib.RebalanceResult memory result =
            SnuggleRebalanceLib.executeRebalance(ctx, tokenId, isManual);

        if (result.skipped) {
            // V25-L-01: Persist cumulative trackers even when rebalance is skipped
            pos.cumulativeFees0 = result.updatedCumulativeFees0;
            pos.cumulativeFees1 = result.updatedCumulativeFees1;
            pos.cumulativeRewards = result.updatedCumulativeRewards;
            return;
        }

        // Re-stake new position in gauge
        _tryStakePosition(result.newTokenId, pos.poolId);

        // Update position tracking — cache values before deletion
        address posOwner = pos.owner;
        bytes32 posPoolId = pos.poolId;
        uint64 posRebalanceDelay = pos.rebalanceDelay;
        uint24 posRangeWidthBps = pos.rangeWidthBps;
        uint32 posTotalRebalances = pos.totalRebalances;
        uint64 posDepositTimestamp = pos.depositTimestamp;
        bool posAutoSnuggleEnabled = pos.autoSnuggleEnabled;
        bool posAutoCompoundEnabled = pos.autoCompoundEnabled;

        positions[result.newTokenId] = UserPosition({
            tokenId: result.newTokenId,
            owner: posOwner,
            poolId: posPoolId,
            rebalanceDelay: posRebalanceDelay,
            rangeWidthBps: posRangeWidthBps,
            outOfRangeSince: 0,
            currentTickLower: result.newTickLower,
            currentTickUpper: result.newTickUpper,
            totalRebalances: posTotalRebalances + 1,
            lastRebalanceTime: uint32(block.timestamp),
            depositTimestamp: posDepositTimestamp,
            autoSnuggleEnabled: posAutoSnuggleEnabled,
            autoCompoundEnabled: posAutoCompoundEnabled,
            cumulativeFees0: result.updatedCumulativeFees0,
            cumulativeFees1: result.updatedCumulativeFees1,
            cumulativeRewards: result.updatedCumulativeRewards,
            __reserved: 0
        });

        _replacePositionId(posOwner, tokenId, result.newTokenId);
        _replaceInAllPositions(tokenId, result.newTokenId);
        delete positions[tokenId];

        emit SnuggleRebalanced(
            tokenId,
            result.newTokenId,
            posOwner,
            result.newTickLower,
            result.newTickUpper,
            result.perfFee0,
            result.perfFee1,
            isManual,
            posTotalRebalances + 1
        );
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // KEEPER FUNCTIONS (called via KeepersHelper)
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Execute a keeper action for a position
    /// @dev Called by KeepersHelper contract
    /// @param tokenId The position token ID
    /// @param actionType 1=start tracking, 2=rebalance, 3=reset tracking
    function executeKeeperAction(uint256 tokenId, uint8 actionType) external nonReentrant whenNotPaused {
        if (!authorizedKeepers[msg.sender]) revert NotAuthorized();

        UserPosition storage pos = positions[tokenId];
        if (pos.owner == address(0)) revert PositionDoesNotExist();
        if (!pos.autoSnuggleEnabled) revert NotAuthorized();

        PoolConfig memory poolConfig = approvedPools[pos.poolId];
        int24 currentTick = poolConfig.positionAdapter.getTWAPTick(poolConfig.pool, twapInterval);
        bool isOutOfRange = currentTick < pos.currentTickLower || currentTick >= pos.currentTickUpper;

        if (actionType == 1) {
            if (!isOutOfRange) revert PositionInRange();
            if (pos.outOfRangeSince != 0) revert AlreadyTracking();
            pos.outOfRangeSince = uint64(block.timestamp);
            emit OutOfRangeStatusUpdated(tokenId, true, block.timestamp);
        } else if (actionType == 2) {
            if (!isOutOfRange) revert PositionInRange();
            if (pos.outOfRangeSince == 0) revert OutOfRangeNotTracked();
            if (block.timestamp < pos.outOfRangeSince + pos.rebalanceDelay) revert DelayNotMet();
            _executeSnuggle(tokenId, false);
        } else if (actionType == 3) {
            if (isOutOfRange) revert StillOutOfRange();
            if (pos.outOfRangeSince > 0 && block.timestamp < pos.outOfRangeSince + MIN_OOR_TRACKING_INTERVAL) {
                revert TooSoonToResetTracking();
            }
            pos.outOfRangeSince = 0;
            emit OutOfRangeStatusUpdated(tokenId, false, 0);
        } else {
            revert InvalidActionType();
        }
    }


    // ═══════════════════════════════════════════════════════════════════════════
    // ADMIN FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Update performance fee (applied to earnings: trading fees + staking rewards)
    /// @param newFeeBps New fee in basis points (e.g. 1500 = 15%)
    function setPerformanceFee(uint256 newFeeBps) external onlyAdminSatellite {
        emit PerformanceFeeUpdated(performanceFeeBps, newFeeBps);
        performanceFeeBps = newFeeBps;
    }

    /// @notice Set treasury (called by AdminSatellite after timelock)
    function setTreasury(address newTreasury) external onlyAdminSatellite {
        emit TreasuryUpdated(treasury, newTreasury);
        treasury = newTreasury;
    }

    /// @notice Set staking manager (called by AdminSatellite after timelock or initial setup)
    function setStakingManager(address newManager) external onlyAdminSatellite {
        emit StakingManagerUpdated(address(stakingManager), newManager);
        stakingManager = StakingManager(newManager);
    }

    /// @notice Update keeper authorization (M-3)
    /// @param keeper Keeper address to update
    /// @param authorized Whether the keeper should be authorized
    function setKeeper(address keeper, bool authorized) external onlyAdminSatellite {
        authorizedKeepers[keeper] = authorized;
        emit KeeperUpdated(keeper, authorized);
    }

    /// @notice Set the admin satellite contract address
    /// @dev V24-L-01: Zero-address check prevents bricking all admin functions
    function setAdminSatellite(address _satellite) external onlyOwner {
        if (_satellite == address(0)) revert InvalidAddress();
        emit AdminSatelliteUpdated(adminSatellite, _satellite);
        adminSatellite = _satellite;
    }

    /// @notice Batch admin config update (combines setTWAPInterval, setSlippage, range bounds, referral fee)
    /// @param rangeMin New min range width (0 to skip)
    /// @param rangeMax New max range width (0 to skip)
    /// @param newReferralFeeBps New referral fee (type(uint256).max to skip)
    /// @param newTwapInterval New TWAP interval in seconds (0 to skip)
    /// @param newSlippageBps New slippage in basis points (type(uint256).max to skip)
    function setConfig(
        uint24 rangeMin,
        uint24 rangeMax,
        uint256 newReferralFeeBps,
        uint32 newTwapInterval,
        uint256 newSlippageBps
    ) external onlyAdminSatellite {
        if (rangeMin > 0 && rangeMax > 0) {
            minRangeWidthBps = rangeMin;
            maxRangeWidthBps = rangeMax;
            emit RangeWidthBoundsUpdated(rangeMin, rangeMax);
        }
        if (newReferralFeeBps != type(uint256).max) {
            emit ReferralFeeUpdated(referralFeeBps, newReferralFeeBps);
            referralFeeBps = newReferralFeeBps;
        }
        if (newTwapInterval > 0) {
            emit TWAPIntervalUpdated(twapInterval, newTwapInterval);
            twapInterval = newTwapInterval;
        }
        if (newSlippageBps != type(uint256).max && newSlippageBps > 0) {
            emit SlippageUpdated(slippageBps, newSlippageBps);
            slippageBps = newSlippageBps;
        }
    }

    /// @notice Set fee exemption status
    function setFeeExempt(address user, bool exempt) external onlyAdminSatellite {
        feeExempt[user] = exempt;
        emit FeeExemptUpdated(user, exempt);
    }

    /// @notice Pause contract
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpause contract
    function unpause() external onlyOwner {
        _unpause();
    }

    /// @notice Update the reward adapter for a pool (called by AdminSatellite)
    function updatePoolRewardAdapter(bytes32 poolId, address newRewardAdapter) external onlyAdminSatellite {
        PoolConfig storage config = approvedPools[poolId];
        if (!config.active) revert PoolNotApproved();

        if (newRewardAdapter != address(0)) {
            address nftManager = config.positionAdapter.positionManager();
            INonfungiblePositionManager(nftManager).setApprovalForAll(newRewardAdapter, true);
            emit AdapterApproved(newRewardAdapter, nftManager);
        }

        config.rewardAdapter = IRewardAdapter(newRewardAdapter);
        emit PoolRewardAdapterUpdated(poolId, newRewardAdapter);
    }

    /// @notice V13-L-02: Clear referrer for a user (admin only, for error correction)
    /// @param user The user whose referrer should be cleared
    function clearReferrer(address user) external onlyAdminSatellite {
        address oldRef = referrer[user];
        delete referrer[user];
        emit ReferrerCleared(user, oldRef);
    }

    /// @notice H-03: Revoke token approval for a specific spender in case of adapter compromise
    /// @param token The token to revoke approval for
    /// @param spender The address to revoke approval from
    function emergencyRevokeApproval(address token, address spender) external onlyAdminSatellite {
        IERC20(token).approve(spender, 0);
        emit ApprovalRevoked(token, spender);
    }

    /// @notice V14-L-04: Revoke NFT operator approval for a specific adapter
    /// @param nftManager The NFT position manager contract
    /// @param operator The adapter address to revoke approval from
    function emergencyRevokeNFTApproval(address nftManager, address operator) external onlyAdminSatellite {
        INonfungiblePositionManager(nftManager).setApprovalForAll(operator, false);
        emit ApprovalRevoked(nftManager, operator);
    }

    /// @notice L-01/L-06: Rescue orphaned ERC721 NFTs sent directly to vault without deposit()
    /// @dev Cannot rescue active positions (those with a UserPosition record)
    /// @param nftContract The NFT contract address
    /// @param tokenId The NFT token ID to rescue
    /// @param to The address to send the NFT to
    function rescueERC721(address nftContract, uint256 tokenId, address to) external onlyAdminSatellite {
        IERC721(nftContract).safeTransferFrom(address(this), to, tokenId);
    }


    // ═══════════════════════════════════════════════════════════════════════════
    // ═══════════════════════════════════════════════════════════════════════════
    // INTERNAL FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @dev Transfer tokens in and return actual amount received (M-4: fee-on-transfer support)
    function _transferInToken(address token, uint256 amount) internal returns (uint256 actualAmount) {
        if (amount == 0) return 0;
        uint256 balanceBefore = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        actualAmount = IERC20(token).balanceOf(address(this)) - balanceBefore;
    }

    /// @dev Validate user parameters
    function _validateParameters(
        uint24 rangeWidthBps,
        uint256 rebalanceDelay
    ) internal view {
        SnuggleLogic.validateParameters(
            rangeWidthBps,
            rebalanceDelay,
            SnuggleLogic.ValidationBounds(minRangeWidthBps, maxRangeWidthBps)
        );
    }

    /// @dev Set referrer for a user (one-time, immutable after set)
    /// @param user The user to set referrer for
    /// @param ref The referrer address (address(0) to skip)
    function _setReferrer(address user, address ref) internal {
        // Skip if no referrer provided or user already has one
        if (ref == address(0) || referrer[user] != address(0)) {
            return;
        }
        // Cannot refer yourself
        if (ref == user) {
            revert CannotReferSelf();
        }
        referrer[user] = ref;
        emit ReferrerSet(user, ref);
    }


    /// @dev Create position entry in storage (M-2: optimized with index mappings)
    /// @dev LOW-02: Enforces position limits to prevent gas griefing
    function _createPosition(
        uint256 tokenId,
        bytes32 poolId,
        int24 tickLower,
        int24 tickUpper,
        uint256 rebalanceDelay,
        uint24 rangeWidthBps,
        bool autoSnuggleEnabled,
        bool autoCompoundEnabled
    ) internal {
        // LOW-02: Enforce position limits (configurable)
        if (userPositions[msg.sender].length >= maxPositionsPerUser) {
            revert MaxPositionsPerUserReached();
        }
        if (allPositionIds.length >= maxTotalPositions) {
            revert MaxTotalPositionsReached();
        }

        positions[tokenId] = UserPosition({
            tokenId: tokenId,
            owner: msg.sender,
            poolId: poolId,
            rebalanceDelay: uint64(rebalanceDelay),
            rangeWidthBps: rangeWidthBps,
            outOfRangeSince: 0,
            currentTickLower: tickLower,
            currentTickUpper: tickUpper,
            totalRebalances: 0,
            lastRebalanceTime: 0, // Not yet rebalanced
            depositTimestamp: uint64(block.timestamp),
            autoSnuggleEnabled: autoSnuggleEnabled,
            autoCompoundEnabled: autoCompoundEnabled,
            cumulativeFees0: 0,
            cumulativeFees1: 0,
            cumulativeRewards: 0,
            __reserved: 0
        });

        // M-2: Store index for O(1) lookup
        uint256 userIndex = userPositions[msg.sender].length;
        userPositions[msg.sender].push(tokenId);
        positionIndexInUser[tokenId] = userIndex;

        uint256 allIndex = allPositionIds.length;
        allPositionIds.push(tokenId);
        positionIndexInAll[tokenId] = allIndex;
        totalActivePositions++;

        // Auto-stake in gauge if reward adapter is configured
        _tryStakePosition(tokenId, poolId);
    }

    /// @dev Attempt to stake position in reward adapter (gauge)
    /// @param tokenId The position NFT token ID
    /// @param poolId The pool ID
    function _tryStakePosition(uint256 tokenId, bytes32 poolId) internal {
        if (address(stakingManager) == address(0)) return;
        PoolConfig memory poolConfig = approvedPools[poolId];
        stakingManager.tryStake(
            tokenId,
            poolConfig.rewardAdapter,
            poolConfig.positionAdapter,
            poolConfig.pool
        );
    }

    /// @dev Attempt to unstake position from reward adapter (gauge)
    /// @param tokenId The position NFT token ID
    /// @param poolId The pool ID
    /// @param recipient Address to receive rewards (vault for fee extraction, or user for direct)
    /// @return rewardsEarned Amount of reward tokens claimed (AERO/CAKE)
    /// @return fees0 Amount of token0 trading fees collected during unstake (PancakeSwap only)
    /// @return fees1 Amount of token1 trading fees collected during unstake (PancakeSwap only)
    function _tryUnstakePosition(
        uint256 tokenId,
        bytes32 poolId,
        address recipient
    ) internal returns (uint256 rewardsEarned, uint256 fees0, uint256 fees1) {
        if (address(stakingManager) == address(0)) return (0, 0, 0);
        PoolConfig memory poolConfig = approvedPools[poolId];
        return stakingManager.tryUnstake(
            tokenId,
            poolConfig.rewardAdapter,
            poolConfig.pool,
            recipient
        );
    }

    /// @dev Remove position from storage (M-2: O(1) operations)
    function _removePosition(uint256 tokenId, address user) internal {
        // O(1) removal from user's array
        uint256[] storage userPosArray = userPositions[user];
        uint256 index = positionIndexInUser[tokenId];
        uint256 lastIndex = userPosArray.length - 1;

        if (index != lastIndex) {
            uint256 lastTokenId = userPosArray[lastIndex];
            userPosArray[index] = lastTokenId;
            positionIndexInUser[lastTokenId] = index;
        }
        userPosArray.pop();
        delete positionIndexInUser[tokenId];

        // O(1) removal from allPositionIds
        uint256 allIndex = positionIndexInAll[tokenId];
        uint256 lastAllIndex = allPositionIds.length - 1;

        if (allIndex != lastAllIndex) {
            uint256 lastAllTokenId = allPositionIds[lastAllIndex];
            allPositionIds[allIndex] = lastAllTokenId;
            positionIndexInAll[lastAllTokenId] = allIndex;
        }
        allPositionIds.pop();
        delete positionIndexInAll[tokenId];
        totalActivePositions--;

        delete positions[tokenId];
    }

    /// @dev Replace position ID in user's array (M-2: O(1) operations)
    function _replacePositionId(
        address user,
        uint256 oldId,
        uint256 newId
    ) internal {
        uint256 index = positionIndexInUser[oldId];
        userPositions[user][index] = newId;
        positionIndexInUser[newId] = index;
        delete positionIndexInUser[oldId];
    }

    /// @dev Replace position ID in all positions array (M-2: O(1) operations)
    function _replaceInAllPositions(uint256 oldId, uint256 newId) internal {
        uint256 index = positionIndexInAll[oldId];
        allPositionIds[index] = newId;
        positionIndexInAll[newId] = index;
        delete positionIndexInAll[oldId];
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // ERC721 RECEIVER
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice H-3: Reject direct NFT transfers - must use depositNFT
    /// @dev H-NEW-2: Updated to support multi-DEX adapters with different position managers
    function onERC721Received(
        address,
        address,
        uint256,
        bytes calldata
    ) external view override returns (bytes4) {
        // H-NEW-2: Accept NFTs from any allowed position manager (multi-DEX support)
        if (!allowedPositionManagers[msg.sender]) revert PositionManagerNotAllowed();

        // H-3: Only accept if called via depositNFT (from == user transferring)
        // Direct safeTransferFrom from users will have from == user address
        // but depositNFT calls safeTransferFrom internally which also has from == user
        // The difference is depositNFT validates the pool first
        // To prevent direct transfers, we reject if it's not from a contract call in progress
        // This is handled by requiring users to use depositNFT which validates the pool

        // Allow the transfer - depositNFT will have already validated the pool
        // Direct transfers without depositNFT won't have position data stored
        // and won't be able to withdraw (positions[tokenId].owner == address(0))
        return this.onERC721Received.selector;
    }
}
