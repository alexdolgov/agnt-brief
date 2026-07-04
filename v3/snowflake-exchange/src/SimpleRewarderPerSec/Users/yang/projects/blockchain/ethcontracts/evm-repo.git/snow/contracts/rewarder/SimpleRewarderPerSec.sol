// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.9;

import '@openzeppelin/contracts/utils/Address.sol';
import '@openzeppelin/contracts/security/ReentrancyGuard.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

import '../interfaces/IRewarder.sol';
import '../interfaces/IMasterSnowflake.sol';

/**
 * This is a sample contract to be used in the MasterChefSnow contract for partners to reward
 * stakers with their native token alongside Snow.
 *
 * It assumes no minting rights, so requires a set amount of YOUR_TOKEN to be transferred to this contract prior.
 * E.g. say you've allocated 100,000 XYZ to the SNOW-XYZ farm over 30 days. Then you would need to transfer
 * 100,000 XYZ and set the block reward accordingly so it's fully distributed after 30 days.
 *
 * With thanks to the Trader JOE team.
 */
contract SimpleRewarderPerSec is IRewarder, Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;
    using SafeERC20 for IERC20Metadata;

    IERC20Metadata public immutable override rewardToken;
    IERC20 public immutable lpToken;
    bool public immutable isNative;
    IMasterSnowflake public immutable MP;

    /// @notice Info of each MP user.
    /// `amount` LP token amount the user has provided.
    /// `rewardDebt` The amount of YOUR_TOKEN entitled to the user.
    struct UserInfo {
        uint256 amount;
        uint256 rewardDebt;
        uint256 unpaidRewards;
    }

    /// @notice Info of each MP poolInfo.
    /// `accTokenPerShare` Amount of YOUR_TOKEN each LP token is worth.
    /// `lastRewardTimestamp` The last timestamp YOUR_TOKEN was rewarded to the poolInfo.
    struct PoolInfo {
        uint256 accTokenPerShare;
        uint256 lastRewardTimestamp;
    }

    /// @notice Info of the poolInfo.
    PoolInfo public poolInfo;
    /// @notice Info of each user that stakes LP tokens.
    mapping(address => UserInfo) public userInfo;

    uint256 public tokenPerSec;
    uint256 private constant ACC_TOKEN_PRECISION = 1e12;

    event OnReward(address indexed user, uint256 amount);
    event RewardRateUpdated(uint256 oldRate, uint256 newRate);

    modifier onlyMP() {
        require(msg.sender == address(MP), 'onlyMP: only MasterSnowflake can call this function');
        _;
    }

    constructor(
        IERC20Metadata _rewardToken,
        IERC20 _lpToken,
        uint256 _tokenPerSec,
        IMasterSnowflake _MP,
        bool _isNative
    ) {
        require(Address.isContract(address(_rewardToken)), 'constructor: reward token must be a valid contract');
        require(Address.isContract(address(_lpToken)), 'constructor: LP token must be a valid contract');
        require(Address.isContract(address(_MP)), 'constructor: MasterSnowflake must be a valid contract');

        rewardToken = _rewardToken;
        lpToken = _lpToken;
        tokenPerSec = _tokenPerSec;
        MP = _MP;
        isNative = _isNative;
        poolInfo = PoolInfo({lastRewardTimestamp: block.timestamp, accTokenPerShare: 0});
    }

    /// @notice Update reward variables of the given poolInfo.
    /// @return pool Returns the pool that was updated.
    function updatePool() public returns (PoolInfo memory pool) {
        pool = poolInfo;

        if (block.timestamp > pool.lastRewardTimestamp) {
            uint256 lpSupply = lpToken.balanceOf(address(MP));

            if (lpSupply > 0) {
                uint256 timeElapsed = block.timestamp - pool.lastRewardTimestamp;
                uint256 tokenReward = timeElapsed * tokenPerSec;
                pool.accTokenPerShare = pool.accTokenPerShare + ((tokenReward * ACC_TOKEN_PRECISION) / lpSupply);
            }

            pool.lastRewardTimestamp = block.timestamp;
            poolInfo = pool;
        }
    }

    /// @notice Sets the distribution reward rate. This will also update the poolInfo.
    /// @param _tokenPerSec The number of tokens to distribute per second
    function setRewardRate(uint256 _tokenPerSec) external onlyOwner {
        updatePool();

        uint256 oldRate = tokenPerSec;
        tokenPerSec = _tokenPerSec;

        emit RewardRateUpdated(oldRate, _tokenPerSec);
    }

    /// @notice Function called by MasterSnowflake whenever staker claims SNOW harvest.
    /// @notice Allows staker to also receive a 2nd reward token.
    /// @param _user Address of user
    /// @param _lpAmount Number of LP tokens the user has
    function onSnowReward(address _user, uint256 _lpAmount) external override onlyMP nonReentrant returns (uint256) {
        updatePool();
        PoolInfo memory pool = poolInfo;
        UserInfo storage user = userInfo[_user];
        uint256 pending;
        uint256 totalSent;
        if (user.amount > 0) {
            pending =
                ((user.amount * (pool.accTokenPerShare)) / ACC_TOKEN_PRECISION) -
                (user.rewardDebt) +
                (user.unpaidRewards);

            if (isNative) {
                uint256 tokenBalance = address(this).balance;
                if (pending > tokenBalance) {
                    (bool success, ) = _user.call{value: tokenBalance}('');
                    totalSent = tokenBalance;
                    require(success, 'Transfer failed');
                    user.unpaidRewards = pending - tokenBalance;
                } else {
                    (bool success, ) = _user.call{value: pending}('');
                    totalSent = pending;
                    require(success, 'Transfer failed');
                    user.unpaidRewards = 0;
                }
            } else {
                uint256 tokenBalance = rewardToken.balanceOf(address(this));
                if (pending > tokenBalance) {
                    rewardToken.safeTransfer(_user, tokenBalance);
                    totalSent = tokenBalance;
                    user.unpaidRewards = pending - tokenBalance;
                } else {
                    rewardToken.safeTransfer(_user, pending);
                    totalSent = pending;
                    user.unpaidRewards = 0;
                }
            }
        }

        user.amount = _lpAmount;
        user.rewardDebt = (user.amount * (pool.accTokenPerShare)) / ACC_TOKEN_PRECISION;
        emit OnReward(_user, pending - user.unpaidRewards);
        return totalSent;
    }

    /// @notice View function to see pending tokens
    /// @param _user Address of user.
    /// @return pending reward for a given user.
    function pendingTokens(address _user) external view override returns (uint256 pending) {
        PoolInfo memory pool = poolInfo;
        UserInfo storage user = userInfo[_user];

        uint256 accTokenPerShare = pool.accTokenPerShare;
        uint256 lpSupply = lpToken.balanceOf(address(MP));

        if (block.timestamp > pool.lastRewardTimestamp && lpSupply != 0) {
            uint256 timeElapsed = block.timestamp - (pool.lastRewardTimestamp);
            uint256 tokenReward = timeElapsed * (tokenPerSec);
            accTokenPerShare = accTokenPerShare + ((tokenReward * (ACC_TOKEN_PRECISION)) / lpSupply);
        }

        pending = ((user.amount * (accTokenPerShare)) / ACC_TOKEN_PRECISION) - (user.rewardDebt) + (user.unpaidRewards);
    }

    /// @notice In case rewarder is stopped before emissions finished, this function allows
    /// withdrawal of remaining tokens.
    function emergencyWithdraw() external onlyOwner {
        if (isNative) {
            (bool success, ) = msg.sender.call{value: address(this).balance}('');
            require(success, 'Transfer failed');
        } else {
            rewardToken.safeTransfer(address(msg.sender), rewardToken.balanceOf(address(this)));
        }
    }

    /// @notice View function to see balance of reward token.
    function balance() external view returns (uint256) {
        if (isNative) {
            return address(this).balance;
        } else {
            return rewardToken.balanceOf(address(this));
        }
    }

    /// @notice payable function needed to receive AVAX
    receive() external payable {}
}
