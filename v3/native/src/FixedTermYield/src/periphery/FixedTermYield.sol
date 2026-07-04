// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IERC20Metadata as IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import {SafeERC20} from "../libraries/SafeERC20.sol";
import {WrappedNLP} from "../WrappedNLP.sol";
import {ReentrancyGuardTransient} from "../libraries/ReentrancyGuardTransient.sol";

/**
 * @title FixedTermYield
 * @notice Fixed-term yield product that locks yieldToken and distributes rewards after term ends.
 * Two deposit modes:
 * - If underlying != address(0): users deposit underlying, auto-converted to yieldToken
 * - If underlying == address(0): users deposit yieldToken directly
 */
contract FixedTermYield is Ownable2Step, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;

    /// @notice User staking information
    struct UserInfo {
        uint256 shares; // Amount of LP shares owned by user
        mapping(address => uint256) rewardDebts; // User's reward debt per token
        mapping(address => uint256) unclaimedRewards; // Rewards earned but not yet claimable
    }

    /// @notice Reward token information
    struct RewardInfo {
        uint256 accTokenPerShare; // Accumulated rewards per share, scaled by precision
        uint256 rewardPerSecond; // Number of reward tokens distributed per second
        uint256 lastRewardTimestamp; // Last timestamp that rewards were calculated
        uint256 precision; // Precision factor to handle decimals correctly
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Whether reward calculations have been finalized after term end (saving gas)
    bool public poolsFinalized;

    /// @notice Whether emergency redeem is enabled
    bool public emergencyRedeemEnabled;

    /// @notice The name of this fixed-term yield product, e.g., "USDC 6-Month Fixed Yield"
    string public name;

    /// @notice Timestamp when the fixed term yield period starts
    uint256 public startTimestamp;

    /// @notice Timestamp when the fixed term yield period ends (rewards become claimable)
    uint256 public endTimestamp;

    /// @notice Total deposited shares
    uint256 public totalShares;

    /// @notice Maximum total shares allowed for deposits
    uint256 public immutable maxTotalShares;

    /// @notice Maximum number of reward tokens allowed to control gas costs
    uint256 public constant MAX_REWARD_TOKENS = 3;

    /// @notice The yield-bearing token that is locked in the contract
    IERC20 public immutable yieldToken;

    /// @notice The token users deposit: if set, converts to yieldToken; if address(0), users deposit yieldToken directly
    address public immutable underlying;

    /// @notice Array of all reward token addresses offered in this fixed term yield product
    address[] public rewardTokens;

    /// @notice Mapping of user address => user investment and reward information
    mapping(address => UserInfo) public userInfo;

    /// @notice Mapping of reward token => reward distribution information
    mapping(address => RewardInfo) public rewardTokenInfo;

    /*//////////////////////////////////////////////////////////////////////////
                                        EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emitted when a user deposits funds
    /// @param user Address of the depositor
    /// @param amount Amount of tokens deposited
    /// @param shares Amount of yield shares received
    event Deposited(address indexed user, uint256 amount, uint256 shares);

    /// @notice Emitted when a user redeems their investment
    /// @param user Address of the redeemer
    /// @param shares Amount of yield shares redeemed
    /// @param amount Amount of tokens received
    event Redeemed(address indexed user, uint256 shares, uint256 amount);

    /// @notice Emitted when update pool is called
    event UpdatePool();

    /// @notice Emitted when a project adds their reward token
    event RewardTokenAdded(address indexed token, uint256 rewardPerSecond);

    /// @notice Emitted when rewards are harvested
    event RewardHarvested(address indexed receiver, address indexed rewardToken, uint256 amount);

    /// @notice Event emitted when funds are redeemed in emergency
    event EmergencyRedeemed(address indexed user, uint256 shares, uint256 amount);

    /// @notice Emitted when emergency redeem status is updated
    event EmergencyRedeemStatusUpdated(bool enabled);

    /// @notice Emitted when tokens are recovered from the contract
    event TokenRecovery(address indexed token, uint256 amount);

    /*//////////////////////////////////////////////////////////////////////////
                                     CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    constructor(
        string memory _name,
        IERC20 _yieldToken,
        address _underlying,
        uint256 _startTimestamp,
        uint256 _endTimestamp,
        uint256 _maxTotalShares
    ) {
        require(_maxTotalShares > 0, "Invalid max shares");

        // When underlying != address(0), yieldToken must be WrappedNLP with matching underlying
        if (_underlying != address(0)) {
            require(
                address(WrappedNLP(address(_yieldToken)).underlying()) == _underlying,
                "Yield token and underlying mismatch"
            );
        }

        name = _name;
        yieldToken = _yieldToken;
        underlying = _underlying;
        maxTotalShares = _maxTotalShares;

        startTimestamp = _startTimestamp;
        endTimestamp = _endTimestamp;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     DEPOSIT & REDEEM OPERATIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Deposit tokens (converts to yieldToken if underlying is set)
    /// @param _amount Amount of tokens to deposit (underlying or yieldToken)
    /// @return shares Amount of yieldToken shares received
    function deposit(uint256 _amount) external nonReentrant returns (uint256 shares) {
        UserInfo storage user = userInfo[msg.sender];

        _updatePools();

        if (user.shares > 0) {
            _harvestRewards(msg.sender);
        }

        if (_amount > 0) {
            if (underlying != address(0)) {
                IERC20(underlying).safeTransferFrom(msg.sender, address(this), _amount);
                IERC20(underlying).safeApprove(address(yieldToken), _amount);

                shares = WrappedNLP(address(yieldToken)).depositAndWrap(address(this), _amount);
            } else {
                yieldToken.safeTransferFrom(msg.sender, address(this), _amount);
                shares = _amount;
            }

            require(totalShares + shares <= maxTotalShares, "Exceeds maximum total shares");

            user.shares += shares;
            totalShares += shares;
        }

        // Update all reward debts based on shares
        for (uint256 i = 0; i < rewardTokens.length; i++) {
            address token = rewardTokens[i];
            RewardInfo storage reward = rewardTokenInfo[token];
            user.rewardDebts[token] = (user.shares * reward.accTokenPerShare) / reward.precision;
        }

        emit Deposited(msg.sender, _amount, shares);
    }

    /// @notice Allows users to redeem all their principal and accumulated rewards after term ends
    /// @return amount Amount of principal tokens received
    function redeem() external nonReentrant returns (uint256 amount) {
        require(block.timestamp >= endTimestamp, "Fixed term not ended");

        UserInfo storage user = userInfo[msg.sender];
        uint256 sharesToRedeem = user.shares;
        require(sharesToRedeem > 0, "No shares to redeem");

        // Finalize pools once after term ends for saving gas
        if (!poolsFinalized) {
            _updatePools();
            poolsFinalized = true;
        }

        // Accumulate remaining pending rewards
        _harvestRewards(msg.sender);

        // Redeem principal
        if (underlying != address(0)) {
            amount = WrappedNLP(address(yieldToken)).unwrapAndRedeem(sharesToRedeem, msg.sender);
        } else {
            yieldToken.safeTransfer(msg.sender, sharesToRedeem);
            amount = sharesToRedeem;
        }

        // Update global and user shares
        totalShares -= sharesToRedeem;
        user.shares = 0;

        // Claim all accumulated rewards
        for (uint256 i = 0; i < rewardTokens.length; i++) {
            address token = rewardTokens[i];
            uint256 claimableAmount = user.unclaimedRewards[token];

            // Reset user's reward to 0
            user.rewardDebts[token] = 0;

            if (claimableAmount > 0) {
                user.unclaimedRewards[token] = 0;
                IERC20(token).safeTransfer(msg.sender, claimableAmount);
                emit RewardHarvested(msg.sender, token, claimableAmount);
            }
        }

        emit Redeemed(msg.sender, sharesToRedeem, amount);
    }

    /// @notice Emergency redeem funds without caring about rewards
    /// @return amount Amount of tokens received
    function emergencyRedeem() external nonReentrant returns (uint256 amount) {
        require(emergencyRedeemEnabled, "Emergency redeem disabled");

        UserInfo storage user = userInfo[msg.sender];

        uint256 sharesToRedeem = user.shares;
        require(sharesToRedeem > 0, "No shares to redeem");

        // Update user's state
        user.shares = 0;
        totalShares = totalShares - sharesToRedeem;

        // Reset all reward debts and unclaimed rewards to 0
        for (uint256 i = 0; i < rewardTokens.length; i++) {
            user.rewardDebts[rewardTokens[i]] = 0;
            user.unclaimedRewards[rewardTokens[i]] = 0;
        }

        if (underlying != address(0)) {
            amount = WrappedNLP(address(yieldToken)).unwrapAndRedeem(sharesToRedeem, msg.sender);
        } else {
            yieldToken.safeTransfer(msg.sender, sharesToRedeem);
            amount = sharesToRedeem;
        }

        emit EmergencyRedeemed(msg.sender, sharesToRedeem, amount);
    }

    /// @notice Updates reward state for all reward tokens
    function updatePool() external {
        _updatePools();
        emit UpdatePool();
    }

    /*//////////////////////////////////////////////////////////////////////////
                                OTHER EXTERNAL FUNCTIONS 
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Add a new reward token to the staking pool
    /// @param _rewardToken Address of the reward token
    /// @param _rewardPerSecond Rewards distributed per second
    function addRewardToken(address _rewardToken, uint256 _rewardPerSecond) external onlyOwner {
        require(rewardTokens.length < MAX_REWARD_TOKENS, "Max reward tokens reached");
        require(_rewardPerSecond > 0, "Reward per second must be greater than 0");
        require(_rewardToken != address(0), "Zero reward token address");
        require(block.timestamp < startTimestamp, "Start time already passed");

        // Check for duplicate reward tokens
        for (uint256 i = 0; i < rewardTokens.length; i++) {
            require(_rewardToken != rewardTokens[i], "Duplicate reward tokens");
        }

        uint256 decimals = IERC20(_rewardToken).decimals();
        // Maximum precision is 30 decimals to prevent overflow
        require(decimals < 30, "Token decimals exceed maximum precision");

        // Calculate precision scaling factor
        // We use precision to scale up reward calculations to prevent truncation errors
        // and maintain accuracy when calculating rewards per share
        uint256 precision = uint256(10 ** (uint256(30) - decimals));

        rewardTokenInfo[_rewardToken] = RewardInfo({
            accTokenPerShare: 0,
            rewardPerSecond: _rewardPerSecond,
            lastRewardTimestamp: startTimestamp,
            precision: precision
        });

        rewardTokens.push(_rewardToken);

        require(precision * _rewardPerSecond / (10 ** decimals) >= 1e8, "Reward rate too low");

        emit RewardTokenAdded(_rewardToken, _rewardPerSecond);
    }

    /// @notice Allows the owner to recover tokens sent to the contract by mistake
    /// @dev Cannot recover yield token
    /// @param _token Token address to recover
    function recoverToken(address _token) external nonReentrant onlyOwner {
        require(_token != address(yieldToken), "Yield token not recoverable");

        uint256 balance = IERC20(_token).balanceOf(address(this));
        require(balance != 0, "No tokens to recover");

        IERC20(_token).safeTransfer(msg.sender, balance);

        emit TokenRecovery(_token, balance);
    }

    /// @notice Enable or disable emergency redeem functionality
    /// @param _enabled Whether emergency redeem should be enabled
    function setEmergencyRedeemEnabled(bool _enabled) external onlyOwner {
        emergencyRedeemEnabled = _enabled;
        emit EmergencyRedeemStatusUpdated(_enabled);
    }

    /// @notice View function to see pending rewards for a user
    /// @param _user Address of the user to check
    /// @return tokens Array of reward token addresses
    /// @return rewards Array of pending reward amounts corresponding to each token
    function getPendingRewards(address _user)
        external
        view
        returns (address[] memory tokens, uint256[] memory rewards)
    {
        tokens = rewardTokens;
        rewards = new uint256[](tokens.length);

        UserInfo storage user = userInfo[_user];

        for (uint256 i = 0; i < tokens.length; i++) {
            RewardInfo storage reward = rewardTokenInfo[tokens[i]];
            uint256 accTokenPerShare = reward.accTokenPerShare;

            if (block.timestamp > reward.lastRewardTimestamp && totalShares != 0) {
                uint256 multiplier = _getRewardDuration(endTimestamp, reward.lastRewardTimestamp, block.timestamp);
                uint256 tokenReward = multiplier * reward.rewardPerSecond;

                accTokenPerShare += (tokenReward * reward.precision) / totalShares;
            }

            uint256 newlyEarned = (user.shares * accTokenPerShare) / reward.precision - user.rewardDebts[tokens[i]];
            rewards[i] = newlyEarned + user.unclaimedRewards[tokens[i]];
        }
    }

    /*//////////////////////////////////////////////////////////////////////////
                                INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    function _updatePools() internal {
        for (uint256 i = 0; i < rewardTokens.length; i++) {
            _updatePool(rewardTokens[i]);
        }
    }

    function _updatePool(address _rewardToken) internal {
        RewardInfo storage reward = rewardTokenInfo[_rewardToken];
        if (block.timestamp <= reward.lastRewardTimestamp) {
            return;
        }

        if (totalShares == 0) {
            reward.lastRewardTimestamp = block.timestamp;
            return;
        }

        uint256 multiplier = _getRewardDuration(endTimestamp, reward.lastRewardTimestamp, block.timestamp);
        uint256 tokenReward = multiplier * reward.rewardPerSecond;

        // update the accumulated reward per share
        reward.accTokenPerShare = reward.accTokenPerShare + (tokenReward * reward.precision) / totalShares;

        // If the last reward timestamp is after the end timestamp, set it to the end timestamp
        reward.lastRewardTimestamp = block.timestamp > endTimestamp ? endTimestamp : block.timestamp;
    }

    /// @notice Accumulates newly earned rewards to unclaimedRewards (no token transfer, actual transfer in redeem())
    function _harvestRewards(address _user) internal {
        UserInfo storage user = userInfo[_user];

        for (uint256 i = 0; i < rewardTokens.length; i++) {
            address token = rewardTokens[i];
            RewardInfo storage reward = rewardTokenInfo[token];

            uint256 pending = (user.shares * reward.accTokenPerShare) / reward.precision - user.rewardDebts[token];

            user.unclaimedRewards[token] += pending;
        }
    }

    function _getRewardDuration(uint256 _endTimestamp, uint256 _from, uint256 _to) internal pure returns (uint256) {
        if (_to <= _endTimestamp) {
            return _to - _from;
        } else if (_from >= _endTimestamp) {
            return 0;
        } else {
            return _endTimestamp - _from;
        }
    }
}
