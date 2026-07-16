// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/* ======================= External interfaces ======================= */

interface IVoter {
    function vote(uint256 tokenId, address[] calldata pools, uint256[] calldata weights) external;
    function reset(uint256 tokenId) external;
    function lastVoted(uint256 tokenId) external view returns (uint256);
    function isWhitelisted(address pool) external view returns (bool);
    function gauges(address pool) external view returns (address);
}

interface IPermalockVault {
    function primaryNFT() external view returns (uint256);
    function executeNFTAction(uint256 tokenId, address target, bytes calldata data) external returns (bytes memory);
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

/* ============================ Contract ============================ */

contract VotingManager is Ownable, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;

    /* ------------------------------ Errors ------------------------------ */
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

    /* ------------------------------ Events ------------------------------ */
    event BribeDeposited(address indexed depositor, address indexed pool, address indexed token, uint256 amount, uint256 epochStart, uint256 epochEnd);
    event BribesClaimed(address indexed pool, uint256 indexed epoch, address indexed token, uint256 amount);
    event VotesExecuted(uint256 indexed epoch, uint256 indexed tokenId, address[] pools, uint256[] weightsBps);
    event PoolAdded(address indexed pool, address gauge);
    event PoolRemoved(address indexed pool);
    event PriceUpdated(address indexed token, uint256 priceUSD);
    event KeeperSet(address indexed who, bool status);
    event PriceUpdaterSet(address indexed who, bool status);
    event RevenueCalculatorSet(address indexed calculator);

    /* ----------------------------- Constants ---------------------------- */
    uint256 public constant BPS_BASE = 10_000;
    uint256 public constant MAX_POOLS = 20;
    uint256 public constant EPOCH_DURATION = 7 days;
    uint256 public constant VOTE_WINDOW = 6 days + 12 hours; // kept for legacy path
    uint256 public constant MAX_PRICE_USD = 1_000_000e18;
    uint256 public constant MIN_PRICE_USD = 1e14;

    /* ----------------------------- Immutables --------------------------- */
    address public immutable vault;
    address public immutable voter;
    address public immutable treasury;

    /* --------------------------- Strategy state ------------------------- */
    uint256 public minBribeUSDPerEpoch = 10e18;
    uint256 public bribeDiscountBPS = 9000;
    uint256 public maxPoolAllocationBPS = 7000;
    uint256 public minVoteWeightBPS = 5;
    uint256 public maxPriceChangeBps = 2_000;
    address public revenueCalculator;

    mapping(address => bool) public keepers;
    mapping(address => bool) public priceUpdaters;

    struct Bribe {
        address token;    // address(0) for ETH
        uint256 amount;
        address depositor;
        uint256 epochStart; // inclusive
        uint256 epochEnd;   // inclusive
        bool claimed;
    }

    struct PoolData {
        bool isActive;
        uint256 totalBribesUSD;   // current epoch only
        uint256 baseRevenueUSD;   // current epoch only
        uint256 lastRevenueUSD;   // last epoch (optional)
        address gauge;
        Bribe[] bribes;
    }

    address[] public activePools;
    mapping(address => PoolData) public poolData;
    mapping(address => uint256) public tokenPricesUSD; // address(0) = ETH
    mapping(address => bool) public allowedBribeTokens;

    struct EpochData {
        uint256 totalVotingPower;
        address[] votedPools;
        uint256[] weightsBps;
        uint256 totalBribesReceivedUSD;
        uint256 baseRewardsReceivedUSD;
        uint256 timestamp;
        bool executed;
    }

    uint256 public currentEpoch;
    uint256 public epochStartTime;
    uint256 public lastVoteTime;

    uint256 public totalBribesCollected;
    uint256 public totalBribesCollectedUSD;
    mapping(uint256 => EpochData) public epochData;

    /* ----------------------------- Modifiers ---------------------------- */
    modifier onlyKeeper() {
        if (!(keepers[msg.sender] || msg.sender == owner())) revert NotKeeper();
        _;
    }
    modifier onlyPriceUpdater() {
        if (!(priceUpdaters[msg.sender] || msg.sender == owner())) revert NotPriceUpdater();
        _;
    }

    /* ---------------------------- Constructor --------------------------- */
    constructor(address _vault, address _voter, address _treasury) Ownable(msg.sender) {
        require(_vault != address(0) && _voter != address(0) && _treasury != address(0), "bad addr");
        vault = _vault;
        voter = _voter;
        treasury = _treasury;
        currentEpoch = 1;
        epochStartTime = block.timestamp;
        allowedBribeTokens[address(0)] = true; // ETH allowed by default
    }

    /* -------------------------- Bribe ingestion ------------------------- */
    function depositBribe(address pool, address token, uint256 amount, uint256 epochs)
        external
        nonReentrant
        whenNotPaused
    {
        if (!poolData[pool].isActive) revert PoolNotActive();
        if (!allowedBribeTokens[token]) revert PoolNotActive();
        if (amount == 0) revert AmountZero();
        if (epochs == 0 || epochs > 4) revert BadEpochs();
        if (epochData[currentEpoch].executed) revert VotingAlreadyExecuted(); // relaxed window

        uint256 price = tokenPricesUSD[token];
        if (price == 0) revert NoPrice();

        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);

        uint256 per = amount / epochs;
        uint256 rem = amount - per * epochs;
        uint256 perUSD = (per * price) / 1e18;
        require(perUSD >= minBribeUSDPerEpoch, "per-epoch too small");

        uint256 startEpoch = currentEpoch;
        for (uint256 i = 0; i < epochs; i++) {
            uint256 slice = per + (i == 0 ? rem : 0);
            poolData[pool].bribes.push(Bribe({
                token: token,
                amount: slice,
                depositor: msg.sender,
                epochStart: startEpoch + i,
                epochEnd: startEpoch + i,
                claimed: false
            }));
            if (i == 0) {
                uint256 sliceUSD = (slice * price) / 1e18;
                poolData[pool].totalBribesUSD += sliceUSD;
                totalBribesCollectedUSD += sliceUSD;
            }
        }
        totalBribesCollected += amount;
        emit BribeDeposited(msg.sender, pool, token, amount, startEpoch, startEpoch + epochs - 1);
    }

    function depositETHBribe(address pool, uint256 epochs)
        external payable nonReentrant whenNotPaused
    {
        if (!poolData[pool].isActive) revert PoolNotActive();
        if (msg.value == 0) revert AmountZero();
        if (epochs == 0 || epochs > 4) revert BadEpochs();
        if (epochData[currentEpoch].executed) revert VotingAlreadyExecuted(); // relaxed window

        uint256 price = tokenPricesUSD[address(0)];
        if (price == 0) revert NoPrice();

        uint256 per = msg.value / epochs;
        uint256 rem = msg.value - per * epochs;
        uint256 perUSD = (per * price) / 1e18;
        require(perUSD >= minBribeUSDPerEpoch, "per-epoch too small");

        uint256 startEpoch = currentEpoch;
        for (uint256 i = 0; i < epochs; i++) {
            uint256 slice = per + (i == 0 ? rem : 0);
            poolData[pool].bribes.push(Bribe({
                token: address(0),
                amount: slice,
                depositor: msg.sender,
                epochStart: startEpoch + i,
                epochEnd: startEpoch + i,
                claimed: false
            }));
            if (i == 0) {
                uint256 sliceUSD = (slice * price) / 1e18;
                poolData[pool].totalBribesUSD += sliceUSD;
                totalBribesCollectedUSD += sliceUSD;
            }
        }
        totalBribesCollected += msg.value;
        emit BribeDeposited(msg.sender, pool, address(0), msg.value, startEpoch, startEpoch + epochs - 1);
    }

    /* ----------------------------- Voting ------------------------------- */

    function _canVoteByVoterClock() internal view returns (bool) {
        uint256 tokenId = IPermalockVault(vault).primaryNFT();
        if (tokenId == 0) return false;
        return block.timestamp >= IVoter(voter).lastVoted(tokenId) + 7 days;
    }

    /// Legacy path: keeps the local window + voter cooldown.
    function executeVotes() external onlyKeeper nonReentrant {
        if (block.timestamp < epochStartTime + VOTE_WINDOW) revert VoteWindowClosed();
        if (epochData[currentEpoch].executed) revert VotingAlreadyExecuted();
        if (!_canVoteByVoterClock()) revert VoteWindowClosed();
        _executeVotesCore();
    }

    /// New path: ignore local window, only require Aerodrome cooldown.
    function executeVotesNow() external onlyKeeper nonReentrant {
        if (epochData[currentEpoch].executed) revert VotingAlreadyExecuted();
        if (!_canVoteByVoterClock()) revert VoteWindowClosed();
        _executeVotesCore();
    }

    function _executeVotesCore() internal {
        uint256 tokenId = IPermalockVault(vault).primaryNFT();
        if (tokenId == 0) revert NoPrimaryNFT();

        (, , uint256 votingPower, , , ) = IPermalockVault(vault).getNFTInfo(tokenId);
        if (votingPower == 0) revert NoVotingPower();

        (address[] memory pools, uint256[] memory weightsBps) = _calculateOptimalAllocation();
        require(pools.length > 0, "no eligible pools");

        if (IVoter(voter).lastVoted(tokenId) > 0) {
            bytes memory resetData = abi.encodeWithSelector(IVoter.reset.selector, tokenId);
            IPermalockVault(vault).executeNFTAction(tokenId, voter, resetData);
        }

        bytes memory voteData = abi.encodeWithSelector(IVoter.vote.selector, tokenId, pools, weightsBps);
        IPermalockVault(vault).executeNFTAction(tokenId, voter, voteData);

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
        _payBribes(currentEpoch, pools);
    }

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

    /* --------------------------- Epoch mgmt ----------------------------- */

    function advanceEpoch() external onlyKeeper nonReentrant {
        if (block.timestamp < epochStartTime + EPOCH_DURATION) revert EpochNotComplete();
        require(epochData[currentEpoch].executed, "vote not executed");

        epochStartTime = epochStartTime + EPOCH_DURATION;
        currentEpoch += 1;

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
            if (brs.length > 64) _cleanupOldBribesInternal(pool, 12);
        }
    }

    function _cleanupOldBribesInternal(address pool, uint256 maxScan) internal {
        Bribe[] storage arr = poolData[pool].bribes;
        if (arr.length == 0) return;
        uint256 write = 0; uint256 scanned = 0;
        for (uint256 read = 0; read < arr.length; read++) {
            Bribe storage b = arr[read];
            bool expired = (b.claimed && b.epochEnd + 3 < currentEpoch);
            if (!expired) { if (write != read) arr[write] = arr[read]; write++; }
            if (++scanned >= maxScan && read + 1 < arr.length) break;
        }
        while (arr.length > write) arr.pop();
    }

    /* ----------------------- Allocation / scoring ----------------------- */

    function _calculateOptimalAllocation()
        private
        view
        returns (address[] memory pools, uint256[] memory weightsBps)
    {
        uint256 nAll = activePools.length;
        require(nAll > 0, "no pools");

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
            cand[k] = p; scr[k] = score; k++;
            if (k == MAX_POOLS) break;
        }
        require(k > 0, "zero scores");

        address[] memory poolsTmp = new address[](k);
        uint256[] memory scores   = new uint256[](k);
        for (uint256 i = 0; i < k; i++) { poolsTmp[i] = cand[i]; scores[i] = scr[i]; }

        for (uint256 i = 0; i + 1 < k; i++) {
            for (uint256 j = i + 1; j < k; j++) {
                if (scores[j] > scores[i]) {
                    (scores[i], scores[j]) = (scores[j], scores[i]);
                    (poolsTmp[i], poolsTmp[j]) = (poolsTmp[j], poolsTmp[i]);
                }
            }
        }

        uint256 sum = 0; for (uint256 i = 0; i < k; i++) sum += scores[i];

        uint256[] memory alloc = new uint256[](k);
        uint256 used = 0;
        for (uint256 i = 0; i < k; i++) {
            uint256 w = (scores[i] * BPS_BASE) / sum;
            if (w < minVoteWeightBPS) { alloc[i] = 0; continue; }
            if (w > maxPoolAllocationBPS) w = maxPoolAllocationBPS;
            alloc[i] = w; used += w;
        }
        if (used < BPS_BASE) _spreadRemainder(BPS_BASE - used, alloc, maxPoolAllocationBPS);

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

    function _spreadRemainder(uint256 remainder, uint256[] memory allocations, uint256 capBps) private pure {
        if (remainder == 0) return;
        uint256 n = allocations.length;
        while (remainder > 0) {
            bool distributed = false;
            for (uint256 i = 0; i < n && remainder > 0; i++) {
                if (allocations[i] > 0 && allocations[i] < capBps) {
                    allocations[i] += 1; remainder -= 1; distributed = true;
                }
            }
            if (!distributed) break;
        }
        if (remainder > 0) {
            for (uint256 i = 0; i < n && remainder > 0; i++) {
                if (allocations[i] == 0) continue;
                uint256 canAdd = remainder;
                if (allocations[i] + canAdd > BPS_BASE) canAdd = BPS_BASE - allocations[i];
                allocations[i] += canAdd; remainder -= canAdd; break;
            }
        }
    }

    /* ------------------------------ Admin ------------------------------- */

    function addPool(address pool) external onlyOwner {
        if (pool == address(0) || poolData[pool].isActive) revert PoolNotActive();
        address gauge = IVoter(voter).gauges(pool);
        if (gauge == address(0) || !IVoter(voter).isWhitelisted(pool)) revert PoolNotWhitelisted();
        poolData[pool].isActive = true; poolData[pool].gauge = gauge; activePools.push(pool);
        emit PoolAdded(pool, gauge);
    }

    function removePool(address pool) external onlyOwner {
        if (!poolData[pool].isActive) revert PoolNotActive();
        poolData[pool].isActive = false;
        uint256 L = activePools.length;
        for (uint256 i = 0; i < L; i++) { if (activePools[i] == pool) { activePools[i] = activePools[L - 1]; activePools.pop(); break; } }
        emit PoolRemoved(pool);
    }

    function setAllowedBribeToken(address token, bool allowed) external onlyOwner {
        allowedBribeTokens[token] = allowed;
    }

    function updateTokenPrice(address token, uint256 priceUSD) external onlyPriceUpdater {
        _updateTokenPrice(token, priceUSD);
    }
    function updateTokenPrices(address[] calldata tokens, uint256[] calldata pricesUSD) external onlyPriceUpdater {
        if (tokens.length != pricesUSD.length) revert LenMismatch();
        for (uint256 i = 0; i < tokens.length; i++) _updateTokenPrice(tokens[i], pricesUSD[i]);
    }
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

    function setRevenueParams(uint256 _min, uint256 _disc, uint256 _maxPool, uint256 _minWeight, uint256 _maxJump) external onlyOwner {
        require(_disc <= BPS_BASE && _maxPool <= BPS_BASE && _minWeight > 0 && _minWeight <= BPS_BASE && _maxJump <= BPS_BASE, "bad params");
        minBribeUSDPerEpoch = _min; bribeDiscountBPS = _disc; maxPoolAllocationBPS = _maxPool; minVoteWeightBPS = _minWeight; maxPriceChangeBps = _maxJump;
    }

    function setKeeper(address who, bool status) external onlyOwner { keepers[who] = status; emit KeeperSet(who, status); }
    function setPriceUpdater(address who, bool status) external onlyOwner { priceUpdaters[who] = status; emit PriceUpdaterSet(who, status); }
    function setRevenueCalculator(address calc) external onlyOwner { revenueCalculator = calc; emit RevenueCalculatorSet(calc); }
    function updatePoolBaseRevenue(address pool, uint256 revenueUSD) external onlyKeeper {
        if (!poolData[pool].isActive) revert PoolNotActive();
        poolData[pool].baseRevenueUSD = revenueUSD;
    }

    function pause() external onlyOwner { _pause(); }
    function unpause() external onlyOwner { _unpause(); }

    function emergencyWithdraw(address token, uint256 amount) external onlyOwner nonReentrant {
        if (token == address(0)) {
            (bool ok, ) = owner().call{value: amount}(""); require(ok, "ETH transfer failed");
        } else {
            IERC20(token).safeTransfer(owner(), amount);
        }
    }

    /* ------------------------------- Views ------------------------------ */

    function getActivePools() external view returns (address[] memory) { return activePools; }
    function getPoolBribes(address pool) external view returns (Bribe[] memory) { return poolData[pool].bribes; }
    function getPoolInfo(address pool) external view returns (bool, uint256, uint256, uint256, address) {
        PoolData storage d = poolData[pool];
        return (d.isActive, d.totalBribesUSD, d.baseRevenueUSD, d.lastRevenueUSD, d.gauge);
    }

    function getOptimalAllocation() external view returns (address[] memory pools, uint256[] memory weightsBps) {
        return _calculateOptimalAllocation();
    }

    function canExecuteVotes() external view returns (bool) {
        if (epochData[currentEpoch].executed) return false;
        return _canVoteByVoterClock(); // ignore local window for readiness checks
    }

    function timeUntilNextEpoch() external view returns (uint256) {
        uint256 end = epochStartTime + EPOCH_DURATION;
        return (block.timestamp >= end) ? 0 : (end - block.timestamp);
    }

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
    function getUnclaimedBribesUSDCurrent(address pool) external view returns (uint256) {
        return this.getUnclaimedBribesUSD(pool, currentEpoch);
    }

    function _getCurrentEpochBribesUSD() private view returns (uint256 total) {
        for (uint256 i = 0; i < activePools.length; i++) total += poolData[activePools[i]].totalBribesUSD;
    }

    receive() external payable {}
}
