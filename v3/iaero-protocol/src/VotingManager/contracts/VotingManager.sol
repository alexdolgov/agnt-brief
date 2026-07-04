// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/*//////////////////////////////////////////////////////////////
                           EXTERNAL INTERFACES
//////////////////////////////////////////////////////////////*/

/// @notice Minimal Aerodrome/Velodrome voter interface needed by this manager.
interface IVoter {
    function vote(uint256 tokenId, address[] calldata pools, uint256[] calldata weights) external;
    function reset(uint256 tokenId) external;
    function lastVoted(uint256 tokenId) external view returns (uint256);
    function isWhitelisted(address pool) external view returns (bool);
    function gauges(address pool) external view returns (address);
}

/// @notice Minimal interface for your vault to route veNFT actions and read info.
interface IPermalockVault {
    function primaryNFT() external view returns (uint256);

    function executeNFTAction(
        uint256 tokenId,
        address target,
        bytes calldata data
    ) external returns (bytes memory);

    function getNFTInfo(uint256 tokenId)
        external
        view
        returns (
            bool managed,
            uint256 lockedAmount,
            uint256 votingPower,
            uint256 unlockTime,
            bool isPrimary,
            bool isPermanent
        );
}

/*//////////////////////////////////////////////////////////////
                             VOTING MANAGER
//////////////////////////////////////////////////////////////*/

/// @title VotingManager
/// @notice Automates vote casting for the protocol’s veNFT and manages external bribe intake.
/// @dev Compatible with OpenZeppelin v5. Uses NatSpec and custom errors for clarity/gas.
contract VotingManager is Ownable, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    error NotKeeper();
    error NotPriceUpdater();
    error PoolNotActive();
    error PoolNotWhitelisted();
    error LenMismatch();
    error AmountZero();
    error BadEpochs();
    error VoteWindowClosed();
    error VotingAlreadyExecuted();
    error NoPrice();
    error NoPrimaryNFT();
    error NoVotingPower();
    error EpochNotComplete();

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Emitted when a bribe is deposited (ETH or ERC20).
    event BribeDeposited(
        address indexed depositor,
        address indexed pool,
        address indexed token,   // address(0) for ETH
        uint256 amount,
        uint256 epochStart,
        uint256 epochEnd
    );

    /// @notice Emitted when bribes are paid out to treasury after voting.
    event BribesClaimed(
        address indexed pool,
        uint256 indexed epoch,
        address indexed token,   // address(0) for ETH
        uint256 amount
    );

    /// @notice Emitted when votes are executed for an epoch.
    event VotesExecuted(
        uint256 indexed epoch,
        uint256 indexed tokenId,
        address[] pools,
        uint256[] weightsBps
    );

    /// @notice Pool lifecycle and config events.
    event PoolAdded(address indexed pool, address gauge);
    event PoolRemoved(address indexed pool);

    /// @notice Price update and role events.
    event PriceUpdated(address indexed token, uint256 priceUSD);
    event KeeperSet(address indexed who, bool status);
    event PriceUpdaterSet(address indexed who, bool status);
    event RevenueCalculatorSet(address indexed calculator);

    /*//////////////////////////////////////////////////////////////
                               CONSTANTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Basis points denominator.
    uint256 public constant BPS_BASE = 10_000;

    /// @notice Upper bound for pools voted in a single epoch (keeps gas bounded).
    uint256 public constant MAX_POOLS = 20;

    /// @notice Epoch length for the vote cadence.
    uint256 public constant EPOCH_DURATION = 7 days;

    /// @notice Window start inside the epoch when voting becomes allowed.
    uint256 public constant VOTE_WINDOW = 6 days + 12 hours;

    /// @notice Bounds for price sanity checks (1e18 = $1).
    uint256 public constant MAX_PRICE_USD = 1_000_000e18; // $1,000,000
    uint256 public constant MIN_PRICE_USD = 1e14;         // $0.0001

    /*//////////////////////////////////////////////////////////////
                              IMMUTABLES
    //////////////////////////////////////////////////////////////*/

    /// @notice Protocol vault that owns/controls the veNFT.
    address public immutable vault;

    /// @notice Aerodrome/Velodrome voter contract.
    address public immutable voter;

    /// @notice Treasury address receiving bribe proceeds.
    address public immutable treasury;

    /*//////////////////////////////////////////////////////////////
                         STRATEGY / CONFIG STATE
    //////////////////////////////////////////////////////////////*/

    /// @notice Minimum per-epoch bribe value (USD 1e18) per slice.
    uint256 public minBribeUSDPerEpoch = 10e18;

    /// @notice Percentage (bps) of bribes used in scoring (rest is “discount”).
    uint256 public bribeDiscountBPS = 9000; // 90%

    /// @notice Maximum allocation (bps) to a single pool.
    uint256 public maxPoolAllocationBPS = 7000; // 70%

    /// @notice Minimum allocation (bps) for any selected pool.
    uint256 public minVoteWeightBPS = 5; // 0.05%

    /// @notice Max allowed jump between price updates (bps of previous).
    uint256 public maxPriceChangeBps = 2_000; // 20%

    /// @notice Optional external estimator for base revenue (offchain/onchain system).
    address public revenueCalculator;

    /*//////////////////////////////////////////////////////////////
                        ACCESS CONTROL (LIGHTWEIGHT)
    //////////////////////////////////////////////////////////////*/

    mapping(address => bool) public keepers;
    mapping(address => bool) public priceUpdaters;

    /*//////////////////////////////////////////////////////////////
                              BRIBE STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice One bribe slice that applies to a specific epoch window.
    struct Bribe {
        address token;    // address(0) for ETH
        uint256 amount;   // raw token amount or wei
        address depositor;
        uint256 epochStart; // inclusive
        uint256 epochEnd;   // inclusive
        bool claimed;
    }

    /// @notice Per-pool aggregated data and bribe ledger.
    struct PoolData {
        bool isActive;
        uint256 totalBribesUSD;   // for *current* epoch only (1e18 USD)
        uint256 baseRevenueUSD;   // for *current* epoch only (optional, 1e18 USD)
        uint256 lastRevenueUSD;   // realized last epoch (optional, 1e18 USD)
        address gauge;
        Bribe[] bribes;           // full ledger (multi-epoch supported)
    }

    /// @notice All pools known to this manager.
    address[] public activePools;

    /// @notice Pool metadata and bribe ledgers.
    mapping(address => PoolData) public poolData;

    /// @notice USD prices (1e18). address(0) = ETH.
    mapping(address => uint256) public tokenPricesUSD;

    /// @notice Allowed tokens for bribes (address(0) = ETH).
    mapping(address => bool) public allowedBribeTokens;

    /*//////////////////////////////////////////////////////////////
                           EPOCH ACCOUNTING
    //////////////////////////////////////////////////////////////*/

    struct EpochData {
        uint256 totalVotingPower;
        address[] votedPools;
        uint256[] weightsBps;
        uint256 totalBribesReceivedUSD; // snapshot for epoch
        uint256 baseRewardsReceivedUSD; // placeholder for later integrations
        uint256 timestamp;
        bool executed;
    }

    /// @notice Current epoch index (starts at 1).
    uint256 public currentEpoch;

    /// @notice Timestamp when the current epoch started.
    uint256 public epochStartTime;

    /// @notice Last vote execution timestamp.
    uint256 public lastVoteTime;

    /// @notice Cumulative totals (diagnostics only; mixed units!)
    uint256 public totalBribesCollected;     // raw sums (mixed units, not for accounting)
    uint256 public totalBribesCollectedUSD;  // USD total (1e18)

    /// @notice Per-epoch execution snapshots.
    mapping(uint256 => EpochData) public epochData;

    /*//////////////////////////////////////////////////////////////
                                MODIFIERS
    //////////////////////////////////////////////////////////////*/

    modifier onlyKeeper() {
        if (!(keepers[msg.sender] || msg.sender == owner())) revert NotKeeper();
        _;
    }

    modifier onlyPriceUpdater() {
        if (!(priceUpdaters[msg.sender] || msg.sender == owner())) revert NotPriceUpdater();
        _;
    }

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /// @param _vault Address of the PermalockVault that owns the veNFT.
    /// @param _voter Address of the Aerodrome/Velodrome voter.
    /// @param _treasury Treasury address to receive bribe proceeds.
    constructor(address _vault, address _voter, address _treasury) Ownable(msg.sender) {
        require(_vault != address(0) && _voter != address(0) && _treasury != address(0), "bad addr");
        vault = _vault;
        voter = _voter;
        treasury = _treasury;

        // Epoch 1 starts “now”.
        currentEpoch = 1;
        epochStartTime = block.timestamp;

        // By default, allow ETH bribes.
        allowedBribeTokens[address(0)] = true;
    }

    /*//////////////////////////////////////////////////////////////
                             BRIBE INGESTION
    //////////////////////////////////////////////////////////////*/

    /// @notice Deposit an ERC20 bribe, split evenly across `epochs` starting this epoch.
    /// @dev Reverts if current epoch already voted or out of bribe window.
    /// @param pool Target pool (must be active & whitelisted).
    /// @param token ERC20 token address.
    /// @param amount Amount to deposit.
    /// @param epochs Number of epoch slices (1..4).
    function depositBribe(
        address pool,
        address token,
        uint256 amount,
        uint256 epochs
    ) external nonReentrant whenNotPaused {
        if (!poolData[pool].isActive) revert PoolNotActive();
        if (!allowedBribeTokens[token]) revert PoolNotActive(); // treat as not allowed/active
        if (amount == 0) revert AmountZero();
        if (epochs == 0 || epochs > 4) revert BadEpochs();
        if (epochData[currentEpoch].executed) revert VotingAlreadyExecuted();
        if (block.timestamp >= epochStartTime + VOTE_WINDOW) revert VoteWindowClosed();

        uint256 price = tokenPricesUSD[token];
        if (price == 0) revert NoPrice();

        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);

        // split: carry remainder into first slice
        uint256 per = amount / epochs;
        uint256 rem = amount - per * epochs;

        uint256 perUSD = (per * price) / 1e18;
        require(perUSD >= minBribeUSDPerEpoch, "per-epoch too small");

        uint256 startEpoch = currentEpoch;
        for (uint256 i = 0; i < epochs; i++) {
            uint256 slice = per + (i == 0 ? rem : 0);
            poolData[pool].bribes.push(
                Bribe({
                    token: token,
                    amount: slice,
                    depositor: msg.sender,
                    epochStart: startEpoch + i,
                    epochEnd: startEpoch + i,
                    claimed: false
                })
            );

            // add to current rollup if applies now
            if (i == 0) {
                uint256 sliceUSD = (slice * price) / 1e18;
                poolData[pool].totalBribesUSD += sliceUSD;
                totalBribesCollectedUSD += sliceUSD;
            }
        }

        totalBribesCollected += amount;
        emit BribeDeposited(msg.sender, pool, token, amount, startEpoch, startEpoch + epochs - 1);
    }

    /// @notice Deposit an ETH bribe, split evenly across `epochs` starting this epoch.
    /// @param pool Target pool (must be active & whitelisted).
    /// @param epochs Number of epoch slices (1..4).
    function depositETHBribe(address pool, uint256 epochs)
        external
        payable
        nonReentrant
        whenNotPaused
    {
        if (!poolData[pool].isActive) revert PoolNotActive();
        if (msg.value == 0) revert AmountZero();
        if (epochs == 0 || epochs > 4) revert BadEpochs();
        if (epochData[currentEpoch].executed) revert VotingAlreadyExecuted();
        if (block.timestamp >= epochStartTime + VOTE_WINDOW) revert VoteWindowClosed();

        uint256 price = tokenPricesUSD[address(0)];
        if (price == 0) revert NoPrice();

        uint256 per = msg.value / epochs;
        uint256 rem = msg.value - per * epochs;

        uint256 perUSD = (per * price) / 1e18;
        require(perUSD >= minBribeUSDPerEpoch, "per-epoch too small");

        uint256 startEpoch = currentEpoch;
        for (uint256 i = 0; i < epochs; i++) {
            uint256 slice = per + (i == 0 ? rem : 0);
            poolData[pool].bribes.push(
                Bribe({
                    token: address(0),
                    amount: slice,
                    depositor: msg.sender,
                    epochStart: startEpoch + i,
                    epochEnd: startEpoch + i,
                    claimed: false
                })
            );

            if (i == 0) {
                uint256 sliceUSD = (slice * price) / 1e18;
                poolData[pool].totalBribesUSD += sliceUSD;
                totalBribesCollectedUSD += sliceUSD;
            }
        }

        totalBribesCollected += msg.value;
        emit BribeDeposited(msg.sender, pool, address(0), msg.value, startEpoch, startEpoch + epochs - 1);
    }

    /*//////////////////////////////////////////////////////////////
                               VOTING FLOW
    //////////////////////////////////////////////////////////////*/

    /// @notice Keeper calls to cast votes using the vault’s veNFT, then pays claimable bribes to treasury.
    function executeVotes() external onlyKeeper nonReentrant {
        if (block.timestamp < epochStartTime + VOTE_WINDOW) revert VoteWindowClosed();
        if (epochData[currentEpoch].executed) revert VotingAlreadyExecuted();

        // read veNFT + power
        uint256 tokenId = IPermalockVault(vault).primaryNFT();
        if (tokenId == 0) revert NoPrimaryNFT();

        (, , uint256 votingPower, , , ) = IPermalockVault(vault).getNFTInfo(tokenId);
        if (votingPower == 0) revert NoVotingPower();

        // compute allocation
        (address[] memory pools, uint256[] memory weightsBps) = _calculateOptimalAllocation();
        require(pools.length > 0, "no eligible pools");

        // reset if needed
        if (IVoter(voter).lastVoted(tokenId) > 0) {
            bytes memory resetData = abi.encodeWithSelector(IVoter.reset.selector, tokenId);
            IPermalockVault(vault).executeNFTAction(tokenId, voter, resetData);
        }

        // vote via vault router
        bytes memory voteData =
            abi.encodeWithSelector(IVoter.vote.selector, tokenId, pools, weightsBps);
        IPermalockVault(vault).executeNFTAction(tokenId, voter, voteData);

        // snapshot execution
        epochData[currentEpoch] = EpochData({
            totalVotingPower: votingPower,
            votedPools: pools,
            weightsBps: weightsBps,
            totalBribesReceivedUSD: _getCurrentEpochBribesUSD(),
            baseRewardsReceivedUSD: 0,
            timestamp: block.timestamp,
            executed: true
        });

        lastVoteTime = block.timestamp;
        emit VotesExecuted(currentEpoch, tokenId, pools, weightsBps);

        // pay claimable bribes for this epoch
        _payBribes(currentEpoch, pools);
    }

    /// @dev Pays all unclaimed bribe slices for `epoch` limited to the voted pools, to the treasury.
    function _payBribes(uint256 epoch, address[] memory poolsVoted) internal {
        for (uint256 i = 0; i < poolsVoted.length; i++) {
            PoolData storage pd = poolData[poolsVoted[i]];
            if (!pd.isActive) continue;

            Bribe[] storage brs = pd.bribes;
            uint256 L = brs.length;
            for (uint256 j = 0; j < L; j++) {
                Bribe storage b = brs[j];
                if (b.claimed) continue;
                if (epoch < b.epochStart || epoch > b.epochEnd) continue;

                b.claimed = true;

                if (b.token == address(0)) {
                    (bool ok, ) = payable(treasury).call{value: b.amount}("");
                    require(ok, "ETH xfer fail");
                } else {
                    IERC20(b.token).safeTransfer(treasury, b.amount);
                }

                emit BribesClaimed(poolsVoted[i], epoch, b.token, b.amount);
            }
        }
    }

    /*//////////////////////////////////////////////////////////////
                           EPOCH MANAGEMENT
    //////////////////////////////////////////////////////////////*/

    /// @notice Advance to the next epoch; rebuild current-epoch USD rollups from unclaimed slices.
    function advanceEpoch() external onlyKeeper nonReentrant {
        if (block.timestamp < epochStartTime + EPOCH_DURATION) revert EpochNotComplete();
        require(epochData[currentEpoch].executed, "vote not executed");

        // slide window
        epochStartTime = epochStartTime + EPOCH_DURATION;
        currentEpoch += 1;

        // refresh bribe USD totals for new current epoch
        uint256 priceEth = tokenPricesUSD[address(0)];
        uint256 n = activePools.length;

        for (uint256 i = 0; i < n; i++) {
            address pool = activePools[i];
            PoolData storage pd = poolData[pool];
            if (!pd.isActive) continue;

            uint256 nextUSD = 0;
            Bribe[] storage brs = pd.bribes;
            for (uint256 j = 0; j < brs.length; j++) {
                Bribe storage b = brs[j];
                if (b.claimed) continue;
                if (b.epochStart > currentEpoch || b.epochEnd < currentEpoch) continue;

                uint256 price = (b.token == address(0)) ? priceEth : tokenPricesUSD[b.token];
                if (price == 0) continue;
                nextUSD += (b.amount * price) / 1e18;
            }
            pd.totalBribesUSD = nextUSD;

            // optional bounded cleanup if ledger grows large
            if (brs.length > 64) _cleanupOldBribesInternal(pool, 12);
        }
    }

    /// @dev Bounded compaction to discard long-past claimed bribes (keeps gas bounded).
    function _cleanupOldBribesInternal(address pool, uint256 maxScan) internal {
        Bribe[] storage arr = poolData[pool].bribes;
        if (arr.length == 0) return;

        uint256 write = 0;
        uint256 scanned = 0;

        for (uint256 read = 0; read < arr.length; read++) {
            Bribe storage b = arr[read];
            bool expired = (b.claimed && b.epochEnd + 3 < currentEpoch); // keep a few epochs for UI
            if (!expired) {
                if (write != read) arr[write] = arr[read];
                write++;
            }
            if (++scanned >= maxScan && read + 1 < arr.length) break;
        }

        // Shrink array without assembly
        while (arr.length > write) arr.pop();
    }

    /*//////////////////////////////////////////////////////////////
                     ALLOCATION / SCORING (VIEW/PURE)
    //////////////////////////////////////////////////////////////*/

    /// @notice Computes the pool list and weights (bps) for this epoch’s vote.
    /// @dev Uses discounted bribes + baseRevenue as score; respects min/max caps.
    function _calculateOptimalAllocation()
        private
        view
        returns (address[] memory pools, uint256[] memory weightsBps)
    {
        uint256 nAll = activePools.length;
        require(nAll > 0, "no pools");

        // Gather candidates & scores
        address[] memory cand = new address[](nAll);
        uint256[] memory scr  = new uint256[](nAll);
        uint256 k = 0;

        for (uint256 i = 0; i < nAll; i++) {
            address p = activePools[i];
            PoolData storage pd = poolData[p];
            if (!pd.isActive) continue;

            uint256 bribeUSD = (pd.totalBribesUSD * bribeDiscountBPS) / BPS_BASE;
            uint256 score = bribeUSD + pd.baseRevenueUSD;
            if (score == 0) continue;

            cand[k] = p;
            scr[k]  = score;
            k++;
            if (k == MAX_POOLS) break; // keep bounded
        }
        require(k > 0, "zero scores");

        // Trim arrays to exact length (no assembly): rebuild exact-sized arrays
        address[] memory poolsTmp = new address[](k);
        uint256[] memory scores   = new uint256[](k);
        for (uint256 i = 0; i < k; i++) {
            poolsTmp[i] = cand[i];
            scores[i]   = scr[i];
        }

        // Simple O(k^2) sort by score desc (k <= MAX_POOLS)
        for (uint256 i = 0; i + 1 < k; i++) {
            for (uint256 j = i + 1; j < k; j++) {
                if (scores[j] > scores[i]) {
                    (scores[i], scores[j]) = (scores[j], scores[i]);
                    (poolsTmp[i], poolsTmp[j]) = (poolsTmp[j], poolsTmp[i]);
                }
            }
        }

        // Proportional allocation with caps and minimums
        uint256 sum = 0;
        for (uint256 i = 0; i < k; i++) sum += scores[i];

        uint256[] memory alloc = new uint256[](k);
        uint256 used = 0;

        for (uint256 i = 0; i < k; i++) {
            uint256 w = (scores[i] * BPS_BASE) / sum;
            if (w < minVoteWeightBPS) { alloc[i] = 0; continue; }
            if (w > maxPoolAllocationBPS) w = maxPoolAllocationBPS;
            alloc[i] = w;
            used += w;
        }

        // Spread remainder (caps respected)
        if (used < BPS_BASE) _spreadRemainder(BPS_BASE - used, alloc, maxPoolAllocationBPS);

        // Build outputs without zero weights
        uint256 m = 0; for (uint256 i = 0; i < k; i++) if (alloc[i] > 0) m++;
        pools      = new address[](m);
        weightsBps = new uint256[](m);
        uint256 idx = 0;

        for (uint256 i = 0; i < k; i++) {
            if (alloc[i] == 0) continue;
            pools[idx] = poolsTmp[i];
            weightsBps[idx] = alloc[i];
            idx++;
        }
    }

    /// @dev Distributes leftover bps evenly among positive allocations, respecting `capBps`.
    function _spreadRemainder(uint256 remainder, uint256[] memory allocations, uint256 capBps) private pure {
        if (remainder == 0) return;
        uint256 n = allocations.length;

        // round-robin up to cap
        while (remainder > 0) {
            bool distributed = false;
            for (uint256 i = 0; i < n && remainder > 0; i++) {
                if (allocations[i] > 0 && allocations[i] < capBps) {
                    allocations[i] += 1;
                    remainder -= 1;
                    distributed = true;
                }
            }
            if (!distributed) break; // all at cap
        }

        // if still left, drop on first non-zero but never above 10000 bps
        if (remainder > 0) {
            for (uint256 i = 0; i < n && remainder > 0; i++) {
                if (allocations[i] == 0) continue;
                uint256 canAdd = remainder;
                if (allocations[i] + canAdd > BPS_BASE) {
                    canAdd = BPS_BASE - allocations[i];
                }
                allocations[i] += canAdd;
                remainder -= canAdd;
                break;
            }
        }
    }

    /*//////////////////////////////////////////////////////////////
                       VIEWS: UNCLAIMED BRIBES (NEW)
    //////////////////////////////////////////////////////////////*/

    /// @notice Returns unclaimed bribes per token for `pool` (no unit mixing).
    /// @dev Arrays are parallel: tokens[i] corresponds to amounts[i].
    function getUnclaimedBribesByToken(address pool)
        external
        view
        returns (address[] memory tokens, uint256[] memory amounts)
    {
        Bribe[] storage bribes = poolData[pool].bribes;

        // First pass: count unique tokens among *unclaimed* slices
        address[] memory tmp = new address[](bribes.length);
        uint256 unique = 0;

        for (uint256 i = 0; i < bribes.length; i++) {
            Bribe storage b = bribes[i];
            if (b.claimed) continue;
            address t = b.token;
            bool seen = false;
            for (uint256 j = 0; j < unique; j++) {
                if (tmp[j] == t) { seen = true; break; }
            }
            if (!seen) tmp[unique++] = t;
        }

        // Allocate exact-sized outputs
        tokens  = new address[](unique);
        amounts = new uint256[](unique);

        for (uint256 i = 0; i < unique; i++) tokens[i] = tmp[i];

        // Second pass: sum amounts by token
        for (uint256 i = 0; i < bribes.length; i++) {
            Bribe storage b = bribes[i];
            if (b.claimed) continue;
            for (uint256 j = 0; j < unique; j++) {
                if (tokens[j] == b.token) {
                    amounts[j] += b.amount;
                    break;
                }
            }
        }
    }

    /// @notice USD value (1e18) of *unclaimed* bribes for `pool` that apply to `epoch`.
    /// @dev Relies on current `tokenPricesUSD`; slices with price==0 are ignored.
    function getUnclaimedBribesUSD(address pool, uint256 epoch) external view returns (uint256 totalUSD) {
        Bribe[] storage bribes = poolData[pool].bribes;
        uint256 priceEth = tokenPricesUSD[address(0)];

        for (uint256 i = 0; i < bribes.length; i++) {
            Bribe storage b = bribes[i];
            if (b.claimed) continue;
            if (epoch < b.epochStart || epoch > b.epochEnd) continue;

            uint256 price = (b.token == address(0)) ? priceEth : tokenPricesUSD[b.token];
            if (price == 0) continue;
            totalUSD += (b.amount * price) / 1e18;
        }
    }

    /// @notice Convenience: USD value (1e18) of claimable (current-epoch) unclaimed bribes for `pool`.
    function getUnclaimedBribesUSDCurrent(address pool) external view returns (uint256) {
        return this.getUnclaimedBribesUSD(pool, currentEpoch);
    }

    /*//////////////////////////////////////////////////////////////
                           ADMIN / CONFIG
    //////////////////////////////////////////////////////////////*/

    /// @notice Adds a pool if it has a valid gauge and is whitelisted by the voter.
    function addPool(address pool) external onlyOwner {
        if (pool == address(0)) revert PoolNotActive();
        if (poolData[pool].isActive) revert PoolNotActive(); // already active → treat as error

        address gauge = IVoter(voter).gauges(pool);
        if (gauge == address(0)) revert PoolNotWhitelisted();
        if (!IVoter(voter).isWhitelisted(pool)) revert PoolNotWhitelisted();

        poolData[pool].isActive = true;
        poolData[pool].gauge = gauge;
        activePools.push(pool);

        emit PoolAdded(pool, gauge);
    }

    /// @notice Removes a pool from the active set.
    function removePool(address pool) external onlyOwner {
        if (!poolData[pool].isActive) revert PoolNotActive();
        poolData[pool].isActive = false;

        uint256 L = activePools.length;
        for (uint256 i = 0; i < L; i++) {
            if (activePools[i] == pool) {
                activePools[i] = activePools[L - 1];
                activePools.pop();
                break;
            }
        }
        emit PoolRemoved(pool);
    }

    /// @notice Enables or disables a token (or ETH via address(0)) for bribe deposits.
    function setAllowedBribeToken(address token, bool allowed) external onlyOwner {
        allowedBribeTokens[token] = allowed;
    }

    /// @notice Updates a single token price in 1e18 USD, with bounds and max-jump checks.
    function updateTokenPrice(address token, uint256 priceUSD) external onlyPriceUpdater {
        _updateTokenPrice(token, priceUSD);
    }

    /// @notice Batch price updater (lengths must match).
    function updateTokenPrices(address[] calldata tokens, uint256[] calldata pricesUSD) external onlyPriceUpdater {
        if (tokens.length != pricesUSD.length) revert LenMismatch();
        for (uint256 i = 0; i < tokens.length; i++) {
            _updateTokenPrice(tokens[i], pricesUSD[i]);
        }
    }

    /// @dev Internal helper for price updates with sanity checks.
    function _updateTokenPrice(address token, uint256 priceUSD) internal {
        require(priceUSD >= MIN_PRICE_USD && priceUSD <= MAX_PRICE_USD, "price bounds");
        uint256 prev = tokenPricesUSD[token];
        if (prev > 0) {
            uint256 diff = (priceUSD > prev) ? priceUSD - prev : prev - priceUSD;
            require((diff * BPS_BASE) / prev <= maxPriceChangeBps, "price jump");
        }
        tokenPricesUSD[token] = priceUSD;
        emit PriceUpdated(token, priceUSD);
    }

    /// @notice Sets strategy parameters (all bounds-checked).
    function setRevenueParams(
        uint256 _minBribeUSDPerEpoch,
        uint256 _bribeDiscountBPS,
        uint256 _maxPoolAllocationBPS,
        uint256 _minVoteWeightBPS,
        uint256 _maxPriceChangeBps
    ) external onlyOwner {
        require(_bribeDiscountBPS <= BPS_BASE, "bad discount");
        require(_maxPoolAllocationBPS <= BPS_BASE, "bad max alloc");
        require(_minVoteWeightBPS > 0 && _minVoteWeightBPS <= BPS_BASE, "bad min weight");
        require(_maxPriceChangeBps <= BPS_BASE, "bad pricejump");

        minBribeUSDPerEpoch = _minBribeUSDPerEpoch;
        bribeDiscountBPS = _bribeDiscountBPS;
        maxPoolAllocationBPS = _maxPoolAllocationBPS;
        minVoteWeightBPS = _minVoteWeightBPS;
        maxPriceChangeBps = _maxPriceChangeBps;
    }

    /// @notice Assign or revoke keeper permission.
    function setKeeper(address who, bool status) external onlyOwner {
        keepers[who] = status;
        emit KeeperSet(who, status);
    }

    /// @notice Assign or revoke price-updater permission.
    function setPriceUpdater(address who, bool status) external onlyOwner {
        priceUpdaters[who] = status;
        emit PriceUpdaterSet(who, status);
    }

    /// @notice Optional hook for external revenue estimation systems.
    function setRevenueCalculator(address calculator) external onlyOwner {
        revenueCalculator = calculator;
        emit RevenueCalculatorSet(calculator);
    }

    /// @notice Owner can update a pool’s base revenue estimate for the current epoch.
    function updatePoolBaseRevenue(address pool, uint256 revenueUSD) external onlyKeeper {
        if (!poolData[pool].isActive) revert PoolNotActive();
        poolData[pool].baseRevenueUSD = revenueUSD;
    }

    /// @notice Pause/unpause bribe intake (voting still possible for keepers).
    function pause() external onlyOwner { _pause(); }
    function unpause() external onlyOwner { _unpause(); }

    /// @notice Emergency withdraw (owner) — use carefully. Does not affect bribe ledgers.
    function emergencyWithdraw(address token, uint256 amount) external onlyOwner nonReentrant {
        if (token == address(0)) {
            (bool ok, ) = owner().call{value: amount}("");
            require(ok, "ETH transfer failed");
        } else {
            IERC20(token).safeTransfer(owner(), amount);
        }
    }

    /*//////////////////////////////////////////////////////////////
                                 VIEWS
    //////////////////////////////////////////////////////////////*/

    /// @notice Active pool list (order not guaranteed).
    function getActivePools() external view returns (address[] memory) {
        return activePools;
    }

    /// @notice Full bribe ledger for a pool (may be large; prefer filtered UIs).
    function getPoolBribes(address pool) external view returns (Bribe[] memory) {
        return poolData[pool].bribes;
    }

    /// @notice Lightweight pool info snapshot.
    function getPoolInfo(address pool)
        external
        view
        returns (
            bool isActive,
            uint256 totalBribesUSD,
            uint256 baseRevenueUSD,
            uint256 lastRevenueUSD,
            address gauge
        )
    {
        PoolData storage d = poolData[pool];
        return (d.isActive, d.totalBribesUSD, d.baseRevenueUSD, d.lastRevenueUSD, d.gauge);
    }

    /// @notice Public accessor for the current optimal allocation (same logic used at execution).
    function getOptimalAllocation() external view returns (address[] memory pools, uint256[] memory weightsBps) {
        return _calculateOptimalAllocation();
    }

    /// @notice Whether the vote window is open and the epoch not yet executed.
    function canExecuteVotes() external view returns (bool) {
        return block.timestamp >= epochStartTime + VOTE_WINDOW && !epochData[currentEpoch].executed;
    }

    /// @notice Seconds until the next epoch boundary (0 if already past).
    function timeUntilNextEpoch() external view returns (uint256) {
        uint256 end = epochStartTime + EPOCH_DURATION;
        return (block.timestamp >= end) ? 0 : (end - block.timestamp);
    }

    /// @notice Current-epoch sum of per-pool USD bribe totals (for diagnostics/UI).
    function _getCurrentEpochBribesUSD() private view returns (uint256 total) {
        for (uint256 i = 0; i < activePools.length; i++) {
            total += poolData[activePools[i]].totalBribesUSD;
        }
    }

    /*//////////////////////////////////////////////////////////////
                                RECEIVE
    //////////////////////////////////////////////////////////////*/

    receive() external payable {}
}
