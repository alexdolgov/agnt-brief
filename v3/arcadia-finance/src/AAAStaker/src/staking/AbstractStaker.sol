/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.27;

import { ERC20 } from "../../lib/openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import { FixedPointMathLib } from "../../lib/solmate/src/utils/FixedPointMathLib.sol";
import { Math } from "../../lib/openzeppelin/contracts/utils/math/Math.sol";
import { Owned } from "../../lib/solmate/src/auth/Owned.sol";
import { ReentrancyGuard } from "../../lib/solmate/src/utils/ReentrancyGuard.sol";
import { RewardKey, RewardKeyLogic } from "./libraries/RewardKeyLogic.sol";
import { SafeCastLib } from "../../lib/solmate/src/utils/SafeCastLib.sol";
import { SafeERC20 } from "../../lib/openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title Arcadia Staker
 * @author Pragma Labs
 * @notice This contract holds the minimal implementation for staking logic with multiple rewards.
 */
abstract contract AbstractStaker is ERC20, Owned, ReentrancyGuard {
    using FixedPointMathLib for uint256;
    using SafeERC20 for ERC20;

    /* //////////////////////////////////////////////////////////////
                                CONSTANTS
    ////////////////////////////////////////////////////////////// */

    // The max duration for the distribution of a reward.
    uint256 public constant MAX_REWARD_DURATION = 30 days;

    // The max different number of rewards to distribute.
    uint256 public immutable MAX_REWARDS;

    // The contract address of the staked asset.
    ERC20 public immutable STAKED_ASSET;

    /* //////////////////////////////////////////////////////////////
                                STORAGE
    ////////////////////////////////////////////////////////////// */

    // Array of all unique identifiers of rewards that have been distributed.
    RewardKey[] public rewards;
    // Array of active reward unique identifiers.
    RewardKey[] public activeRewards;

    // The information for each reward.
    mapping(RewardKey => RewardState) public rewardState;
    // The information for each reward for each position.
    mapping(RewardKey => mapping(address user => UserState)) public userState;

    // Struct with reward information.
    struct RewardState {
        // The address of the reward distributor.
        address distributor;
        // The status of the reward:
        // - 0: active.
        // - 1: discontinued.
        // - 2: terminated.
        uint8 status;
        // The amount of Reward emitted per second, with 18 decimals precision.
        uint192 rewardRate;
        // The time When the reward will finish vesting.
        uint32 endTime;
        // Last time this struct was updated.
        uint32 lastUpdateTime;
        // The growth of reward tokens per Asset staked, at the last interaction with this contract,
        // with 18 decimals precision.
        uint256 lastRewardPerToken;
        // The amount of outstanding but unclaimed reward.
        uint256 unclaimedReward;
    }

    // Struct with user specific reward information.
    struct UserState {
        // The growth of reward tokens per Asset staked, at the last interaction with the users position,
        // with 18 decimals precision.
        uint256 lastRewardPerToken;
        // The amount of claimable reward.
        uint256 claimableReward;
    }

    /* //////////////////////////////////////////////////////////////
                                EVENTS
    ////////////////////////////////////////////////////////////// */

    event RewardDeposited(address indexed reward, uint256 amount);
    event RewardPaid(address indexed user, address indexed reward, uint256 amount);
    event Staked(address indexed receiver, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);

    /* //////////////////////////////////////////////////////////////
                                ERRORS
    ////////////////////////////////////////////////////////////// */

    error InvalidRewardId();
    error InvalidStatus();
    error MaxActiveRewards();
    error MaxRewardDuration();
    error NotDistributor();
    error RecoveryNotAllowed();
    error TerminationNotAllowed();
    error ZeroAddress();
    error ZeroAmount();
    error ZeroDuration();

    /* //////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    ////////////////////////////////////////////////////////////// */

    /**
     * @param stakedAsset The ERC20 token staked in this contract.
     * @param maxRewards The maximum number of active rewards.
     */
    constructor(ERC20 stakedAsset, uint256 maxRewards)
        ERC20(string(abi.encodePacked("Staked ", stakedAsset.name())), string(abi.encodePacked("st", stakedAsset.symbol())))
        Owned(msg.sender)
    {
        STAKED_ASSET = ERC20(stakedAsset);
        MAX_REWARDS = maxRewards;
    }

    /* //////////////////////////////////////////////////////////////
                          REWARD MANAGEMENT
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Adds a new reward to distribute via this contract.
     * @param reward The address of the new reward to distribute.
     * @param distributor The address allowed to distribute the reward.
     */
    function addReward(address reward, address distributor) external onlyOwner {
        if (distributor == address(0)) revert ZeroAddress();
        if (activeRewards.length == MAX_REWARDS) revert MaxActiveRewards();

        // Create the new reward.
        // The reward id equals its index in the rewards array.
        RewardKey rewardKey = RewardKeyLogic.getRewardKey(reward, rewards.length);
        rewards.push(rewardKey);
        activeRewards.push(rewardKey);
        rewardState[rewardKey].distributor = distributor;
    }

    /**
     * @notice Stops new distributions of a reward.
     * @param reward The address of the new reward to distribute.
     * @param rewardId The reward id.
     */
    function discontinueReward(address reward, uint256 rewardId) external onlyOwner {
        // Set reward status to discontinued.
        RewardKey rewardKey = RewardKeyLogic.getRewardKey(reward, rewardId);
        if (rewardState[rewardKey].distributor == address(0)) revert InvalidRewardId();
        if (rewardState[rewardKey].status > 0) revert InvalidStatus();
        rewardState[rewardKey].status = 1;
    }

    /**
     * @notice Terminates the reward and returns unclaimed assets back to the reward distributor.
     * @param reward The address of the asset to recover.
     * @param rewardId The reward id.
     * @dev After the distributor recovered the unclaimed assets for a reward,
     * no user will be able to claim the respective reward anymore.
     */
    function terminateReward(address reward, uint256 rewardId) external nonReentrant {
        RewardKey rewardKey = RewardKeyLogic.getRewardKey(reward, rewardId);
        if (rewardState[rewardKey].distributor != msg.sender) revert NotDistributor();
        if (rewardState[rewardKey].status > 1) revert InvalidStatus();
        if (block.timestamp < rewardState[rewardKey].endTime + 4 weeks) revert TerminationNotAllowed();

        // Set reward status to terminated.
        rewardState[rewardKey].status = 2;

        // Remove reward from active rewards.
        _removeActiveReward(rewardKey);

        // Transfer unclaimed rewards to the distributor.
        uint256 unclaimedReward = rewardState[rewardKey].unclaimedReward;
        rewardState[rewardKey].unclaimedReward = 0;
        ERC20(reward).safeTransfer(msg.sender, unclaimedReward);
    }

    /**
     * @notice Removes a reward from the active rewards array when it is terminated.
     * @param rewardKey The unique identifier of the reward.
     */
    function _removeActiveReward(RewardKey rewardKey) internal {
        uint256 length = activeRewards.length;
        for (uint256 i; i < length; ++i) {
            if (activeRewards[i] == rewardKey) {
                // Move the last reward token to the current index and pop the last element.
                activeRewards[i] = activeRewards[length - 1];
                activeRewards.pop();
                break;
            }
        }
    }

    /* //////////////////////////////////////////////////////////////
                          REWARD DISTRIBUTION
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Sets a new distributor for a specific reward.
     * @param reward The address of the reward to distribute.
     * @param rewardId The reward id.
     * @param distributor The address allowed to distribute the reward.
     */
    function transferDistributor(address reward, uint256 rewardId, address distributor) external {
        if (distributor == address(0)) revert ZeroAddress();
        RewardKey rewardKey = RewardKeyLogic.getRewardKey(reward, rewardId);
        if (rewardState[rewardKey].distributor != msg.sender) revert NotDistributor();

        rewardState[rewardKey].distributor = distributor;
    }

    /**
     * @notice Deposits a reward to this contract for distribution.
     * @param reward The asset to deposit.
     * @param rewardId The id of the asset to deposit.
     * @param amount The amount of reward"to deposit.
     * @param rewardsDuration the duration for the reward to vest (in seconds).
     */
    function depositReward(address reward, uint256 rewardId, uint256 amount, uint256 rewardsDuration)
        external
        nonReentrant
    {
        RewardKey rewardKey = RewardKeyLogic.getRewardKey(reward, rewardId);
        if (rewardState[rewardKey].distributor != msg.sender) revert NotDistributor();
        if (rewardState[rewardKey].status > 0) revert InvalidStatus();
        if (rewardsDuration == 0) revert ZeroDuration();
        if (rewardsDuration > MAX_REWARD_DURATION) revert MaxRewardDuration();

        // Update reward state before changing reward parameters.
        _updateRewardState(rewardKey, totalSupply());

        // Update unclaimedReward.
        rewardState[rewardKey].unclaimedReward = rewardState[rewardKey].unclaimedReward + amount;

        // Update accounting for rewards.
        uint256 endTime = rewardState[rewardKey].endTime;
        uint256 leftoversScaled;
        unchecked {
            if (block.timestamp < endTime) {
                leftoversScaled = uint256(rewardState[rewardKey].rewardRate) * (endTime - block.timestamp);
            }
            rewardState[rewardKey].endTime = uint32(block.timestamp + rewardsDuration);
        }
        rewardState[rewardKey].rewardRate =
            SafeCastLib.safeCastTo192((amount * 1e18 + leftoversScaled) / rewardsDuration);

        // Transfer rewards.
        ERC20(reward).safeTransferFrom(msg.sender, address(this), amount);
        emit RewardDeposited(reward, amount);
    }

    /* //////////////////////////////////////////////////////////////
                              STAKING
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Stakes an amount of the staked asset.
     * @param amount The amount of assets to stake.
     * @param receiver The address that receives the staked assets.
     */
    function stake(uint256 amount, address receiver) external virtual nonReentrant {
        if (amount == 0) revert ZeroAmount();

        // _updateRewards() will be called via _update() in mint logic.
        _mint(receiver, amount);

        // We cannot transfer assets before minting, since _mint() will update the rewards,
        // which relies on balanceOf and totalSupply.
        // Staked Asset is trusted asset, without hooks before transfer.
        STAKED_ASSET.safeTransferFrom(msg.sender, address(this), amount);
        emit Staked(receiver, amount);
    }

    /**
     * @notice Withdraws an amount of staked asset, without claiming pending rewards.
     * @param amount The amount of assets to withdraw.
     */
    function withdraw(uint256 amount) external virtual nonReentrant {
        _withdraw(amount);
    }

    /**
     * @notice Withdraws the full amount of staked asset and claims all active rewards.
     * @return claimedRewards Array with the claimed amounts of active rewards.
     */
    function maxWithdrawAndClaim() external virtual nonReentrant returns (uint256[] memory claimedRewards) {
        _withdraw(balanceOf(msg.sender));

        RewardKey[] memory rewardKeys = activeRewards;
        claimedRewards = new uint256[](rewardKeys.length);
        for (uint256 i; i < rewardKeys.length; ++i) {
            claimedRewards[i] = _claimReward(rewardKeys[i]);
        }
    }

    /**
     * @notice Withdraws an amount of staked asset.
     * @param amount The amount of assets to withdraw.
     */
    function _withdraw(uint256 amount) internal virtual {
        if (amount == 0) revert ZeroAmount();

        // _updateRewards() will be called via _update() in burn logic.
        _burn(msg.sender, amount);

        // Transfer assets.
        STAKED_ASSET.safeTransfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }

    /* //////////////////////////////////////////////////////////////
                        CLAIMING REWARDS
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Claims a specific reward.
     * @param reward The address of the reward to claim.
     * @param rewardId The id of the reward to claim.
     * @return claimedReward The claimed amount of reward.
     */
    function claimReward(address reward, uint256 rewardId) external nonReentrant returns (uint256 claimedReward) {
        // Update reward.
        RewardKey rewardKey = RewardKeyLogic.getRewardKey(reward, rewardId);
        uint256 rewardPerToken = _updateRewardState(rewardKey, totalSupply());
        _updateUserState(rewardKey, msg.sender, balanceOf(msg.sender), rewardPerToken);

        // Claim reward.
        claimedReward = _claimReward(rewardKey);
    }

    /**
     * @notice Claims all active rewards.
     * @return claimedRewards Array with the claimed amounts of active rewards.
     */
    function claimActiveRewards() external nonReentrant returns (uint256[] memory claimedRewards) {
        // Update rewards.
        RewardKey[] memory rewardKeys = _updateRewards(msg.sender);
        claimedRewards = new uint256[](rewardKeys.length);

        // Claim rewards.
        for (uint256 i; i < rewardKeys.length; ++i) {
            claimedRewards[i] = _claimReward(rewardKeys[i]);
        }
    }

    /**
     * @notice Internal function to claim a specific reward.
     * @param rewardKey The unique identifier of the reward.
     * @return claimedReward The claimed amount of reward.
     * @dev After the distributor recovered the unclaimed assets for a reward,
     * no user will be able to claim the respective reward anymore.
     */
    function _claimReward(RewardKey rewardKey) internal returns (uint256 claimedReward) {
        claimedReward = userState[rewardKey][msg.sender].claimableReward;

        // Update the unclaimedReward, will revert if the distributor already called terminateReward().
        rewardState[rewardKey].unclaimedReward = rewardState[rewardKey].unclaimedReward - claimedReward;

        userState[rewardKey][msg.sender].claimableReward = 0;

        if (claimedReward > 0) {
            ERC20(rewardKey.reward()).safeTransfer(msg.sender, claimedReward);
            emit RewardPaid(msg.sender, rewardKey.reward(), claimedReward);
        }
    }

    /* //////////////////////////////////////////////////////////////
                                ERC20
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Transfers an amount of tokens, or alternatively mints/burns if "from"/"to" is the zero address.
     * @param from The address sending the tokens.
     * @param to The address receiving the tokens.
     * @param value The amount sent.
     */
    function _update(address from, address to, uint256 value) internal virtual override {
        // Update the rewards for the receiver and the sender if not zero address.
        if (from == address(0)) _updateRewards(to);
        else if (to == address(0)) _updateRewards(from);
        else _updateRewards(from, to);

        super._update(from, to, value);
    }

    /**
     * @notice Updates all active rewards before claiming or minting/burning tokens.
     * @param user The address for which the rewards should be updated.
     * @return rewardKeys The array of rewardTokens.
     */
    function _updateRewards(address user) internal returns (RewardKey[] memory rewardKeys) {
        // Cache variables.
        rewardKeys = activeRewards;
        uint256 totalSupply_ = totalSupply();
        uint256 balance = balanceOf(user);

        // Update state.
        uint256 rewardPerToken;
        for (uint256 i; i < rewardKeys.length; ++i) {
            rewardPerToken = _updateRewardState(rewardKeys[i], totalSupply_);
            _updateUserState(rewardKeys[i], user, balance, rewardPerToken);
        }
    }

    /**
     * @notice Updates all active rewards before transferring tokens.
     * @param from The address of the user sending the tokens.
     * @param to The address of the user receiving the tokens.
     * @return rewardKeys The array of rewardTokens.
     */
    function _updateRewards(address from, address to) internal returns (RewardKey[] memory rewardKeys) {
        // Cache variables.
        rewardKeys = activeRewards;
        uint256 totalSupply_ = totalSupply();
        uint256 balanceFrom = balanceOf(from);
        uint256 balanceTo = balanceOf(to);

        // Update state.
        uint256 rewardPerToken;
        for (uint256 i; i < rewardKeys.length; ++i) {
            rewardPerToken = _updateRewardState(rewardKeys[i], totalSupply_);
            _updateUserState(rewardKeys[i], from, balanceFrom, rewardPerToken);
            _updateUserState(rewardKeys[i], to, balanceTo, rewardPerToken);
        }
    }

    /**
     * @notice Updates the global state of a reward.
     * @param rewardKey The unique identifier of the reward.
     * @param totalSupply_ The total supply of the staked asset.
     * @return rewardPerToken The growth of reward tokens per asset staked, with 18 decimals precision.
     * @dev If total supply is zero, nobody can claim the distributed rewards.
     * These distributed rewards are not "lost", since the distributor can claim them back via terminateReward()
     * after the endTime + buffer period has passed.
     */
    function _updateRewardState(RewardKey rewardKey, uint256 totalSupply_) internal returns (uint256 rewardPerToken) {
        // Cache variables.
        uint256 endTime = Math.min(block.timestamp, rewardState[rewardKey].endTime);
        uint256 lastUpdateTime = rewardState[rewardKey].lastUpdateTime;
        rewardPerToken = rewardState[rewardKey].lastRewardPerToken;

        // Update reward state.
        if (totalSupply_ > 0 && endTime > lastUpdateTime) {
            unchecked {
                // unchecked: uint192 * uint32.
                uint256 deltaRewardPerToken =
                    uint256(rewardState[rewardKey].rewardRate) * (endTime - lastUpdateTime) / totalSupply_;
                // unchecked: Can overflow, what matters is the delta in RewardPerToken between two interactions.
                rewardPerToken = rewardPerToken + deltaRewardPerToken;
            }
            rewardState[rewardKey].lastRewardPerToken = rewardPerToken;
        }
        rewardState[rewardKey].lastUpdateTime = uint32(block.timestamp);
    }

    /**
     * @notice Updates the position specific state of a reward.
     * @param rewardKey The unique identifier of the reward.
     * @param user The address of the user.
     * @param balance The balance of the user.
     * @param rewardPerToken The growth of reward tokens per asset staked, with 18 decimals precision.
     */
    function _updateUserState(RewardKey rewardKey, address user, uint256 balance, uint256 rewardPerToken) internal {
        if (balance > 0) {
            UserState memory state = userState[rewardKey][user];
            unchecked {
                // unchecked: Can underflow, what matters is the delta in RewardPerToken between two interactions.
                uint256 deltaRewardPerToken = rewardPerToken - state.lastRewardPerToken;
                // unchecked: claimableReward is strictly smaller than rewardState[rewardKey].unclaimedReward.
                userState[rewardKey][user] = UserState({
                    lastRewardPerToken: rewardPerToken,
                    claimableReward: state.claimableReward + balance.mulDivDown(deltaRewardPerToken, 1e18)
                });
            }
        } else {
            userState[rewardKey][user].lastRewardPerToken = rewardPerToken;
        }
    }

    /* //////////////////////////////////////////////////////////////
                          VIEW FUNCTIONS
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Returns the reward rates of the active rewards.
     * @return rewardRates The reward rates of the active rewards.
     * @return rewardKeys The unique identifiers of the active rewards.
     */
    function getRewardRates() external view returns (uint256[] memory rewardRates, RewardKey[] memory rewardKeys) {
        rewardKeys = activeRewards;
        rewardRates = new uint256[](rewardKeys.length);
        for (uint256 i; i < rewardKeys.length; ++i) {
            rewardRates[i] = rewardState[rewardKeys[i]].rewardRate;
        }
    }

    /**
     * @notice Returns the amount of claimable reward for a user.
     * @param reward The address of the claimable reward.
     * @param rewardId The reward id.
     * @param user The user to check the claimable rewards for.
     * @return claimableReward The claimable amount of reward.
     */
    function getClaimableReward(address reward, uint256 rewardId, address user)
        external
        view
        returns (uint256 claimableReward)
    {
        // If the distributor already called terminateReward(),
        // no user will be able to claim the respective reward anymore.
        RewardKey rewardKey = RewardKeyLogic.getRewardKey(reward, rewardId);
        if (rewardState[rewardKey].unclaimedReward == 0) return 0;

        claimableReward = _getClaimableReward(rewardKey, user, balanceOf(user));
    }

    /**
     * @notice Returns the amount of claimable active rewards for a user.
     * @param user The user to check the claimable rewards for.
     * @return claimableRewards Array with the claimable amounts of active rewards.
     */
    function getClaimableActiveRewards(address user) external view returns (uint256[] memory claimableRewards) {
        RewardKey[] memory rewardKeys = activeRewards;
        claimableRewards = new uint256[](rewardKeys.length);

        uint256 balance = balanceOf(user);
        for (uint256 i; i < rewardKeys.length; ++i) {
            claimableRewards[i] = _getClaimableReward(rewardKeys[i], user, balance);
        }
    }

    /**
     * @notice Returns the current amount claimable by a user for a specific reward.
     * @param rewardKey The unique identifier of the reward.
     * @param user The user to check the claimable rewards for.
     * @param balance The balance of the user.
     * @return claimableReward The current claimable amount.
     */
    function _getClaimableReward(RewardKey rewardKey, address user, uint256 balance)
        internal
        view
        returns (uint256 claimableReward)
    {
        if (balance == 0) return userState[rewardKey][user].claimableReward;

        // Cache variables.
        uint256 endTime = Math.min(block.timestamp, rewardState[rewardKey].endTime);
        uint256 lastUpdateTime = rewardState[rewardKey].lastUpdateTime;
        uint256 rewardPerToken = rewardState[rewardKey].lastRewardPerToken;

        // Get updated reward state.
        uint256 deltaRewardPerToken;
        if (endTime > lastUpdateTime) {
            unchecked {
                deltaRewardPerToken =
                    (uint256(rewardState[rewardKey].rewardRate).mulDivDown(endTime - lastUpdateTime, totalSupply()));
                rewardPerToken = rewardPerToken + deltaRewardPerToken;
            }
        }

        // Get updated user state.
        UserState memory state = userState[rewardKey][user];
        unchecked {
            deltaRewardPerToken = rewardPerToken - state.lastRewardPerToken;
        }
        claimableReward = state.claimableReward + balance.mulDivDown(deltaRewardPerToken, 1e18);
    }

    /* //////////////////////////////////////////////////////////////
                              HELPERS
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Returns the number of rewards.
     * @return length The number of rewards.
     */
    function getRewardsLength() external view returns (uint256 length) {
        length = rewards.length;
    }

    /**
     * @notice Returns the number of active rewards.
     * @return length The number of active rewards.
     */
    function getActiveRewardsLength() external view returns (uint256 length) {
        length = activeRewards.length;
    }

    /**
     * @notice Function to recover ERC20 assets other than the active rewards or staking token.
     * @param asset The address of the asset to recover.
     * @param amount The amount of asset to recover.
     */
    function recoverERC20(address asset, uint256 amount) external onlyOwner {
        if (asset == address(STAKED_ASSET)) revert RecoveryNotAllowed();

        uint256 length = activeRewards.length;
        for (uint256 i; i < length; ++i) {
            if (activeRewards[i].reward() == asset) revert RecoveryNotAllowed();
        }

        ERC20(asset).safeTransfer(msg.sender, amount);
    }
}
