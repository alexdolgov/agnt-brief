// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IMultiStakingRewards} from "./IMultiStakingRewards.sol";

import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {ReentrancyGuard} from
    "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import { IERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/IERC20.sol";
import { SafeTransferLib } from "solady-0.0.298/src/utils/SafeTransferLib.sol";

/**
 * @title MultiRewards
 * @dev Fork of https://github.com/curvefi/multi-rewards with hooks on stake/withdraw of LP tokens
 */
abstract contract MultiStakingRewards is ReentrancyGuard, Pausable, IMultiStakingRewards {

    /*//////////////////////////////////////////////////////////////
                                STATE
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice The token that users stake to earn rewards
     * @dev This is the base token that users deposit into the contract
     */
    IERC20 public immutable stakingToken;

    mapping(address => address) public operator;

    /**
     * @notice Stores reward-related data for each reward token
     * @dev Maps reward token addresses to their Reward struct containing distribution parameters
     */
    mapping(address => Reward) public override rewardData;

    /**
     * @notice Array of all reward token addresses
     * @dev Used to iterate through all reward tokens when updating or claiming rewards
     */
    address[] public rewardTokens;

    /**
     * @notice Tracks the reward per token paid to each user for each reward token
     * @dev Maps user address to reward token address to amount already paid
     * Used to calculate new rewards since last claim
     */
    mapping(address => mapping(address => uint256)) public
        userRewardPerTokenPaid;

    /**
     * @notice Tracks the unclaimed rewards for each user for each reward token
     * @dev Maps user address to reward token address to unclaimed amount
     */
    mapping(address => mapping(address => uint256)) public rewards;

    /**
     * @notice The total amount of staking tokens in the contract
     * @dev Used to calculate rewards per token
     */
    uint256 internal _totalSupply;

    /**
     * @notice Maps user addresses to their staked token balance
     * @dev Internal mapping used to track individual stake amounts
     */
    mapping(address => uint256) internal _balances;

    /*//////////////////////////////////////////////////////////////
                        MODIFIERS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Updates the reward for the given account before executing the
     * function body.
     * @param account address The account to update the reward for.
     */
    modifier updateReward(address account) {
        for (uint256 i; i < rewardTokens.length; i++) {
            address token = rewardTokens[i];

            uint256 latestRewardPerToken = rewardPerToken(token);
            rewardData[token].rewardPerTokenStored = latestRewardPerToken;
            rewardData[token].lastUpdateTime = lastTimeRewardApplicable(token);

            if (account != address(0)) {
                rewards[account][token] = earned(account, token);
                userRewardPerTokenPaid[account][token] = latestRewardPerToken;
            }
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                        CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Constructs the MultiRewards contract.
     * @param _stakingToken address The token that users stake to earn rewards.
     */
    constructor(address _stakingToken) {
        stakingToken = IERC20(_stakingToken);
    }

    /*//////////////////////////////////////////////////////////////
                               READS
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IMultiStakingRewards
    function totalSupply() external view returns (uint256) {
        return _totalSupply;
    }

    /// @inheritdoc IMultiStakingRewards
    function balanceOf(address account)
        external
        view
        returns (uint256 _balance)
    {
        return _balances[account];
    }

    /// @inheritdoc IMultiStakingRewards
    function lastTimeRewardApplicable(address _rewardToken)
        public
        view
        returns (uint256)
    {
        // min value between timestamp and period finish
        uint256 periodFinish = rewardData[_rewardToken].periodFinish;
        uint256 ts = block.timestamp;
        return ts < periodFinish ? ts : periodFinish;
    }

    /// @inheritdoc IMultiStakingRewards
    function rewardPerToken(address _rewardToken)
        public
        view
        returns (uint256)
    {
        if (_totalSupply == 0) {
            return rewardData[_rewardToken].rewardPerTokenStored;
        }
        return rewardData[_rewardToken].rewardPerTokenStored
            + (
                lastTimeRewardApplicable(_rewardToken)
                    - rewardData[_rewardToken].lastUpdateTime
            ) * rewardData[_rewardToken].rewardRate * 1e18 / _totalSupply;
    }

    /// @inheritdoc IMultiStakingRewards
    function earned(address account, address _rewardToken)
        public
        view
        returns (uint256)
    {
        return (
            _balances[account]
                * (
                    rewardPerToken(_rewardToken)
                        - userRewardPerTokenPaid[account][_rewardToken]
                )
        ) / 1e18 + rewards[account][_rewardToken];
    }

    /// @inheritdoc IMultiStakingRewards
    function getRewardForDuration(address _rewardToken)
        external
        view
        returns (uint256)
    {
        return rewardData[_rewardToken].rewardRate
            * rewardData[_rewardToken].rewardsDuration;
    }

    /*//////////////////////////////////////////////////////////////
                            WRITES
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IMultiStakingRewards
    function stake(uint256 amount)
        external
    {
        _stake(amount, msg.sender);
    }

    /// @inheritdoc IMultiStakingRewards
    function stakeOnBehalf(uint256 amount, address account)
        external
    {
        _stake(amount, account);
    }

    /**
     * @notice Hook called in the stake function after transfering staking token in
     * @param amount The amount of staking token transferred in to the contract
     */
    function onStake(uint256 amount) internal virtual;

    /// @inheritdoc IMultiStakingRewards
    function withdraw(uint256 amount)
        public
        nonReentrant
        updateReward(msg.sender)
    {
        require(amount > 0, "Cannot withdraw 0");
        _totalSupply = _totalSupply - amount;
        _balances[msg.sender] = _balances[msg.sender] - amount;

        // hook withdraw then transfer staking token out
        onWithdraw(amount);
        SafeTransferLib.safeTransfer(address(stakingToken), msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }

    /**
     * @notice Hook called in withdraw function before transferring staking token out
     * @param amount The amount of staking token to be transferred out of the contract
     */
    function onWithdraw(uint256 amount) internal virtual;

    /**
     * @notice Hook called in getRewardForUser function
     */
    function onReward() internal virtual;

    /// @inheritdoc IMultiStakingRewards
    function getReward(address user, address recipient) public {
        require(
            msg.sender == user || msg.sender == operator[user],
            "Not user or Operator"
        );
        _getRewardForUser(user, recipient);
    }

    /// @inheritdoc IMultiStakingRewards
    function exit() external {
        withdraw(_balances[msg.sender]);
        getReward(msg.sender, msg.sender);
    }

    /// @inheritdoc IMultiStakingRewards
    function setOperator(address _operator) external {
        operator[msg.sender] = _operator;
        emit OperatorSet(msg.sender, _operator);
    }

    /*//////////////////////////////////////////////////////////////
                            RESTRICTED
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Adds a reward token to the contract.
     * @param _rewardToken       address The address of the reward token.
     * @param _rewardsDuration    uint256 The duration of the rewards period.
     */
    function _addReward(
        address _rewardToken,
        uint256 _rewardsDuration
    ) internal {
        require(rewardData[_rewardToken].rewardsDuration == 0);
        rewardTokens.push(_rewardToken);
        rewardData[_rewardToken].rewardsDuration = _rewardsDuration;
        emit RewardStored(_rewardToken, _rewardsDuration);
    }

    /**
     * @notice Removes a reward token from the contract.
     * @param _rewardToken address The address of the reward token.
     */
    function _removeReward(address _rewardToken) internal {
        require(block.timestamp >= rewardData[_rewardToken].periodFinish);
        // Remove from the array
        for (uint256 i; i < rewardTokens.length; i++) {
            if (rewardTokens[i] == _rewardToken) {
                rewardTokens[i] = rewardTokens[rewardTokens.length - 1];
                rewardTokens.pop();
                break;
            }
        }

        delete rewardData[_rewardToken];
        emit RewardRemoved(_rewardToken);
    }

    /**
     * @notice Notifies the contract that reward tokens is being sent to the contract.
     * @param _rewardToken address The address of the reward token.
     * @param reward        uint256 The amount of reward tokens is being sent to the contract.
     */
    function _notifyRewardAmount(address _rewardToken, uint256 reward)
        internal
        updateReward(address(0))
    {
        // add in the prior residual amount and account for new residual
        // @dev residual used to account for precision loss when dividing reward by rewardsDuration
        reward = reward + rewardData[_rewardToken].rewardResidual;
        rewardData[_rewardToken].rewardResidual =
            reward % rewardData[_rewardToken].rewardsDuration;
        reward = reward - rewardData[_rewardToken].rewardResidual;

        if (block.timestamp >= rewardData[_rewardToken].periodFinish) {
            rewardData[_rewardToken].rewardRate =
                reward / rewardData[_rewardToken].rewardsDuration;
        } else {
            uint256 remaining =
                rewardData[_rewardToken].periodFinish - block.timestamp;
            uint256 leftover = remaining * rewardData[_rewardToken].rewardRate;

            // Calculate total and its residual
            uint256 totalAmount =
                reward + leftover + rewardData[_rewardToken].rewardResidual;
            rewardData[_rewardToken].rewardResidual =
                totalAmount % rewardData[_rewardToken].rewardsDuration;

            // Remove residual before setting rate
            totalAmount = totalAmount - rewardData[_rewardToken].rewardResidual;
            rewardData[_rewardToken].rewardRate =
                totalAmount / rewardData[_rewardToken].rewardsDuration;
        }

        rewardData[_rewardToken].lastUpdateTime = block.timestamp;
        rewardData[_rewardToken].periodFinish =
            block.timestamp + rewardData[_rewardToken].rewardsDuration;
        emit RewardAdded(_rewardToken, reward);
    }

    /**
     * @notice Recovers ERC20 tokens sent to the contract.
     * @dev Added to support recovering LP Rewards from other systems such as BAL to be distributed to holders
     * @param to           address The address to send the tokens to.
     * @param tokenAddress address The address of the token to withdraw.
     * @param tokenAmount  uint256 The amount of tokens to withdraw.
     */
    function _recoverERC20(
        address to,
        address tokenAddress,
        uint256 tokenAmount
    ) internal {
        require(
            rewardData[tokenAddress].lastUpdateTime == 0,
            "Cannot withdraw reward token"
        );
        SafeTransferLib.safeTransfer(address(tokenAddress), to, tokenAmount);
        emit Recovered(tokenAddress, tokenAmount);
    }

    /**
     * @notice Updates the reward duration for a reward token.
     * @param _rewardToken    address The address of the reward token.
     * @param _rewardsDuration uint256 The new duration of the rewards period.
     */
    function _setRewardsDuration(
        address _rewardToken,
        uint256 _rewardsDuration
    ) internal {
        require(_rewardsDuration > 0, "Reward duration must be non-zero");

        if (block.timestamp < rewardData[_rewardToken].periodFinish) {
            uint256 remaining =
                rewardData[_rewardToken].periodFinish - block.timestamp;
            uint256 leftover = remaining * rewardData[_rewardToken].rewardRate;

            // Calculate total and its residual
            uint256 totalAmount =
                leftover + rewardData[_rewardToken].rewardResidual;
            rewardData[_rewardToken].rewardResidual =
                totalAmount % _rewardsDuration;

            // Remove residual before setting rate
            totalAmount = totalAmount - rewardData[_rewardToken].rewardResidual;
            rewardData[_rewardToken].rewardRate =
                totalAmount / _rewardsDuration;
        }

        rewardData[_rewardToken].lastUpdateTime = block.timestamp;
        rewardData[_rewardToken].periodFinish =
            block.timestamp + _rewardsDuration;

        rewardData[_rewardToken].rewardsDuration = _rewardsDuration;
        emit RewardsDurationUpdated(_rewardToken, _rewardsDuration);
    }

    function _stake(uint256 amount, address account)
        internal
        nonReentrant
        whenNotPaused
        updateReward(account)
    {
        require(amount > 0, "Cannot stake 0");
        _totalSupply = _totalSupply + amount;
        _balances[account] = _balances[account] + amount;
        // transfer staking token in then hook stake, for hook to have access to collateral
        SafeTransferLib.safeTransferFrom(address(stakingToken), msg.sender, address(this), amount);
        onStake(amount);
        emit Staked(account, amount);
    }

    function _getRewardForUser(address _user, address _recipient)
        internal
        nonReentrant
        updateReward(_user)
    {
        onReward();
        uint256 len = rewardTokens.length;
        for (uint256 i; i < len; i++) {
            address _rewardToken = rewardTokens[i];
            uint256 reward = rewards[_user][_rewardToken];
            if (reward > 0) {
                (bool success, bytes memory data) = _rewardToken.call{
                    gas: 200000
                }(
                    abi.encodeWithSelector(
                        IERC20.transfer.selector, _recipient, reward
                    )
                );
                if (success && (data.length == 0 || abi.decode(data, (bool)))) {
                    rewards[_user][_rewardToken] = 0;
                    emit RewardPaid(_user, _rewardToken, reward);
                } else {
                    continue;
                }
            }
        }
    }
}