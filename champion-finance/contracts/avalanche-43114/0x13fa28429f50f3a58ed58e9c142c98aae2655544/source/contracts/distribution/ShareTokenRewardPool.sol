// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "../utils/ContractGuard.sol";
import "../interfaces/IMainToken.sol";
import "../lib/SafeMath.sol";
// upgradeable
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

// Note that this pool has no minter key of ShareToken (rewards).
// Instead, the governance will call ShareToken distributeReward method and send reward to this pool at the beginning.
contract ShareTokenRewardPool is ContractGuard, Initializable {
    using SafeMath for uint256;
    using SafeERC20Upgradeable for IERC20Upgradeable;

    // governance
    address public operator;

    // Info of each user.
    struct UserInfo {
        uint256 amount; // How many LP tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
    }

    struct DevFundInfo {
        uint256 lastRewardTime;
    }

    // Info of each pool.
    struct PoolInfo {
        IERC20Upgradeable token; // Address of LP token contract.
        uint256 allocPoint; // How many allocation points assigned to this pool. ShareToken to distribute per block.
        uint256 lastRewardTime; // Last time that ShareToken distribution occurs.
        uint256 accShareTokenPerShare; // Accumulated ShareToken per share, times 1e18. See below.
        bool isStarted; // if lastRewardTime has passed
    }

    IERC20Upgradeable public shareToken;
    address public mainToken;

    // Info of each pool.
    PoolInfo[] public poolInfo;

    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    // Total allocation points. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPoint;

    // The time when ShareToken mining starts.
    uint256 public poolStartTime;

    // The time when ShareToken mining ends.
    uint256 public poolEndTime;

    uint256 public constant shareTokenPerSecond = 0.017520 ether; // 552500 tokens / (365 days * 24h * 60min * 60s)
    uint256 public constant runningTime = 365 days; // 365 days

    uint256 public constant shareTokenPerSecondForDaoFund = 0.001546 ether; // 48750 tokens / (365 days * 24h * 60min * 60s)
    uint256 lastDaoFundRewardTime;
    uint256 public constant shareTokenPerSecondForDevFund = 0.001546 ether;  // 48750 tokens / (365 days * 24h * 60min * 60s)
    uint256 lastDevFundRewardTime;

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event RewardPaid(address indexed user, uint256 amount);

    function __Upgradeable_Init(
        address _token,
        address _mainToken,
        uint256 _poolStartTime
    ) external initializer {
        require(block.timestamp < _poolStartTime, "late");
        require(_token != address(0), "!_token");
        require(_mainToken != address(0), "!_mainToken");
        shareToken = IERC20Upgradeable(_token);
        mainToken = _mainToken;
        totalAllocPoint = 0;
        poolStartTime = _poolStartTime;
        lastDaoFundRewardTime = poolStartTime;
        lastDevFundRewardTime = poolStartTime;
        poolEndTime = poolStartTime + runningTime;
        operator = msg.sender;
    }

    modifier onlyOperator() {
        require(operator == msg.sender, "ShareTokenRewardPool: caller is not the operator");
        _;
    }

    function checkPoolDuplicate(IERC20Upgradeable _token) internal view {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            require(poolInfo[pid].token != _token, "ShareTokenRewardPool: existing pool?");
        }
    }

    // Add a new lp to the pool. Can only be called by the owner.
    function add(
        uint256 _allocPoint,
        address _token,
        uint256 _lastRewardTime
    ) public onlyOperator {
        require(_token != address(0), "!_token");
        checkPoolDuplicate(IERC20Upgradeable(_token));
        massUpdatePools();
        if (block.timestamp < poolStartTime) {
            // chef is sleeping
            if (_lastRewardTime == 0) {
                _lastRewardTime = poolStartTime;
            } else {
                if (_lastRewardTime < poolStartTime) {
                    _lastRewardTime = poolStartTime;
                }
            }
        } else {
            // chef is cooking
            if (_lastRewardTime == 0 || _lastRewardTime < block.timestamp) {
                _lastRewardTime = block.timestamp;
            }
        }
        bool _isStarted =
        (_lastRewardTime <= poolStartTime) ||
        (_lastRewardTime <= block.timestamp);
        poolInfo.push(PoolInfo({
            token : IERC20Upgradeable(_token),
            allocPoint : _allocPoint,
            lastRewardTime : _lastRewardTime,
            accShareTokenPerShare : 0,
            isStarted : _isStarted
            }));
        if (_isStarted) {
            totalAllocPoint = totalAllocPoint.add(_allocPoint);
        }
    }

    // Update the given pool's ShareToken allocation point. Can only be called by the owner.
    function set(uint256 _pid, uint256 _allocPoint) external onlyOperator {
        massUpdatePools();
        PoolInfo storage pool = poolInfo[_pid];
        if (pool.isStarted) {
            totalAllocPoint = totalAllocPoint.sub(pool.allocPoint).add(
                _allocPoint
            );
        }
        pool.allocPoint = _allocPoint;
    }

    // Return accumulate rewards over the given _from to _to block.
    function getGeneratedReward(uint256 _fromTime, uint256 _toTime) public view returns (uint256) {
        if (_fromTime >= _toTime) return 0;
        if (_toTime >= poolEndTime) {
            if (_fromTime >= poolEndTime) return 0;
            if (_fromTime <= poolStartTime) return poolEndTime.sub(poolStartTime).mul(shareTokenPerSecond);
            return poolEndTime.sub(_fromTime).mul(shareTokenPerSecond);
        } else {
            if (_toTime <= poolStartTime) return 0;
            if (_fromTime <= poolStartTime) return _toTime.sub(poolStartTime).mul(shareTokenPerSecond);
            return _toTime.sub(_fromTime).mul(shareTokenPerSecond);
        }
    }

    // View function to see pending Wine on frontend.
    function pendingShare(uint256 _pid, address _user) external view returns (uint256) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accShareTokenPerShare = pool.accShareTokenPerShare;
        uint256 tokenSupply = pool.token.balanceOf(address(this));
        if (block.timestamp > pool.lastRewardTime && tokenSupply != 0) {
            uint256 _generatedReward = getGeneratedReward(pool.lastRewardTime, block.timestamp);
            uint256 _shareTokenReward = _generatedReward.mul(pool.allocPoint).div(totalAllocPoint);
            accShareTokenPerShare = accShareTokenPerShare.add(_shareTokenReward.mul(1e18).div(tokenSupply));
        }

        uint256 daoFundReward = pendingDaoFund(lastDaoFundRewardTime, block.timestamp, _user);
        uint256 devFundReward = pendingDevFund(lastDevFundRewardTime, block.timestamp, _user);

        uint256 pendingUser = user.amount.mul(accShareTokenPerShare).div(1e18).sub(user.rewardDebt);
        return pendingUser.add(daoFundReward).add(devFundReward);
    }

    function pendingDaoFund(uint256 _fromTime, uint256 _toTime, address _user) internal view returns (uint256) {
        if (IMainToken(mainToken).isDaoFund(_user)) {
            if (_fromTime >= _toTime) return 0;
            if (_toTime >= poolEndTime) {
                if (_fromTime >= poolEndTime) return 0;
                if (_fromTime <= poolStartTime) return poolEndTime.sub(poolStartTime).mul(shareTokenPerSecondForDaoFund);
                return poolEndTime.sub(_fromTime).mul(shareTokenPerSecondForDaoFund);
            } else {
                if (_toTime <= poolStartTime) return 0;
                if (_fromTime <= poolStartTime) return _toTime.sub(poolStartTime).mul(shareTokenPerSecondForDaoFund);
                return _toTime.sub(_fromTime).mul(shareTokenPerSecondForDaoFund);
            }
        }

        return 0;
    }

    function pendingDevFund(uint256 _fromTime, uint256 _toTime, address _user) internal view returns (uint256) {
        if (IMainToken(mainToken).isDevFund(_user)) {
            if (_fromTime >= _toTime) return 0;
            if (_toTime >= poolEndTime) {
                if (_fromTime >= poolEndTime) return 0;
                if (_fromTime <= poolStartTime) return poolEndTime.sub(poolStartTime).mul(shareTokenPerSecondForDevFund);
                return poolEndTime.sub(_fromTime).mul(shareTokenPerSecondForDevFund);
            } else {
                if (_toTime <= poolStartTime) return 0;
                if (_fromTime <= poolStartTime) return _toTime.sub(poolStartTime).mul(shareTokenPerSecondForDevFund);
                return _toTime.sub(_fromTime).mul(shareTokenPerSecondForDevFund);
            }
        }

        return 0;
    }

    // Update reward variables for all pools. Be careful of gas spending!
    function massUpdatePools() public onlyOperator {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            updatePool(pid);
        }
    }

    // Update reward variables of the given pool to be up-to-date.
    function updatePool(uint256 _pid) internal {
        PoolInfo storage pool = poolInfo[_pid];
        if (block.timestamp <= pool.lastRewardTime) {
            return;
        }
        uint256 tokenSupply = pool.token.balanceOf(address(this));
        if (tokenSupply == 0) {
            pool.lastRewardTime = block.timestamp;
            return;
        }
        if (!pool.isStarted) {
            pool.isStarted = true;
            totalAllocPoint = totalAllocPoint.add(pool.allocPoint);
        }
        if (totalAllocPoint > 0) {
            uint256 _generatedReward = getGeneratedReward(pool.lastRewardTime, block.timestamp);
            uint256 _shareTokenReward = _generatedReward.mul(pool.allocPoint).div(totalAllocPoint);
            pool.accShareTokenPerShare = pool.accShareTokenPerShare.add(_shareTokenReward.mul(1e18).div(tokenSupply));
        }
        pool.lastRewardTime = block.timestamp;
    }

    // Deposit LP tokens.
    function deposit(uint256 _pid, uint256 _amount) external onlyOneBlock {
        address _sender = msg.sender;
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_sender];
        updatePool(_pid);
        if (user.amount > 0) {
            uint256 _pending = user.amount.mul(pool.accShareTokenPerShare).div(1e18).sub(user.rewardDebt);
            if (_pending > 0) {
                safeShareTokenTransfer(_sender, _pending);
                emit RewardPaid(_sender, _pending);
            }
        }
        if (_amount > 0) {
            pool.token.safeTransferFrom(_sender, address(this), _amount);
            user.amount = user.amount.add(_amount);
        }
        user.rewardDebt = user.amount.mul(pool.accShareTokenPerShare).div(1e18);
        emit Deposit(_sender, _pid, _amount);
    }

    // Withdraw LP tokens.
    function withdraw(uint256 _pid, uint256 _amount) external onlyOneBlock {
        address _sender = msg.sender;
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_sender];
        require(user.amount >= _amount, "withdraw: not good");
        updatePool(_pid);
        uint256 _pending = user.amount.mul(pool.accShareTokenPerShare).div(1e18).sub(user.rewardDebt);
        uint256 _daoFundReward = pendingDaoFund(lastDaoFundRewardTime, block.timestamp, _sender);
        uint256 _devFundReward = pendingDevFund(lastDevFundRewardTime, block.timestamp, _sender);
        uint256 _reward = 0;

        if (_daoFundReward > 0) {
            _reward = _reward.add(_daoFundReward);
            lastDaoFundRewardTime = block.timestamp;
        }

        if (_devFundReward > 0) {
            _reward = _reward.add(_devFundReward);
            lastDevFundRewardTime = block.timestamp;
        }

        if (_pending > 0) {
            _reward = _reward.add(_pending);
            
        }

        if (_reward > 0) {
            safeShareTokenTransfer(_sender, _reward);
            emit RewardPaid(_sender, _pending);
        }

        if (_amount > 0) {
            user.amount = user.amount.sub(_amount);
            pool.token.safeTransfer(_sender, _amount);
        }
        user.rewardDebt = user.amount.mul(pool.accShareTokenPerShare).div(1e18);
        emit Withdraw(_sender, _pid, _amount);
    }

    // Safe ShareToken transfer function, just in case if rounding error causes pool to not have enough ShareToken.
    function safeShareTokenTransfer(address _to, uint256 _amount) internal {
        uint256 _shareTokenBalance = shareToken.balanceOf(address(this));
        if (_shareTokenBalance > 0) {
            if (_amount > _shareTokenBalance) {
                shareToken.safeTransfer(_to, _shareTokenBalance);
            } else {
                shareToken.safeTransfer(_to, _amount);
            }
        }
    }
}
