// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@chainlink/contracts/src/v0.8/vrf/dev/VRFConsumerBaseV2Plus.sol";
import "@chainlink/contracts/src/v0.8/vrf/dev/libraries/VRFV2PlusClient.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IBean {
    function mint(address to, uint256 amount) external;
    function burn(uint256 amount) external;
    function totalMinted() external view returns (uint256);
}

interface ITreasury {
    function receiveVault() external payable;
}


contract GridMining is VRFConsumerBaseV2Plus, ReentrancyGuard {
    // ============ Constants ============

    uint256 public constant ROUND_DURATION = 60 seconds;
    uint256 public constant MIN_DEPLOY = 0.0000025 ether;
    uint256 public constant GRID_SIZE = 25;

    uint256 public constant ADMIN_FEE_BPS = 100;      // 1%
    uint256 public constant VAULT_FEE_BPS = 1000;     // 10%
    uint256 public constant ROASTING_FEE_BPS = 1000;  // 10%
    uint256 public constant BPS_DENOMINATOR = 10000;

    uint256 public constant ONE_BEAN = 1e18;
    uint256 public constant MIN_BEANPOT_ACCUMULATION = ONE_BEAN / 10;
    uint256 public constant MAX_BEANPOT_ACCUMULATION = ONE_BEAN;
    uint256 public beanpotAccumulation = ONE_BEAN / 10 * 3;
    uint256 public constant BEANPOT_CHANCE = 777;
    uint256 public constant MAX_SUPPLY = 3_000_000 * ONE_BEAN;

    // ============ VRF Config ============

    uint256 public vrfSubscriptionId;
    bytes32 public vrfKeyHash;
    uint32 public vrfCallbackGasLimit;
    uint16 public vrfRequestConfirmations;
    uint32 public vrfNumWords = 3;  // winning block, split/single, beanpot

    // ============ External Contracts ============

    IBean public bean;
    ITreasury public treasury;
    address public feeCollector;
    address public autoMiner;

    // ============ Board State ============

    uint64 public currentRoundId;
    bool public gameStarted;
    uint256 public maxMinersForSingleWinner = 2000;

    // ============ Round State ============

    struct Round {
        uint256 startTime;
        uint256 endTime;
        uint256[25] deployed;           // ETH per block
        uint256 totalDeployed;
        uint256 totalWinnings;          // After fees, for winners to claim
        uint256 winnersDeployed;        // Amount on winning block
        uint8 winningBlock;
        address topMiner;               // Single winner address, or address(0) if split
        uint256 topMinerReward;         // BEAN reward amount
        uint256 beanpotAmount;          // Beanpot payout if triggered
        uint256 vrfRequestId;
        uint256 topMinerSeed;
        bool settled;
        uint256 minerCount;             // Number of unique deployers this round
    }

    struct FeeCalc {
        uint256 adminFee;
        uint256 vaultAmount;
        uint256 totalWinnings;
    }

    mapping(uint64 => Round) public rounds;
    mapping(uint256 => uint64) public vrfRequestToRound;

    // ============ Miner State ============

    struct Miner {
        uint256 deployedMask;           // Bitmask of blocks deployed to
        uint256 amountPerBlock;         // ETH per block
        bool checkpointed;
    }

    // roundId => user => Miner
    mapping(uint64 => mapping(address => Miner)) public miners;

    // roundId => deployIndex => deployer address
    mapping(uint64 => mapping(uint256 => address)) internal minerByIndex;

    // ============ Global Rewards State ============

    uint256 public beanpotPool;

    // Roasting fee redistribution
    uint256 public totalUnclaimed;                              
    uint256 public accRoastingPerUnclaimed;                     
    mapping(address => uint256) public userRoastingDebt;
    mapping(address => uint256) public userUnclaimedBEAN;
    mapping(address => uint256) public userUnclaimedETH;
    mapping(address => uint256) public userRoastedBEAN;
    mapping(address => uint64) public userLastRound;

    // ============ Events ============

    event GameStarted(uint64 indexed roundId, uint256 startTime, uint256 endTime);
    event Deployed(uint64 indexed roundId, address indexed user, uint256 amountPerBlock, uint256 blockMask, uint256 totalAmount);
    event ResetRequested(uint64 indexed roundId, uint256 vrfRequestId);
    event RoundSettled(
        uint64 indexed roundId,
        uint8 winningBlock,
        address topMiner,
        uint256 totalWinnings,
        uint256 topMinerReward,
        uint256 beanpotAmount,
        bool isSplit,
        uint256 topMinerSeed,
        uint256 winnersDeployed
    );
    event DeployedFor(
        uint64 indexed roundId,
        address indexed user,
        address indexed executor,
        uint256 amountPerBlock,
        uint256 blockMask,
        uint256 totalAmount
    );
    event AutoMinerUpdated(address indexed oldAutoMiner, address indexed newAutoMiner);
    event Checkpointed(uint64 indexed roundId, address indexed user, uint256 ethReward, uint256 beanReward);
    event ClaimedETH(address indexed user, uint256 amount);
    event ClaimedBEAN(address indexed user, uint256 minedBean, uint256 roastedBean, uint256 fee, uint256 net);
    event EmergencyVRFRequested(uint64 indexed roundId, uint256 oldRequestId, uint256 newRequestId);
    event BeanpotAccumulationUpdated(uint256 oldValue, uint256 newValue);

    // ============ Errors ============

    error GameNotStarted();
    error GameAlreadyStarted();
    error RoundNotActive();
    error RoundNotEnded();
    error RoundAlreadySettled();
    error RoundNotSettled();
    error AlreadyCheckpointed();
    error InvalidBlockId();
    error InsufficientDeployAmount();
    error NoBlocksSelected();
    error AlreadyDeployedThisRound();
    error NothingToClaim();
    error TransferFailed();
    error InvalidVRFRequest();
    error MaxSupplyReached();
    error VRFNotConfigured();
    error VRFAlreadyRequested();
    error NotAutoMiner();
    error MinimumThresholdTooLow();
    error EmergencyTooEarly();
    error InvalidBeanpotAccumulation();

    // ============ Constructor ============

    constructor(
        address _vrfCoordinator,
        address _bean,
        address _treasury,
        address _feeCollector
    ) VRFConsumerBaseV2Plus(_vrfCoordinator) {
        if (_treasury == address(0)) revert ZeroAddress();
        if (_feeCollector == address(0)) revert ZeroAddress();
        if (_bean == address(0)) revert ZeroAddress();

        bean = IBean(_bean);
        treasury = ITreasury(_treasury);
        feeCollector = _feeCollector;
    }

    // ============ Admin Functions ============

    function setVRFConfig(
        uint256 _subscriptionId,
        bytes32 _keyHash,
        uint32 _callbackGasLimit,
        uint16 _requestConfirmations
    ) external onlyOwner {
        vrfSubscriptionId = _subscriptionId;
        vrfKeyHash = _keyHash;
        vrfCallbackGasLimit = _callbackGasLimit;
        vrfRequestConfirmations = _requestConfirmations;
    }

    function setFeeCollector(address _feeCollector) external onlyOwner {
        if (_feeCollector == address(0)) revert ZeroAddress();
        feeCollector = _feeCollector;
    }

    function setTreasury(address _treasury) external onlyOwner {
        if (_treasury == address(0)) revert ZeroAddress();
        treasury = ITreasury(_treasury);
    }

    function setAutoMiner(address _autoMiner) external onlyOwner {
        address old = autoMiner;
        autoMiner = _autoMiner;
        emit AutoMinerUpdated(old, _autoMiner);
    }

    function setBeanpotAccumulation(uint256 _accumulation) external onlyOwner {
        if (_accumulation < MIN_BEANPOT_ACCUMULATION || _accumulation > MAX_BEANPOT_ACCUMULATION) {
            revert InvalidBeanpotAccumulation();
        }
        uint256 oldValue = beanpotAccumulation;
        beanpotAccumulation = _accumulation;
        emit BeanpotAccumulationUpdated(oldValue, _accumulation);
    }

    function setMaxMinersForSingleWinner(uint256 _max) external onlyOwner {
        if (_max < 500) revert MinimumThresholdTooLow();
        maxMinersForSingleWinner = _max;
    }

    function startFirstRound() external onlyOwner {
        if (vrfSubscriptionId == 0) revert VRFNotConfigured();
        if (gameStarted) revert GameAlreadyStarted();

        gameStarted = true;
        currentRoundId = 1;

        Round storage round = rounds[1];
        round.startTime = block.timestamp;
        round.endTime = block.timestamp + ROUND_DURATION;

        emit GameStarted(1, round.startTime, round.endTime);
    }

    // ============ Core Game Functions ============

    /**
     * @notice Deploy ETH to selected blocks in the current round
     * @param blockIds Array of block IDs (0-24) to deploy to
     * @dev Deploys msg.value / blockIds.length to each selected block
     */
    function deploy(uint8[] calldata blockIds) external payable nonReentrant {
        if (!gameStarted) revert GameNotStarted();

        // Auto-checkpoint previous round
        _autoCheckpointPrevious(msg.sender);

        Round storage round = rounds[currentRoundId];

        // Check round is active
        if (block.timestamp >= round.endTime) revert RoundNotActive();

        uint256 numBlocks = blockIds.length;
        if (numBlocks == 0) revert NoBlocksSelected();

        uint256 amountPerBlock = msg.value / numBlocks;
        if (amountPerBlock < MIN_DEPLOY) revert InsufficientDeployAmount();

        Miner storage miner = miners[currentRoundId][msg.sender];

        // One deploy per round
        if (miner.deployedMask != 0) revert AlreadyDeployedThisRound();

        // Assign deploy index for lazy top miner resolution
        minerByIndex[currentRoundId][round.minerCount] = msg.sender;
        round.minerCount++;

        uint256 blockMask;
        uint256 totalAmount;

        for (uint256 i; i < numBlocks; ) {
            uint8 blockId = blockIds[i];
            if (blockId >= GRID_SIZE) revert InvalidBlockId();

            uint256 bit = 1 << blockId;
            if ((blockMask & bit) != 0) revert InvalidBlockId();
            blockMask |= bit;

            uint256 currentDeployed = round.deployed[blockId];
            round.deployed[blockId] = currentDeployed + amountPerBlock;

            unchecked {
                totalAmount += amountPerBlock;
                ++i;
            }
        }

        // Write miner state
        miner.deployedMask = blockMask;
        miner.amountPerBlock = amountPerBlock;

        round.totalDeployed += totalAmount;

        // Track user's last played round
        userLastRound[msg.sender] = currentRoundId;

        emit Deployed(currentRoundId, msg.sender, amountPerBlock, blockMask, totalAmount);
    }

    /**
    * @notice Deploy ETH to selected blocks on behalf of a user (AutoMiner only)
    * @param user The address to credit deposits to
    * @param blockIds Array of block IDs (0-24) to deploy to
    * @dev Deploys msg.value / blockIds.length to each selected block
    */
    function deployFor(address user, uint8[] calldata blockIds) external payable nonReentrant {
        if (msg.sender != autoMiner) revert NotAutoMiner();
        if (user == address(0)) revert ZeroAddress();
        if (!gameStarted) revert GameNotStarted();

        // Auto-checkpoint previous round for the USER
        _autoCheckpointPrevious(user);

        Round storage round = rounds[currentRoundId];

        // Check round is active
        if (block.timestamp >= round.endTime) revert RoundNotActive();

        uint256 numBlocks = blockIds.length;
        if (numBlocks == 0) revert NoBlocksSelected();

        uint256 amountPerBlock = msg.value / numBlocks;
        if (amountPerBlock < MIN_DEPLOY) revert InsufficientDeployAmount();

        // Use USER's miner state
        Miner storage miner = miners[currentRoundId][user];

        // One deploy per round
        if (miner.deployedMask != 0) revert AlreadyDeployedThisRound();

        // Assign deploy index for lazy top miner resolution
        minerByIndex[currentRoundId][round.minerCount] = user;
        round.minerCount++;

        uint256 blockMask;
        uint256 totalAmount;

        for (uint256 i; i < numBlocks; ) {
            uint8 blockId = blockIds[i];
            if (blockId >= GRID_SIZE) revert InvalidBlockId();

            uint256 bit = 1 << blockId;
            if ((blockMask & bit) != 0) revert InvalidBlockId();
            blockMask |= bit;

            uint256 currentDeployed = round.deployed[blockId];
            round.deployed[blockId] = currentDeployed + amountPerBlock;

            unchecked {
                totalAmount += amountPerBlock;
                ++i;
            }
        }

        // Write miner state
        miner.deployedMask = blockMask;
        miner.amountPerBlock = amountPerBlock;

        round.totalDeployed += totalAmount;

        // Track USER's last played round
        userLastRound[user] = currentRoundId;

        emit DeployedFor(currentRoundId, user, msg.sender, amountPerBlock, blockMask, totalAmount);
    }

    /**
     * @notice End the current round and request VRF
     * @dev Anyone can call this after round ends
     */
    function reset() external nonReentrant {
        if (!gameStarted) revert GameNotStarted();

        Round storage round = rounds[currentRoundId];

        if (block.timestamp < round.endTime) revert RoundNotEnded();
        if (round.settled) revert RoundAlreadySettled();
        if (round.vrfRequestId != 0) revert VRFAlreadyRequested();

        // Handle empty round (no one deployed)
        if (round.totalDeployed == 0) {
            round.settled = true;
            _startNextRound();
            return;
        }

        // Request VRF
        uint256 requestId = s_vrfCoordinator.requestRandomWords(
            VRFV2PlusClient.RandomWordsRequest({
                keyHash: vrfKeyHash,
                subId: vrfSubscriptionId,
                requestConfirmations: vrfRequestConfirmations,
                callbackGasLimit: vrfCallbackGasLimit,
                numWords: vrfNumWords,
                extraArgs: VRFV2PlusClient._argsToBytes(
                    VRFV2PlusClient.ExtraArgsV1({nativePayment: true})
                )
            })
        );

        round.vrfRequestId = requestId;
        vrfRequestToRound[requestId] = currentRoundId;

        emit ResetRequested(currentRoundId, requestId);
    }

    function fulfillRandomWords(uint256 requestId, uint256[] calldata randomWords) internal override {
        uint64 roundId = vrfRequestToRound[requestId];
        if (roundId == 0) return;

        Round storage round = rounds[roundId];
        if (round.settled) return;

        uint8 winningBlock = uint8(randomWords[0] % GRID_SIZE);
        round.winningBlock = winningBlock;
        round.winnersDeployed = round.deployed[winningBlock];

        if (round.winnersDeployed == 0) {
            _settleNoWinners(roundId, round, winningBlock);
            return;
        }

        FeeCalc memory fees = _calculateSettlementFees(round.totalDeployed, round.winnersDeployed);
        round.totalWinnings = fees.totalWinnings;

        bool isSplit = _processMinting(round, randomWords);

        round.settled = true;

        _safeTransferETH(feeCollector, fees.adminFee);
        treasury.receiveVault{value: fees.vaultAmount}();

        _startNextRound();

        emit RoundSettled(roundId, winningBlock, round.topMiner, round.totalWinnings, round.topMinerReward, round.beanpotAmount, isSplit, round.topMinerSeed, round.winnersDeployed);
    }

    function _settleNoWinners(uint64 roundId, Round storage round, uint8 winningBlock) internal {
        uint256 adminFee = (round.totalDeployed * ADMIN_FEE_BPS) / BPS_DENOMINATOR;
        uint256 vaultAmount = round.totalDeployed - adminFee;

        round.settled = true;

        _safeTransferETH(feeCollector, adminFee);
        treasury.receiveVault{value: vaultAmount}();

        _startNextRound();

        emit RoundSettled(roundId, winningBlock, address(0), 0, 0, 0, false, 0, 0);
    }

    function _calculateSettlementFees(uint256 totalDeployed, uint256 winnersDeployed) internal pure returns (FeeCalc memory) {
        uint256 losersPool = totalDeployed - winnersDeployed;
        uint256 adminFee = (totalDeployed * ADMIN_FEE_BPS) / BPS_DENOMINATOR;
        uint256 losersAdminShare = (losersPool * ADMIN_FEE_BPS) / BPS_DENOMINATOR;
        uint256 losersAfterAdmin = losersPool - losersAdminShare;
        uint256 vaultAmount = (losersAfterAdmin * VAULT_FEE_BPS) / BPS_DENOMINATOR;
        uint256 totalWinnings = losersAfterAdmin - vaultAmount;

        return FeeCalc(adminFee, vaultAmount, totalWinnings);
    }

    function _processMinting(Round storage round, uint256[] calldata randomWords) internal returns (bool isSplit) {
        isSplit = (randomWords[1] % 2 == 0);

        // Cap combined mint to remaining supply — avoid revert near MAX_SUPPLY (V-001)
        uint256 remaining = MAX_SUPPLY - bean.totalMinted();
        uint256 mintAmount = ONE_BEAN > remaining ? remaining : ONE_BEAN;
        remaining -= mintAmount;
        uint256 beanpotMint = beanpotAccumulation > remaining ? remaining : beanpotAccumulation;

        round.topMinerSeed = randomWords[1];
        round.topMinerReward = mintAmount;
        round.topMiner = isSplit ? address(0) : address(1);

        if (randomWords[2] % BEANPOT_CHANCE == 0 && beanpotPool > 0) {
            round.beanpotAmount = beanpotPool;
            beanpotPool = 0;
        }

        beanpotPool += beanpotMint;

        uint256 totalMint = mintAmount + beanpotMint;
        if (totalMint > 0) {
            bean.mint(address(this), totalMint);
        }
    }

    function _checkpoint(uint64 roundId, address user) internal {
        Round storage round = rounds[roundId];
        Miner storage miner = miners[roundId][user];

        // Skip if already checkpointed or round not settled
        if (miner.checkpointed || !round.settled) return;

        uint8 winningBlock = round.winningBlock;

        // Bitmask check
        uint256 userDeployed = (miner.deployedMask & (1 << winningBlock)) != 0
            ? miner.amountPerBlock
            : 0;

        // If user didn't deploy to winning block, mark as checkpointed and return
        if (userDeployed == 0) {
            miner.checkpointed = true;
            emit Checkpointed(roundId, user, 0, 0);
            return;
        }

        uint256 winnersDeployed = round.winnersDeployed;

        // Calculate ETH rewards — proportional share of actual retained ETH
        uint256 ethReward;
        unchecked {
            uint256 claimablePool = _getClaimablePool(round.totalDeployed, winnersDeployed);
            ethReward = (claimablePool * userDeployed) / winnersDeployed;
        }

        // Calculate BEAN rewards
        uint256 beanReward;

        if (round.topMiner == address(0)) {
            beanReward = (round.topMinerReward * userDeployed) / winnersDeployed;
        } else if (round.topMiner == address(1)) {
            if (round.minerCount > maxMinersForSingleWinner) {
                // Too many miners — force proportional split
                round.topMiner = address(0);
                beanReward = (round.topMinerReward * userDeployed) / winnersDeployed;
            } else {
                // Safe to iterate — resolve single winner
                _resolveTopMiner(roundId, round);
                if (round.topMiner == user) {
                    beanReward = round.topMinerReward;
                }
            }
        } else if (round.topMiner == user) {
            beanReward = round.topMinerReward;
        }

        if (round.beanpotAmount != 0) {
            beanReward += (round.beanpotAmount * userDeployed) / winnersDeployed;
        }

        miner.checkpointed = true;

        // Snapshot pending roasted rewards before modifying unclaimed or debt
        // This converts the accumulator delta into userRoastedBEAN before debt is overwritten
        _updateRoastingRewards(user);

        // Conditional unclaimed updates
        if (ethReward != 0) {
            userUnclaimedETH[user] += ethReward;
        }
        if (beanReward != 0) {
            userUnclaimedBEAN[user] += beanReward;
            totalUnclaimed += beanReward;
        }

        // Update user's roasting debt
        userRoastingDebt[user] = accRoastingPerUnclaimed;

        emit Checkpointed(roundId, user, ethReward, beanReward);
    }

    /**
     * @notice Checkpoint rewards for a specific round
     * @param roundId The round to checkpoint
     */
    function checkpoint(uint64 roundId) external nonReentrant {
        _checkpoint(roundId, msg.sender);
    }

    function _autoCheckpointPrevious(address user) internal {
        uint64 lastRound = userLastRound[user];
        if (lastRound == 0) return;
        if (lastRound >= currentRoundId) return;

        _checkpoint(lastRound, user);
    }

    /**
     * @notice Claim accumulated ETH rewards
     */
    function claimETH() external nonReentrant {
        // Auto-checkpoint previous round
        _autoCheckpointPrevious(msg.sender);

        uint256 amount = userUnclaimedETH[msg.sender];
        if (amount == 0) revert NothingToClaim();

        // Safety net: cap at contract balance to prevent revert from rounding dust
        uint256 balance = address(this).balance;
        if (amount > balance) {
            amount = balance;
        }

        userUnclaimedETH[msg.sender] = 0;

        _safeTransferETH(msg.sender, amount);

        emit ClaimedETH(msg.sender, amount);
    }

    /**
     * @notice Claim accumulated BEAN rewards with roasting fee
     */
    function claimBEAN() external nonReentrant {
        // Auto-checkpoint previous round
        _autoCheckpointPrevious(msg.sender);

        // First, update user's roasting bonus
        _updateRoastingRewards(msg.sender);

        uint256 minedBEAN = userUnclaimedBEAN[msg.sender];
        uint256 roastedBEAN = userRoastedBEAN[msg.sender];
        uint256 gross = minedBEAN + roastedBEAN;

        if (gross == 0) revert NothingToClaim();

        // Calculate roasting fee (only on mined, not on roasted bonus)
        uint256 fee = 0;
        if (minedBEAN > 0 && totalUnclaimed > 0) {
            fee = (minedBEAN * ROASTING_FEE_BPS) / BPS_DENOMINATOR;

            // Distribute fee to remaining unclaimed holders
            // Subtract user's unclaimed first since they're claiming
            uint256 remainingUnclaimed = totalUnclaimed - minedBEAN;
            if (remainingUnclaimed > 0) {
                accRoastingPerUnclaimed += (fee * 1e18) / remainingUnclaimed;
            } else {
                // No other unclaimed holders — burn the fee instead of losing it
                bean.burn(fee);
            }
        }

        uint256 net = gross - fee;

        // Safety net: cap at contract BEAN balance to prevent revert from rounding dust
        uint256 contractBeanBalance = IERC20(address(bean)).balanceOf(address(this));
        if (net > contractBeanBalance) {
            net = contractBeanBalance;
        }

        // Update state
        totalUnclaimed -= minedBEAN;
        userUnclaimedBEAN[msg.sender] = 0;
        userRoastedBEAN[msg.sender] = 0;
        userRoastingDebt[msg.sender] = accRoastingPerUnclaimed;

        // Transfer BEAN
        require(IERC20(address(bean)).transfer(msg.sender, net), "Transfer failed");

        emit ClaimedBEAN(msg.sender, minedBEAN, roastedBEAN, fee, net);
    }

    /**
     * @notice Re-request VRF if the original request wasn't fulfilled within 1 hour
     * @dev Anyone can call this after the timeout period
     */
    function emergencyResetVRF() external nonReentrant {
        if (!gameStarted) revert GameNotStarted();

        Round storage round = rounds[currentRoundId];

        // Must have a pending VRF request
        if (round.vrfRequestId == 0) revert InvalidVRFRequest();

        // Must not be already settled
        if (round.settled) revert RoundAlreadySettled();

        // Must be at least 1 hour since round ended
        if (block.timestamp < round.endTime + 1 hours) revert EmergencyTooEarly();

        // Clear old request mapping
        uint256 oldRequestId = round.vrfRequestId;
        delete vrfRequestToRound[oldRequestId];

        // Request new VRF
        uint256 newRequestId = s_vrfCoordinator.requestRandomWords(
            VRFV2PlusClient.RandomWordsRequest({
                keyHash: vrfKeyHash,
                subId: vrfSubscriptionId,
                requestConfirmations: vrfRequestConfirmations,
                callbackGasLimit: vrfCallbackGasLimit,
                numWords: vrfNumWords,
                extraArgs: VRFV2PlusClient._argsToBytes(
                    VRFV2PlusClient.ExtraArgsV1({nativePayment: true})
                )
            })
        );

        // Update mappings
        round.vrfRequestId = newRequestId;
        vrfRequestToRound[newRequestId] = currentRoundId;

        emit EmergencyVRFRequested(currentRoundId, oldRequestId, newRequestId);
    }

    // ============ Internal Functions ============

    function _startNextRound() internal {
        currentRoundId += 1;

        Round storage nextRound = rounds[currentRoundId];
        nextRound.startTime = block.timestamp;
        nextRound.endTime = block.timestamp + ROUND_DURATION;

        emit GameStarted(currentRoundId, nextRound.startTime, nextRound.endTime);
    }


    function _getTopMinerSample(uint64 roundId) internal view returns (uint256) {
        Round storage round = rounds[roundId];

        return round.topMinerSeed % round.winnersDeployed;
    }

    /**
     * @notice Resolve top miner by iterating deployers in index order
     * @dev Called once per single-winner round on first checkpoint. Builds cumulative
     *      ranges on the fly for the winning block and finds whose range contains the sample.
     */
    function _resolveTopMiner(uint64 roundId, Round storage round) internal {
        uint8 winningBlock = round.winningBlock;
        uint256 sample = round.topMinerSeed % round.winnersDeployed;
        uint256 cumulative;
        uint256 count = round.minerCount;

        for (uint256 i; i < count; ) {
            address addr = minerByIndex[roundId][i];
            Miner storage m = miners[roundId][addr];

            if ((m.deployedMask & (1 << winningBlock)) != 0) {
                uint256 amt = m.amountPerBlock;
                if (sample >= cumulative && sample < cumulative + amt) {
                    round.topMiner = addr;
                    return;
                }
                cumulative += amt;
            }

            unchecked { ++i; }
        }
    }

    /// @dev View-only version of _resolveTopMiner for getTotalPendingRewards
    function _viewResolveTopMiner(uint64 roundId, Round storage round) internal view returns (address) {
        uint8 winningBlock = round.winningBlock;
        uint256 sample = round.topMinerSeed % round.winnersDeployed;
        uint256 cumulative;
        uint256 count = round.minerCount;

        for (uint256 i; i < count; ) {
            address addr = minerByIndex[roundId][i];
            Miner storage m = miners[roundId][addr];

            if ((m.deployedMask & (1 << winningBlock)) != 0) {
                uint256 amt = m.amountPerBlock;
                if (sample >= cumulative && sample < cumulative + amt) {
                    return addr;
                }
                cumulative += amt;
            }

            unchecked { ++i; }
        }
        return address(0);
    }

    function _getClaimablePool(uint256 totalDeployed, uint256 winnersDeployed) internal pure returns (uint256) {
        uint256 adminFee = (totalDeployed * ADMIN_FEE_BPS) / BPS_DENOMINATOR;
        uint256 losersPool = totalDeployed - winnersDeployed;
        uint256 losersAdminShare = (losersPool * ADMIN_FEE_BPS) / BPS_DENOMINATOR;
        uint256 vaultAmount = ((losersPool - losersAdminShare) * VAULT_FEE_BPS) / BPS_DENOMINATOR;
        return totalDeployed - adminFee - vaultAmount;
    }

    function _updateRoastingRewards(address user) internal {
        uint256 unclaimed = userUnclaimedBEAN[user];
        if (unclaimed == 0) return;

        uint256 accumulatedPerToken = accRoastingPerUnclaimed - userRoastingDebt[user];
        uint256 pending = (unclaimed * accumulatedPerToken) / 1e18;

        userRoastedBEAN[user] += pending;
        userRoastingDebt[user] = accRoastingPerUnclaimed;
    }

    function _safeTransferETH(address to, uint256 amount) internal {
        (bool success, ) = to.call{value: amount}("");
        if (!success) revert TransferFailed();
    }

    // ============ View Functions ============

    function getRound(uint64 roundId) external view returns (
        uint256 startTime,
        uint256 endTime,
        uint256 totalDeployed,
        uint256 totalWinnings,
        uint8 winningBlock,
        address topMiner,
        uint256 topMinerReward,
        uint256 beanpotAmount,
        bool settled
    ) {
        Round storage round = rounds[roundId];
        return (
            round.startTime,
            round.endTime,
            round.totalDeployed,
            round.totalWinnings,
            round.winningBlock,
            round.topMiner,
            round.topMinerReward,
            round.beanpotAmount,
            round.settled
        );
    }

    function getRoundDeployed(uint64 roundId) external view returns (uint256[25] memory) {
        return rounds[roundId].deployed;
    }

    function getMinerInfo(uint64 roundId, address user) external view returns (
        uint256 deployedMask,
        uint256 amountPerBlock,
        bool checkpointed
    ) {
        Miner storage miner = miners[roundId][user];
        return (miner.deployedMask, miner.amountPerBlock, miner.checkpointed);
    }

    function getPendingETH(address user) external view returns (uint256) {
        return userUnclaimedETH[user];
    }

    function getPendingBEAN(address user) external view returns (uint256 gross, uint256 fee, uint256 net) {
        uint256 minedBEAN = userUnclaimedBEAN[user];

        // Calculate pending roasting bonus
        uint256 accumulatedPerToken = accRoastingPerUnclaimed - userRoastingDebt[user];
        uint256 pendingRoasted = (minedBEAN * accumulatedPerToken) / 1e18;
        uint256 roastedBEAN = userRoastedBEAN[user] + pendingRoasted;

        gross = minedBEAN + roastedBEAN;

        // Fee only on mined
        fee = (minedBEAN * ROASTING_FEE_BPS) / BPS_DENOMINATOR;
        net = gross - fee;
    }

    function getTotalPendingRewards(address user) external view returns (
        uint256 pendingETH,
        uint256 pendingUnroastedBEAN,
        uint256 pendingRoastedBEAN,
        uint64 uncheckpointedRound
    ) {
        // 1. Already checkpointed rewards
        pendingETH = userUnclaimedETH[user];
        pendingUnroastedBEAN = userUnclaimedBEAN[user];

        // 2. Roasting bonus (stored + pending)
        pendingRoastedBEAN = userRoastedBEAN[user]
            + (userUnclaimedBEAN[user] * (accRoastingPerUnclaimed - userRoastingDebt[user])) / 1e18;

        // 3. Check for uncheckpointed round
        uint64 lastRound = userLastRound[user];
        if (lastRound == 0) return (pendingETH, pendingUnroastedBEAN, pendingRoastedBEAN, 0);

        Round storage round = rounds[lastRound];
        Miner storage miner = miners[lastRound][user];

        if (miner.checkpointed || !round.settled) {
            return (pendingETH, pendingUnroastedBEAN, pendingRoastedBEAN, 0);
        }

        // 4. Calculate uncheckpointed rewards
        {
            uint8 winningBlock = round.winningBlock;
            uint256 userDeployed = (miner.deployedMask & (1 << winningBlock)) != 0
                ? miner.amountPerBlock
                : 0;

            if (userDeployed == 0) {
                return (pendingETH, pendingUnroastedBEAN, pendingRoastedBEAN, 0);
            }

            uncheckpointedRound = lastRound;
            uint256 winnersDeployed = round.winnersDeployed;

            // ETH — proportional share of actual retained ETH
            pendingETH += (_getClaimablePool(round.totalDeployed, winnersDeployed) * userDeployed) / winnersDeployed;

            // BEAN (uncheckpointed goes to unroasted)
            uint256 beanReward;

            if (round.topMiner == address(0)) {
                beanReward = (round.topMinerReward * userDeployed) / winnersDeployed;
            } else if (round.topMiner == address(1)) {
                if (round.minerCount > maxMinersForSingleWinner) {
                    // Over cap — would be forced to split on checkpoint
                    beanReward = (round.topMinerReward * userDeployed) / winnersDeployed;
                } else {
                    // Unresolved single winner — iterate deployers to check
                    if (_viewResolveTopMiner(lastRound, round) == user) {
                        beanReward = round.topMinerReward;
                    }
                }
            } else if (round.topMiner == user) {
                beanReward = round.topMinerReward;
            }

            if (round.beanpotAmount != 0) {
                beanReward += (round.beanpotAmount * userDeployed) / winnersDeployed;
            }

            pendingUnroastedBEAN += beanReward;
        }
    }

    function getCurrentRoundInfo() external view returns (
        uint64 roundId,
        uint256 startTime,
        uint256 endTime,
        uint256 totalDeployed,
        uint256 timeRemaining,
        bool isActive
    ) {
        Round storage round = rounds[currentRoundId];

        roundId = currentRoundId;
        startTime = round.startTime;
        endTime = round.endTime;
        totalDeployed = round.totalDeployed;
        timeRemaining = block.timestamp >= round.endTime ? 0 : round.endTime - block.timestamp;
        isActive = gameStarted && block.timestamp < round.endTime && !round.settled;
    }

    // ============ Receive ============

    receive() external payable {}
}
