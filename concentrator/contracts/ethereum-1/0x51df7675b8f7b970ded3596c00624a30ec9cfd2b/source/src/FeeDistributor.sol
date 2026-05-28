// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IVlSDT} from "src/interfaces/IVlSDT.sol";

/**
 * @title FeeDistributor
 * @notice Epoch-based fee distribution to vlSDT holders using checkpointed balances
 * @dev Single token per contract. Distributes rewards based on vlSDT balance at epoch start.
 *
 *      Epoch definition:
 *      - An epoch is a 7-day period aligned with Unix epoch (starts Thursday 00:00 UTC)
 *
 *      Key design decisions:
 *      - First-claim optimization: uses vlSDT checkpoints to skip epochs before user's first stake
 *      - 50 epoch max per claim: prevents gas limit issues for users who haven't claimed in a long time
 *      - 24h checkpoint deadline: auto-checkpoints during claims if deadline passed
 *      - The admin kill switch is irreversible.
 *
 *      Start time:
 *      - START_TIME is set to the next epoch boundary at deployment (rounded up from block.timestamp)
 *      - This ensures a clean start with no partial first epoch
 *      - Example: Deploy on Monday → START_TIME = next Thursday 00:00 UTC
 *
 *      Reward eligibility:
 *      - Users earn rewards starting from the first FULL epoch after staking
 *      - Example: User stakes on Monday. Epoch boundary is Thursday 00:00 UTC.
 *        The user will NOT earn rewards for the current epoch (started last Thursday).
 *        The user will START earning rewards from the next Thursday onwards.
 *      - This is because rewards are distributed based on balances at epoch START,
 *        and a mid-epoch staker had zero balance at that epoch's start.
 *
 *      Known limitations:
 *      - Zero supply epochs: Tokens distributed to epochs where totalSupply == 0 are
 *        permanently unrecoverable. The deposit() function requires totalSupply > 0 at
 *        call time to prevent the most common case (depositing when no one is staked).
 *        However, this does NOT fully prevent the issue: if totalSupply drops to zero
 *        AFTER a deposit but BEFORE checkpoint catches up, tokens allocated to those
 *        zero-supply epochs via retroactive distribution will still be stuck.
 *        Example: deposit at epoch 3 with totalSupply=1000, but epochs 1-2 had zero supply.
 *        The checkpoint distributes tokens retroactively to epochs 1-2, which are stuck.
 *        The kill() function can recover remaining tokens in emergency.
 *      - Checkpoint frequency: The _checkpointToken() loop processes max 20 epochs per call.
 *        If more than 20 epochs need processing, call checkpointToken() multiple times.
 *        The function correctly resumes from where it left off.
 *      - claimable() vs claim(): The claimable() view function does not trigger a checkpoint,
 *        so it may return less than what claim() will actually transfer if there are
 *        un-checkpointed tokens in the contract.
 */
contract FeeDistributor is Ownable2Step, ReentrancyGuard {
    using SafeERC20 for IERC20;

    ////////////////////////////////////////////////////////////////
    /// --- CONSTANTS
    ////////////////////////////////////////////////////////////////

    /// @notice Duration of one epoch in seconds (7 days, aligned with Unix epoch)
    uint256 public constant EPOCH_DURATION = 7 days;

    /// @notice Maximum epochs to process in a single claim call
    /// @dev Prevents out-of-gas for users who haven't claimed in a long time
    uint256 public constant MAX_CLAIM_EPOCHS = 50;

    /// @notice Maximum epochs to process in a single token checkpoint
    /// @dev Safety bound for _checkpointToken loop
    uint256 public constant MAX_CHECKPOINT_EPOCHS = 20;

    /// @notice Time after which anyone can trigger auto-checkpoint during claims
    /// @dev If lastTokenTime + deadline < block.timestamp, claim() will checkpoint
    uint256 public constant TOKEN_CHECKPOINT_DEADLINE = 1 days;

    /// @notice vlSDT contract for balance queries
    IVlSDT public immutable VLSDT;

    /// @notice Token being distributed as rewards
    IERC20 public immutable REWARD_TOKEN;

    /// @notice Timestamp when distribution starts (next epoch boundary at deployment)
    uint256 public immutable START_TIME;

    ////////////////////////////////////////////////////////////////
    /// --- STORAGE
    ////////////////////////////////////////////////////////////////

    /// @notice Reward tokens available for distribution per epoch
    /// @dev Key is epoch start timestamp (Thursday 00:00 UTC)
    mapping(uint256 epoch => uint256 tokens) public tokensPerEpoch;

    /// @notice Last time token checkpoint was called
    uint256 public lastTokenTime;

    /// @notice Token balance at last checkpoint (to compute newly received tokens)
    uint256 public tokenLastBalance;

    /// @notice Last claimed epoch timestamp per user
    mapping(address user => uint256 epoch) public lastClaimedEpoch;

    /// @notice Address to receive tokens on emergency recovery
    address public emergencyAddress;

    /// @notice Whether the contract is killed (claims disabled)
    bool public isKilled;

    ///////////////////////////////////////////////////////////////
    /// --- EVENTS / ERRORS / MODIFIERS / CONSTRUCTOR
    ///////////////////////////////////////////////////////////////

    event CheckpointToken(uint256 indexed time, uint256 tokens);
    event Claimed(address indexed user, address indexed receiver, uint256 amount, uint256 claimUpToEpoch);
    event Deposited(address indexed depositor, uint256 amount);
    event Recovered(address indexed emergencyAddress, address indexed token, uint256 amount);
    event EmergencyAddressUpdated(address indexed newEmergencyAddress);
    event Killed();

    error ContractKilled();
    error ZeroAddress();
    error ZeroAmount();
    error CannotRecoverRewardToken();
    error NoStakers();
    error OnlyOperator();

    /// @notice Modifier to check if the caller is an authorized operator in the vlSDT galaxy of contracts
    modifier onlyOperator() {
        require(VLSDT.isOperator(msg.sender), OnlyOperator());
        _;
    }

    /**
     * @dev START_TIME is automatically set to the next epoch boundary (rounded up from block.timestamp).
     *      This ensures distribution starts at a clean epoch boundary with no partial first epoch.
     * @param _vlSDT vlSDT contract address
     * @param _rewardToken Token to distribute
     * @param _owner Owner address
     * @param _emergencyAddress Address for emergency token recovery
     */
    constructor(address _vlSDT, address _rewardToken, address _owner, address _emergencyAddress) Ownable(_owner) {
        require(_vlSDT != address(0), ZeroAddress());
        require(_rewardToken != address(0), ZeroAddress());
        require(_emergencyAddress != address(0), ZeroAddress());

        uint256 startTime = _roundUpToEpoch(block.timestamp);
        lastTokenTime = startTime;
        emergencyAddress = _emergencyAddress;

        START_TIME = startTime;
        VLSDT = IVlSDT(_vlSDT);
        REWARD_TOKEN = IERC20(_rewardToken);
    }

    modifier whenNotKilled() {
        require(!isKilled, ContractKilled());
        _;
    }

    ///////////////////////////////////////////////////////////////
    /// --- DEPOSITS
    ///////////////////////////////////////////////////////////////

    /**
     * @notice Deposit reward tokens and checkpoint
     * @dev Reverts if no stakers exist (totalSupply == 0) to prevent obvious fund loss.
     *      Note: This check only validates current state. It does NOT prevent tokens from
     *      being distributed to past epochs that had zero supply (see "Known limitations").
     *      For maximum safety, deposit frequently (at least once per epoch) to minimize
     *      retroactive distribution across potentially zero-supply epochs.
     *
     *      Fee-on-transfer tokens will report the wrong amount deposited off-chain due
     *      to the non-accounting of the fees in the Deposited event. They must be avoided.
     * @param amount Amount of reward tokens to deposit
     */
    function deposit(uint256 amount) external nonReentrant whenNotKilled {
        require(amount != 0, ZeroAmount());
        require(VLSDT.totalSupply() > 0, NoStakers());

        REWARD_TOKEN.safeTransferFrom(msg.sender, address(this), amount);
        _checkpointToken();
        emit Deposited(msg.sender, amount);
    }

    ////////////////////////////////////////////////////////////////
    /// --- CLAIMS
    ////////////////////////////////////////////////////////////////

    /**
     * @notice Claim accumulated rewards for the caller
     * @dev Iterates through unclaimed epochs (max MAX_CLAIM_EPOCHS), computes share, transfers total.
     *      Auto-checkpoints if TOKEN_CHECKPOINT_DEADLINE has passed since last checkpoint.
     * @return amount Total tokens claimed
     */
    function claim() external nonReentrant whenNotKilled returns (uint256 amount) {
        require(msg.sender != address(0), ZeroAddress());
        amount = _claim(msg.sender, msg.sender);
    }

    /**
     * @notice Claim accumulated rewards for a specific user
     * @dev Only callable by operators.
     * @param user Address to claim for
     * @param receiver Address to receive the tokens
     * @return amount Total tokens claimed
     */
    function claim(address user, address receiver)
        external
        onlyOperator
        nonReentrant
        whenNotKilled
        returns (uint256 amount)
    {
        require(user != address(0), ZeroAddress());
        require(receiver != address(0), ZeroAddress());
        amount = _claim(user, receiver);
    }

    /**
     * @notice Internal claim logic for a single user
     * @dev Computes claimable amount, updates state, transfers tokens.
     * @param user Address to claim for
     * @param receiver Address to receive the tokens
     * @return amount Tokens claimed
     */
    function _claim(address user, address receiver) internal returns (uint256 amount) {
        // Auto-checkpoint if deadline passed
        if (block.timestamp > lastTokenTime + TOKEN_CHECKPOINT_DEADLINE) _checkpointToken();

        uint256 lastProcessedEpoch;
        (amount, lastProcessedEpoch) = _claimable(user);
        if (lastProcessedEpoch == 0) return 0;

        lastClaimedEpoch[user] = lastProcessedEpoch;

        if (amount > 0) {
            tokenLastBalance -= amount;
            REWARD_TOKEN.safeTransfer(receiver, amount);
        }

        emit Claimed(user, receiver, amount, lastProcessedEpoch);
    }

    /**
     * @notice Calculate claimable amount for a user without claiming
     * @dev Queries vlSDT directly for balances and total supply.
     *      Note: Does not account for pending token checkpoint.
     * @param user Address to check
     * @return amount Claimable tokens
     */
    function claimable(address user) external view returns (uint256 amount) {
        (amount,) = _claimable(user);
    }

    /**
     * @notice Calculate claimable amount and last processed epoch for a user
     * @dev Iterates through unclaimed epochs, computes proportional share.
     *      Skips epochs where user has no balance or total supply is zero.
     *      Limited to MAX_CLAIM_EPOCHS per call to prevent gas issues.
     * @param user Address to calculate for
     * @return amount Claimable tokens
     * @return lastProcessedEpoch The last epoch that was processed (0 if none)
     */
    function _claimable(address user) internal view returns (uint256 amount, uint256 lastProcessedEpoch) {
        uint256 startEpoch = _getStartEpoch(user);
        if (startEpoch == 0) return (0, 0); // User has no checkpoints in vlSDT

        // Determine end epoch: lastTokenTime rounded down to epoch
        // We can only claim for epochs where tokens have been fully checkpointed
        uint256 endEpoch = _roundDownToEpoch(lastTokenTime);
        if (startEpoch >= endEpoch) return (0, 0);

        // Iterate through epochs
        // Only distribute if both user has balance and total supply > 0
        uint256 epochCursor = startEpoch;
        uint256 epochsProcessed;
        while (epochCursor < endEpoch && epochsProcessed < MAX_CLAIM_EPOCHS) {
            uint256 epoch = epochCursor;
            unchecked {
                epochCursor += EPOCH_DURATION;
                ++epochsProcessed;
            }

            uint256 epochTokens = tokensPerEpoch[epoch];
            if (epochTokens == 0) continue;

            uint256 userBalance = VLSDT.balanceOfAt(user, epoch);
            if (userBalance == 0) continue;

            uint256 totalSupply = VLSDT.totalSupplyAt(epoch); // user balance guarantees non-zero supply
            amount += (userBalance * epochTokens) / totalSupply;
        }

        lastProcessedEpoch = epochCursor - EPOCH_DURATION;
    }

    ///////////////////////////////////////////////////////////////
    /// --- CHECKPOINTS
    ///////////////////////////////////////////////////////////////

    /**
     * @notice Checkpoint newly received tokens into epoch buckets
     * @dev Distributes tokens received since last checkpoint proportionally
     *      across epochs based on time elapsed. Can be called by anyone.
     *      Limited to MAX_CHECKPOINT_EPOCHS iterations per call.
     */
    function checkpointToken() external whenNotKilled {
        _checkpointToken();
    }

    /**
     * @notice Internal token checkpoint logic
     * @dev Distributes received tokens across epochs proportionally by time elapsed.
     *      Limited to MAX_CHECKPOINT_EPOCHS iterations. If more epochs need processing,
     *      call checkpointToken() again.
     *
     *      Distribution logic:
     *      - Tokens are split proportionally based on time spent in each epoch
     *      - Example: if 100 tokens received over 10 days spanning 2 epochs (3 days + 7 days),
     *        epoch 1 gets 30 tokens, epoch 2 gets 70 tokens
     */
    function _checkpointToken() internal {
        // Calculate tokens received since last checkpoint
        uint256 tokenBalance = REWARD_TOKEN.balanceOf(address(this));
        uint256 toDistribute = tokenBalance - tokenLastBalance;

        if (toDistribute == 0) {
            lastTokenTime = block.timestamp;
            return;
        }

        // Distribute across epochs
        uint256 time = lastTokenTime;
        uint256 sinceLast = block.timestamp - time;
        uint256 thisEpoch = _roundDownToEpoch(time);
        uint256 distributed;

        for (uint256 i; i < MAX_CHECKPOINT_EPOCHS; i++) {
            uint256 nextEpoch = thisEpoch + EPOCH_DURATION;
            uint256 epochShare;

            if (block.timestamp < nextEpoch) {
                // Current epoch (partial): allocate remaining time's share
                if (sinceLast == 0 && block.timestamp == time) {
                    // Edge case: called twice in same block
                    epochShare = toDistribute;
                } else {
                    epochShare = (toDistribute * (block.timestamp - time)) / sinceLast;
                }
                tokensPerEpoch[thisEpoch] += epochShare;
                distributed += epochShare;

                time = block.timestamp; // Mark that we reached current time
                break;
            } else {
                // Past epoch: allocate that epoch's time share
                if (sinceLast == 0 && nextEpoch == time) {
                    // Edge case: called twice in same block exactly at epoch boundary
                    epochShare = toDistribute;
                } else {
                    epochShare = (toDistribute * (nextEpoch - time)) / sinceLast;
                }
                tokensPerEpoch[thisEpoch] += epochShare;
                distributed += epochShare;
            }

            time = nextEpoch;
            thisEpoch = nextEpoch;
        }

        // Only account for what was actually distributed (not the full balance).
        // If the loop hit MAX_CHECKPOINT_EPOCHS, the remainder stays available
        // for the next call via toDistribute = balance - tokenLastBalance.
        tokenLastBalance += distributed;
        lastTokenTime = time;
        emit CheckpointToken(block.timestamp, distributed);
    }

    ////////////////////////////////////////////////////////////////
    /// --- EPOCH MANAGEMENT
    ////////////////////////////////////////////////////////////////

    /**
     * @notice Get the current epoch start timestamp (Thursday 00:00 UTC)
     * @return timestamp Epoch start timestamp
     */
    function currentEpoch() external view returns (uint256 timestamp) {
        timestamp = _roundDownToEpoch(block.timestamp);
    }

    /**
     * @notice Get the epoch start timestamp for a given timestamp
     * @param _timestamp Timestamp to get the epoch for
     * @return timestamp Epoch start timestamp
     */
    function epochAt(uint256 _timestamp) external pure returns (uint256 timestamp) {
        timestamp = _roundDownToEpoch(_timestamp);
    }

    /**
     * @notice Get tokens distributed for a specific epoch
     * @param epoch Epoch start timestamp (must be aligned to epoch boundary)
     * @dev Returns 0 if the epoch is not aligned to the epoch boundary.
     * @return tokens Tokens allocated for that epoch
     */
    function getTokensForEpoch(uint256 epoch) external view returns (uint256 tokens) {
        tokens = tokensPerEpoch[epoch];
    }

    /**
     * @notice Determine the starting epoch for a user's claim
     * @dev First-time claimers: find their first vlSDT checkpoint, round up to next epoch.
     *      Returning claimers: continue from lastClaimedEpoch + EPOCH_DURATION.
     * @param user Address to check
     * @return startEpoch The epoch timestamp to start claiming from, or 0 if user has no checkpoints
     */
    function _getStartEpoch(address user) internal view returns (uint256 startEpoch) {
        uint256 lastClaimed = lastClaimedEpoch[user];

        if (lastClaimed == 0) {
            // First-time claimer: find their first checkpoint in vlSDT
            uint256 numCheckpoints = VLSDT.numCheckpoints(user);
            if (numCheckpoints == 0) return 0; // User has never staked

            // Round UP timestamp of user's first checkpoint to next epoch boundary
            // (user earns from first full epoch after staking)
            (uint48 firstCheckpointTime,) = VLSDT.checkpoints(user, 0);
            startEpoch = _roundUpToEpoch(uint256(firstCheckpointTime));

            // Clamp to START_TIME (can't claim before distribution started)
            if (startEpoch < START_TIME) startEpoch = START_TIME;
        } else {
            // Returning claimer: continue from next epoch after last claimed
            startEpoch = lastClaimed + EPOCH_DURATION;
        }
    }

    /**
     * @notice Round timestamp down to epoch boundary (Thursday 00:00 UTC)
     * @param timestamp Timestamp to round
     * @return Rounded timestamp
     */
    function _roundDownToEpoch(uint256 timestamp) internal pure returns (uint256) {
        return (timestamp / EPOCH_DURATION) * EPOCH_DURATION;
    }

    /**
     * @notice Round timestamp up to next epoch boundary (Thursday 00:00 UTC)
     * @dev If timestamp is already on a boundary, returns that boundary
     * @param timestamp Timestamp to round
     * @return Rounded timestamp
     */
    function _roundUpToEpoch(uint256 timestamp) internal pure returns (uint256) {
        return ((timestamp + EPOCH_DURATION - 1) / EPOCH_DURATION) * EPOCH_DURATION;
    }

    ////////////////////////////////////////////////////////////////
    /// --- GOVERNANCE
    ////////////////////////////////////////////////////////////////

    /**
     * @notice Kill the contract in emergency
     * @dev Stops all claims and deposits. Sends remaining reward tokens to emergencyAddress.
     *      Cannot be undone.
     */
    function kill() external onlyOwner {
        isKilled = true;

        // Transfer all remaining reward tokens to emergency return
        uint256 balance = REWARD_TOKEN.balanceOf(address(this));
        if (balance > 0) REWARD_TOKEN.safeTransfer(emergencyAddress, balance);

        emit Killed();
    }

    /**
     * @notice Recover accidentally sent tokens (not the reward token)
     * @dev Sends full balance of the token to emergencyAddress
     * @param token Token to recover
     */
    function recoverToken(address token) external onlyOwner {
        require(token != address(REWARD_TOKEN), CannotRecoverRewardToken());

        uint256 balance = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransfer(emergencyAddress, balance);

        emit Recovered(emergencyAddress, token, balance);
    }

    /**
     * @notice Update emergency return address
     * @param _emergencyAddress New emergency return address
     */
    function setEmergencyAddress(address _emergencyAddress) external onlyOwner {
        require(_emergencyAddress != address(0), ZeroAddress());
        emergencyAddress = _emergencyAddress;
        emit EmergencyAddressUpdated(_emergencyAddress);
    }
}
