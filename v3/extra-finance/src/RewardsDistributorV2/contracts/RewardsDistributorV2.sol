// SPDX-License-Identifier: gpl-3.0
pragma solidity ^0.8.0;

import "./external/openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./external/openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./external/openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "./external/openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

import "./interfaces/IveToken.sol";
import {RewardDistributor as LegacyRewardDistributor} from "./RewardsDistributor.sol";

/// @notice This contract is used to distribute rewards to veToken holders
/// @dev This contract Distributes rewards based on user's checkpointed veEXTRA balance.
contract RewardsDistributorV2 is
    Initializable,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20 for IERC20;

    uint256 public constant WEEK = 7 days;
    uint256 public constant REWARD_CHECKPOINT_DEADLINE = 1 days;

    // @todo Update the below addresses
    address public LEGACY_REWARDS_DISTRIBUTOR;
    address public EMERGENCY_RETURN; // Emergency return address
    address public veToken; // veToken contract address
    address public rewardToken; // Reward Token

    uint256 public startTime; // Start time for reward distribution
    uint256 public lastRewardCheckpointTime; // Last time when reward was checkpointed
    uint256 public lastRewardBalance; // Last reward balance of the contract
    uint256 public maxIterations; // Max number of weeks a user can claim rewards in a transaction

    mapping(uint256 => uint256) public rewardsPerWeek; // Reward distributed per week
    mapping(address => uint256) public timeCursorOf; // Timestamp of last user checkpoint
    mapping(uint256 => uint256) public veTokenSupply; // Store the veToken supply per week

    bool public canCheckpointReward; // Checkpoint reward flag
    bool public isKilled;

    event Claimed(
        address indexed _recipient,
        bool _staked,
        uint256 _amount,
        uint256 _lastRewardClaimTime,
        uint256 _rewardClaimedTill
    );
    event RewardsCheckpointed(uint256 _amount);
    event CheckpointAllowed(bool _allowed);
    event Killed();
    event RecoveredERC20(address _token, uint256 _amount);
    event MaxIterationsUpdated(uint256 _oldNo, uint256 _newNo);

    function initialize(
        address lagencyRewardsDistributor,
        address emergencyReturnAddress,
        address veTokenAddress,
        address rewardTokenAddress,
        uint256 _startTime
    ) public initializer {
        LEGACY_REWARDS_DISTRIBUTOR = lagencyRewardsDistributor;
        EMERGENCY_RETURN = emergencyReturnAddress;
        veToken = veTokenAddress;
        rewardToken = rewardTokenAddress;

        lastRewardBalance = 0;
        maxIterations = 50;
        canCheckpointReward = false;
        isKilled = false;

        uint256 t = (_startTime / WEEK) * WEEK;
        // All time initialization is rounded to the week
        startTime = t; // Decides the start time for reward distibution
        lastRewardCheckpointTime = t; //reward checkpoint timestamp
    }

    function initilizaV2() public reinitializer(2) {
        __Ownable_init();
        __Context_init();
        __ReentrancyGuard_init();
    }

    function getPendingRewardsInLegacyRewardDistributor(
        address user
    ) internal view returns (uint256) {
        (uint256 pendingRewards, , ) = LegacyRewardDistributor(
            LEGACY_REWARDS_DISTRIBUTOR
        ).computeRewards(user);

        return pendingRewards;
    }

    function claimPendingRewardsInLegacyRewardDistributor(
        address user,
        bool restake
    ) internal returns (uint256) {
        return
            LegacyRewardDistributor(LEGACY_REWARDS_DISTRIBUTOR).claim(
                user,
                restake
            );
    }

    /// @notice Function to add rewards in the contract for distribution
    /// @param value The amount of Token to add
    /// @dev This function is only for sending in Token.
    function addRewards(uint256 value) external nonReentrant {
        require(!isKilled);
        require(value > 0, "Reward amount must be > 0");
        IERC20(rewardToken).safeTransferFrom(
            _msgSender(),
            address(this),
            value
        );
        if (
            canCheckpointReward &&
            (block.timestamp >
                lastRewardCheckpointTime + REWARD_CHECKPOINT_DEADLINE)
        ) {
            _checkpointReward();
        }
    }

    /// @notice Update the reward checkpoint
    /// @dev Calculates the total number of tokens to be distributed in a given week.
    ///     During setup for the initial distribution this function is only callable
    ///     by the contract owner. Beyond initial distro, it can be enabled for anyone
    ///     to call.
    function checkpointReward() external nonReentrant {
        require(
            _msgSender() == owner() ||
                (canCheckpointReward &&
                    block.timestamp >
                    (lastRewardCheckpointTime + REWARD_CHECKPOINT_DEADLINE)),
            "Checkpointing not allowed"
        );
        _checkpointReward();
    }

    function claim(bool restake) external returns (uint256) {
        uint256 lagecyClaimedRewards = claimPendingRewardsInLegacyRewardDistributor(
                _msgSender(),
                restake
            );

        uint256 claimedRewards = claim(_msgSender(), restake);

        return claimedRewards + lagecyClaimedRewards;
    }

    /// @notice Function to enable / disable checkpointing of tokens
    /// @dev To be called by the owner only
    function toggleAllowCheckpointReward() external onlyOwner {
        canCheckpointReward = !canCheckpointReward;
        emit CheckpointAllowed(canCheckpointReward);
    }

    /*****************************
     *  Emergency Control
     ******************************/

    /// @notice Function to update the maximum iterations for the claim function.
    /// @param newIterationNum  The new maximum iterations for the claim function.
    /// @dev To be called by the owner only.
    function updateMaxIterations(uint256 newIterationNum) external onlyOwner {
        require(newIterationNum > 0, "Max iterations must be > 0");
        uint256 oldIterationNum = maxIterations;
        maxIterations = newIterationNum;
        emit MaxIterationsUpdated(oldIterationNum, newIterationNum);
    }

    /// @notice Function to kill the contract.
    /// @dev Killing transfers the entire Token balance to the emergency return address
    ///      and blocks the ability to claim or addRewards.
    /// @dev The contract can't be unkilled.
    function killMe() external onlyOwner {
        require(!isKilled);
        isKilled = true;
        IERC20(rewardToken).safeTransfer(
            EMERGENCY_RETURN,
            IERC20(rewardToken).balanceOf(address(this))
        );
        emit Killed();
    }

    /// @notice Recover ERC20 tokens from this contract
    /// @dev Tokens are sent to the emergency return address
    /// @param _coin token address
    function recoverERC20(address _coin) external onlyOwner {
        // Only the owner address can ever receive the recovery withdrawal
        require(_coin != rewardToken, "Can't recover Token tokens");
        uint256 amount = IERC20(_coin).balanceOf(address(this));
        IERC20(_coin).safeTransfer(EMERGENCY_RETURN, amount);
        emit RecoveredERC20(_coin, amount);
    }

    /// @notice Function to get the user earnings at a given timestamp.
    /// @param addr The address of the user
    /// @dev This function gets only for 50 days worth of rewards.
    /// @return total rewards earned by user, lastRewardCollectionTime, rewardsTill
    /// @dev lastRewardCollectionTime, rewardsTill are in terms of WEEK Cursor.
    function computeRewards(
        address addr
    )
        external
        view
        returns (
            uint256, // total rewards earned by user
            uint256, // lastRewardCollectionTime
            uint256 // rewardsTill
        )
    {
        uint256 legacyPendingRewards = getPendingRewardsInLegacyRewardDistributor(
                addr
            );

        uint256 _lastRewardCheckpointTime = lastRewardCheckpointTime;
        // Compute the rounded last token time
        _lastRewardCheckpointTime = (_lastRewardCheckpointTime / WEEK) * WEEK;
        (uint256 rewardsTill, uint256 totalRewards) = _computeRewards(
            addr,
            _lastRewardCheckpointTime
        );
        uint256 lastRewardCollectionTime = timeCursorOf[addr];
        if (lastRewardCollectionTime == 0) {
            lastRewardCollectionTime = startTime;
        }
        return (
            totalRewards + legacyPendingRewards,
            lastRewardCollectionTime,
            rewardsTill
        );
    }

    /// @notice Claim fees for the address
    /// @param addr The address of the user
    /// @return The amount of tokens claimed
    function claim(
        address addr,
        bool restake
    ) internal nonReentrant returns (uint256) {
        require(!isKilled);
        // Get the last token time
        uint256 _lastRewardCheckpointTime = lastRewardCheckpointTime;
        if (
            canCheckpointReward &&
            (block.timestamp >
                _lastRewardCheckpointTime + REWARD_CHECKPOINT_DEADLINE)
        ) {
            // Checkpoint the rewards till the current week
            _checkpointReward();
            _lastRewardCheckpointTime = block.timestamp;
        }

        // Compute the rounded last token time
        _lastRewardCheckpointTime = (_lastRewardCheckpointTime / WEEK) * WEEK;

        // Calculate the entitled reward amount for the user
        (uint256 weekCursor, uint256 amount) = _computeRewards(
            addr,
            _lastRewardCheckpointTime
        );

        uint256 lastRewardCollectionTime = timeCursorOf[addr];
        if (lastRewardCollectionTime == 0) {
            lastRewardCollectionTime = startTime;
        }
        // update time cursor for the user
        timeCursorOf[addr] = weekCursor;

        if (amount > 0) {
            lastRewardBalance -= amount;
            if (restake) {
                // If restake == True, add the rewards to user's deposit
                IERC20(rewardToken).safeApprove(veToken, amount);
                IveToken(veToken).depositFor(addr, uint128(amount));
            } else {
                IERC20(rewardToken).safeTransfer(addr, amount);
            }
        }

        emit Claimed(
            addr,
            restake,
            amount,
            lastRewardCollectionTime,
            weekCursor
        );

        return amount;
    }

    /// @notice Checkpoint reward
    /// @dev Checkpoint rewards for at most 20 weeks at a time
    function _checkpointReward() internal {
        // Calculate the amount to distribute
        uint256 tokenBalance = IERC20(rewardToken).balanceOf(address(this));
        uint256 toDistribute = tokenBalance - lastRewardBalance;
        lastRewardBalance = tokenBalance;

        uint256 t = lastRewardCheckpointTime;
        // Store the period of the last checkpoint
        uint256 sinceLast = block.timestamp - t;
        lastRewardCheckpointTime = block.timestamp;
        uint256 thisWeek = (t / WEEK) * WEEK;
        uint256 nextWeek = 0;

        for (uint256 i = 0; i < 20; i++) {
            nextWeek = thisWeek + WEEK;
            veTokenSupply[thisWeek] = IveToken(veToken).totalSupply(thisWeek);
            // Calculate share for the ongoing week
            if (block.timestamp < nextWeek) {
                if (sinceLast == 0) {
                    rewardsPerWeek[thisWeek] += toDistribute;
                } else {
                    // In case of a gap in time of the distribution
                    // Reward is divided across the remainder of the week
                    rewardsPerWeek[thisWeek] +=
                        (toDistribute * (block.timestamp - t)) /
                        sinceLast;
                }
                break;
                // Calculate share for all the past weeks
            } else {
                rewardsPerWeek[thisWeek] +=
                    (toDistribute * (nextWeek - t)) /
                    sinceLast;
            }
            t = nextWeek;
            thisWeek = nextWeek;
        }

        emit RewardsCheckpointed(toDistribute);
    }

    /// @notice Get the nearest user epoch for a given timestamp
    /// @param addr The address of the user
    /// @param ts The timestamp
    /// @param maxEpoch The maximum possible epoch for the user.
    function _findUserTimestampEpoch(
        address addr,
        uint256 ts,
        uint256 maxEpoch
    ) internal view returns (uint256) {
        uint256 min = 0;
        uint256 max = maxEpoch;

        // Binary search
        for (uint256 i = 0; i < 128; i++) {
            if (min >= max) {
                break;
            }
            uint256 mid = (min + max + 1) / 2;
            if (IveToken(veToken).getUserPointHistoryTS(addr, mid) <= ts) {
                min = mid;
            } else {
                max = mid - 1;
            }
        }
        return min;
    }

    /// @notice Function to initialize user's reward weekCursor
    /// @param addr The address of the user
    /// @return weekCursor The weekCursor of the user
    function _initializeUser(
        address addr
    ) internal view returns (uint256 weekCursor) {
        uint256 userEpoch = 0;
        // Get the user's max epoch
        uint256 maxUserEpoch = IveToken(veToken).userPointEpoch(addr);

        require(maxUserEpoch > 0, "User has no deposit");

        // Find the Timestamp curresponding to reward distribution start time
        userEpoch = _findUserTimestampEpoch(addr, startTime, maxUserEpoch);

        // In case the User deposits after the startTime
        // binary search returns userEpoch as 0
        if (userEpoch == 0) {
            userEpoch = 1;
        }
        // Get the user deposit timestamp
        uint256 userPointTs = IveToken(veToken).getUserPointHistoryTS(
            addr,
            userEpoch
        );
        // Compute the initial week cursor for the user for claiming the reward.
        weekCursor = ((userPointTs + WEEK - 1) / WEEK) * WEEK;
        // If the week cursor is less than the reward start time
        // Update it to the reward start time.
        if (weekCursor < startTime) {
            weekCursor = startTime;
        }
        return weekCursor;
    }

    /// @notice Function to get the total rewards for the user.
    /// @param addr The address of the user
    /// @param _lastRewardCheckpointTime The last reward checkpoint
    /// @return WeekCursor of User, TotalRewards
    function _computeRewards(
        address addr,
        uint256 _lastRewardCheckpointTime
    )
        internal
        view
        returns (
            uint256, // WeekCursor
            uint256 // TotalRewards
        )
    {
        uint256 toDistrbute = 0;
        // Get the user's reward time cursor.
        uint256 weekCursor = timeCursorOf[addr];

        if (weekCursor == 0) {
            weekCursor = _initializeUser(addr);
        }

        // Iterate over the weeks
        for (uint256 i = 0; i < maxIterations; i++) {
            // Users can't claim the reward for the ongoing week.
            if (weekCursor >= _lastRewardCheckpointTime) {
                break;
            }

            // Get the week's balance for the user
            uint256 balance = IveToken(veToken).balanceOf(addr, weekCursor);
            if (balance > 0 && veTokenSupply[weekCursor] > 0) {
                // Compute the user's share for the week.
                toDistrbute +=
                    (balance * rewardsPerWeek[weekCursor]) /
                    veTokenSupply[weekCursor];
            }

            weekCursor += WEEK;
        }

        return (weekCursor, toDistrbute);
    }
}
